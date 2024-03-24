// TODO nf-core: If in doubt look at other nf-core/subworkflows to see how we are doing things! :)
//               https://github.com/nf-core/modules/tree/master/subworkflows
//               You can also ask for help via your pull request or on the #subworkflows channel on the nf-core Slack workspace:
//               https://nf-co.re/join
// TODO nf-core: A subworkflow SHOULD import at least two modules


include { SAMTOOLS_INDEX     } from '../../../modules/nf-core/samtools/index/main'
include { SONG_SCORE_DOWNLOAD     } from '../../icgc-argo-workflows/song_score_download/main.nf'

workflow TESTAMODULESFROMVARIOUS {

    take:
    // TODO nf-core: edit input (take) channels
    ch_bam // channel: [ val(meta), [ bam ] ]

    main:

    ch_versions = Channel.empty()

    // TODO nf-core: substitute modules here for the modules of your subworkflow

    Channel
    .of(1, 2, 3, 40, 50)
    .subscribe{println "${it}"}


    emit:
    // TODO nf-core: edit emitted channels
    //bam      = SAMTOOLS_SORT.out.bam           // channel: [ val(meta), [ bam ] ]
    //bai      = SAMTOOLS_INDEX.out.bai          // channel: [ val(meta), [ bai ] ]
    //csi      = SAMTOOLS_INDEX.out.csi          // channel: [ val(meta), [ csi ] ]

    versions = ch_versions                     // channel: [ versions.yml ]
}

