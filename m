Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 017C625FB70
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 15:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729469AbgIGN2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 09:28:45 -0400
Received: from foss.arm.com ([217.140.110.172]:35736 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729506AbgIGN2S (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 09:28:18 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 088FE1045;
        Mon,  7 Sep 2020 06:27:36 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E7FD3F66E;
        Mon,  7 Sep 2020 06:27:34 -0700 (PDT)
Subject: Re: [PATCH 2/2] perf: Add Arm CMN-600 PMU driver
To:     John Garry <john.garry@huawei.com>, will@kernel.org,
        mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, tuanphan@os.amperecomputing.com,
        tsahee@amazon.com, harb@amperecomputing.com, james.yang@arm.com,
        alisaidi@amazon.com
References: <cover.1596631695.git.robin.murphy@arm.com>
 <7f184a18890ef20632eae98b6c105c36f4eb0cd3.1596631695.git.robin.murphy@arm.com>
 <512b3de2-9ece-baaf-ef93-246a8af9464f@huawei.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <c8803e30-7b67-bdb1-30ac-fe1137e4bd93@arm.com>
Date:   Mon, 7 Sep 2020 14:27:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <512b3de2-9ece-baaf-ef93-246a8af9464f@huawei.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi John,

On 2020-09-07 12:23, John Garry wrote:
> On 05/08/2020 13:56, Robin Murphy wrote:
>> Initial driver for PMU event counting on the Arm CMN-600 interconnect.
>> CMN sports an obnoxiously complex distributed PMU system as part of
>> its debug and trace features, which can do all manner of things like
>> sampling, cross-triggering and generating CoreSight trace. This driver
>> covers the PMU functionality, plus the relevant aspects of watchpoints
>> for simply counting matching flits.
>>
> 
> Hi Robin,
> 
> I had a quick look at the TRM (nearly 1000 pages, wow) for this IP, and 
> could not see anything obvious to know the implementation id (similar 
> problem to SMMU PMCG today). Do you know if there is anything 
> appropiate? Is por_hnf_ppu_iidr any use here?

Note that PPU is a distinct thing with its own architecture (apparently 
https://developer.arm.com/documentation/den0051/latest/ if you're 
interested), so that particular IIDR is merely describing the 
implementation of the PPU interface, which AFAICS is not necessarily 
unique to CMN-600. In terms of the PMU and CMN overall there is no 
architecture to speak of, the implementation just is what it is :)

I'd expect that some future interconnect IPs are likely to be similar 
enough to share most of this driver, but those should get their own 
top-level compatibles since they will not be CMN-600. Thus I don't 
believe that identification is going to be too much of a concern.

> Just a couple of more questions for now...
> 
> [snip]
> 
>> +
>> +static struct attribute *arm_cmn_event_attrs[] = {
>> +    CMN_EVENT_DTC(cycles),
>> +
>> +    /*
>> +     * DVM node events conflict with HN-I events in the equivalent PMU
>> +     * slot, but our lazy short-cut of using the DTM counter index for
>> +     * the PMU index as well happens to avoid that by construction.
>> +     */
>> +    CMN_EVENT_DVM(rxreq_dvmop,    0x01),
>> +    CMN_EVENT_DVM(rxreq_dvmsync,    0x02),
>> +    CMN_EVENT_DVM(rxreq_dvmop_vmid_filtered, 0x03),
>> +    CMN_EVENT_DVM(rxreq_retried,    0x04),
>> +    _CMN_EVENT_DVM(rxreq_trk_occupancy_all, 0x05, 0),
>> +    _CMN_EVENT_DVM(rxreq_trk_occupancy_dvmop, 0x05, 1),
>> +    _CMN_EVENT_DVM(rxreq_trk_occupancy_dvmsync, 0x05, 2),
>> +
>> +    CMN_EVENT_HNF(cache_miss,    0x01),
>> +    CMN_EVENT_HNF(slc_sf_cache_access, 0x02),
>> +    CMN_EVENT_HNF(cache_fill,    0x03),
>> +    CMN_EVENT_HNF(pocq_retry,    0x04),
>> +    CMN_EVENT_HNF(pocq_reqs_recvd,    0x05),
>> +    CMN_EVENT_HNF(sf_hit,        0x06),
>> +    CMN_EVENT_HNF(sf_evictions,    0x07),
>> +    CMN_EVENT_HNF(dir_snoops_sent,    0x08),
>> +    CMN_EVENT_HNF(brd_snoops_sent,    0x09),
>> +    CMN_EVENT_HNF(slc_eviction,    0x0a),
>> +    CMN_EVENT_HNF(slc_fill_invalid_way, 0x0b),
>> +    CMN_EVENT_HNF(mc_retries,    0x0c),
>> +    CMN_EVENT_HNF(mc_reqs,        0x0d),
>> +    CMN_EVENT_HNF(qos_hh_retry,    0x0e),
>> +    _CMN_EVENT_HNF(qos_pocq_occupancy_all, 0x0f, 0),
>> +    _CMN_EVENT_HNF(qos_pocq_occupancy_read, 0x0f, 1),
>> +    _CMN_EVENT_HNF(qos_pocq_occupancy_write, 0x0f, 2),
>> +    _CMN_EVENT_HNF(qos_pocq_occupancy_atomic, 0x0f, 3),
>> +    _CMN_EVENT_HNF(qos_pocq_occupancy_stash, 0x0f, 4),
>> +    CMN_EVENT_HNF(pocq_addrhaz,    0x10),
>> +    CMN_EVENT_HNF(pocq_atomic_addrhaz, 0x11),
>> +    CMN_EVENT_HNF(ld_st_swp_adq_full, 0x12),
>> +    CMN_EVENT_HNF(cmp_adq_full,    0x13),
>> +    CMN_EVENT_HNF(txdat_stall,    0x14),
>> +    CMN_EVENT_HNF(txrsp_stall,    0x15),
>> +    CMN_EVENT_HNF(seq_full,        0x16),
>> +    CMN_EVENT_HNF(seq_hit,        0x17),
>> +    CMN_EVENT_HNF(snp_sent,        0x18),
>> +    CMN_EVENT_HNF(sfbi_dir_snp_sent, 0x19),
>> +    CMN_EVENT_HNF(sfbi_brd_snp_sent, 0x1a),
>> +    CMN_EVENT_HNF(snp_sent_untrk,    0x1b),
>> +    CMN_EVENT_HNF(intv_dirty,    0x1c),
>> +    CMN_EVENT_HNF(stash_snp_sent,    0x1d),
>> +    CMN_EVENT_HNF(stash_data_pull,    0x1e),
>> +    CMN_EVENT_HNF(snp_fwded,    0x1f),
>> +
>> +    CMN_EVENT_HNI(rrt_rd_occ_cnt_ovfl, 0x20),
>> +    CMN_EVENT_HNI(rrt_wr_occ_cnt_ovfl, 0x21),
>> +    CMN_EVENT_HNI(rdt_rd_occ_cnt_ovfl, 0x22),
>> +    CMN_EVENT_HNI(rdt_wr_occ_cnt_ovfl, 0x23),
>> +    CMN_EVENT_HNI(wdb_occ_cnt_ovfl,    0x24),
>> +    CMN_EVENT_HNI(rrt_rd_alloc,    0x25),
>> +    CMN_EVENT_HNI(rrt_wr_alloc,    0x26),
>> +    CMN_EVENT_HNI(rdt_rd_alloc,    0x27),
>> +    CMN_EVENT_HNI(rdt_wr_alloc,    0x28),
>> +    CMN_EVENT_HNI(wdb_alloc,    0x29),
>> +    CMN_EVENT_HNI(txrsp_retryack,    0x2a),
>> +    CMN_EVENT_HNI(arvalid_no_arready, 0x2b),
>> +    CMN_EVENT_HNI(arready_no_arvalid, 0x2c),
>> +    CMN_EVENT_HNI(awvalid_no_awready, 0x2d),
>> +    CMN_EVENT_HNI(awready_no_awvalid, 0x2e),
>> +    CMN_EVENT_HNI(wvalid_no_wready,    0x2f),
>> +    CMN_EVENT_HNI(txdat_stall,    0x30),
>> +    CMN_EVENT_HNI(nonpcie_serialization, 0x31),
>> +    CMN_EVENT_HNI(pcie_serialization, 0x32),
>> +
>> +    CMN_EVENT_XP(txflit_valid,    0x01),
>> +    CMN_EVENT_XP(txflit_stall,    0x02),
>> +    CMN_EVENT_XP(partial_dat_flit,    0x03),
>> +    /* We treat watchpoints as a special made-up class of XP events */
>> +    CMN_EVENT_ATTR(watchpoint_up, CMN_TYPE_WP, 0, 0),
>> +    CMN_EVENT_ATTR(watchpoint_down, CMN_TYPE_WP, 2, 0),
>> +
>> +    CMN_EVENT_SBSX(rd_req,        0x01),
>> +    CMN_EVENT_SBSX(wr_req,        0x02),
>> +    CMN_EVENT_SBSX(cmo_req,        0x03),
>> +    CMN_EVENT_SBSX(txrsp_retryack,    0x04),
>> +    CMN_EVENT_SBSX(txdat_flitv,    0x05),
>> +    CMN_EVENT_SBSX(txrsp_flitv,    0x06),
>> +    CMN_EVENT_SBSX(rd_req_trkr_occ_cnt_ovfl, 0x11),
>> +    CMN_EVENT_SBSX(wr_req_trkr_occ_cnt_ovfl, 0x12),
>> +    CMN_EVENT_SBSX(cmo_req_trkr_occ_cnt_ovfl, 0x13),
>> +    CMN_EVENT_SBSX(wdb_occ_cnt_ovfl, 0x14),
>> +    CMN_EVENT_SBSX(rd_axi_trkr_occ_cnt_ovfl, 0x15),
>> +    CMN_EVENT_SBSX(cmo_axi_trkr_occ_cnt_ovfl, 0x16),
>> +    CMN_EVENT_SBSX(arvalid_no_arready, 0x21),
>> +    CMN_EVENT_SBSX(awvalid_no_awready, 0x22),
>> +    CMN_EVENT_SBSX(wvalid_no_wready, 0x23),
>> +    CMN_EVENT_SBSX(txdat_stall,    0x24),
>> +    CMN_EVENT_SBSX(txrsp_stall,    0x25),
>> +
>> +    CMN_EVENT_RNID(s0_rdata_beats,    0x01),
>> +    CMN_EVENT_RNID(s1_rdata_beats,    0x02),
>> +    CMN_EVENT_RNID(s2_rdata_beats,    0x03),
>> +    CMN_EVENT_RNID(rxdat_flits,    0x04),
>> +    CMN_EVENT_RNID(txdat_flits,    0x05),
>> +    CMN_EVENT_RNID(txreq_flits_total, 0x06),
>> +    CMN_EVENT_RNID(txreq_flits_retried, 0x07),
>> +    CMN_EVENT_RNID(rrt_occ_ovfl,    0x08),
>> +    CMN_EVENT_RNID(wrt_occ_ovfl,    0x09),
>> +    CMN_EVENT_RNID(txreq_flits_replayed, 0x0a),
>> +    CMN_EVENT_RNID(wrcancel_sent,    0x0b),
>> +    CMN_EVENT_RNID(s0_wdata_beats,    0x0c),
>> +    CMN_EVENT_RNID(s1_wdata_beats,    0x0d),
>> +    CMN_EVENT_RNID(s2_wdata_beats,    0x0e),
>> +    CMN_EVENT_RNID(rrt_alloc,    0x0f),
>> +    CMN_EVENT_RNID(wrt_alloc,    0x10),
>> +    CMN_EVENT_RNID(rdb_unord,    0x11),
>> +    CMN_EVENT_RNID(rdb_replay,    0x12),
>> +    CMN_EVENT_RNID(rdb_hybrid,    0x13),
>> +    CMN_EVENT_RNID(rdb_ord,        0x14),
>> +
>> +    NULL
>> +};
> 
> Just wondering how does "perf list" look when you have multiple 
> instances of the device in the system?

Probably a giant mess, since I assume every (relevant) event should be 
listed for each instance, much like CPU events on big.LITTLE systems, 
and uncore events on many others (certainly most of the xgene_pmu events 
on my eMAG workstation are repeated up to 8 times).

> [snip]
> 
>> +static int arm_cmn_probe(struct platform_device *pdev)
>> +{
>> +    struct arm_cmn *cmn;
>> +    const char *name;
>> +    static atomic_t id;
>> +    int err, rootnode;
>> +
>> +    cmn = devm_kzalloc(&pdev->dev, sizeof(*cmn), GFP_KERNEL);
>> +    if (!cmn)
>> +        return -ENOMEM;
>> +
>> +    cmn->dev = &pdev->dev;
>> +    platform_set_drvdata(pdev, cmn);
>> +
>> +    if (has_acpi_companion(cmn->dev))
>> +        rootnode = arm_cmn_acpi_probe(pdev, cmn);
>> +    else
>> +        rootnode = arm_cmn_of_probe(pdev, cmn);
>> +    if (rootnode < 0)
>> +        return rootnode;
>> +
>> +    err = arm_cmn_discover(cmn, rootnode);
>> +    if (err)
>> +        return err;
>> +
>> +    err = arm_cmn_init_dtcs(cmn);
>> +    if (err)
>> +        return err;
>> +
>> +    err = arm_cmn_init_irqs(cmn);
>> +    if (err)
>> +        return err;
>> +
>> +    cmn->cpu = raw_smp_processor_id();
>> +    cmn->pmu = (struct pmu) {
>> +        .module = THIS_MODULE,
>> +        .attr_groups = arm_cmn_attr_groups,
>> +        .capabilities = PERF_PMU_CAP_NO_EXCLUDE,
>> +        .task_ctx_nr = perf_invalid_context,
>> +        .pmu_enable = arm_cmn_pmu_enable,
>> +        .pmu_disable = arm_cmn_pmu_disable,
>> +        .event_init = arm_cmn_event_init,
>> +        .add = arm_cmn_event_add,
>> +        .del = arm_cmn_event_del,
>> +        .start = arm_cmn_event_start,
>> +        .stop = arm_cmn_event_stop,
>> +        .read = arm_cmn_event_read,
>> +        .start_txn = arm_cmn_start_txn,
>> +        .commit_txn = arm_cmn_commit_txn,
>> +        .cancel_txn = arm_cmn_end_txn,
>> +    };
>> +
>> +    if (atomic_fetch_inc(&id) == 0) {
>> +        name = "arm_cmn";
>> +    } else {
>> +        name = devm_kasprintf(cmn->dev, GFP_KERNEL, "arm_cmn_%d", 
>> atomic_read(&id));
> 
> How is userspace supposed to know which device is which when we have 
> multiple instances? I mean, doesn't this depend on arbitary probe ordering?

Right, I had it in my head that there should be enough information in 
sysfs to link the PMU device back to its parent platform device, but 
apparently that isn't the case :(

Furthermore, you've now got me thinking I might want to rejig the naming 
scheme anyway - if I did have two instances named "foo" and "foo_1", is 
perf tool going to interpret "-e foo/event/" as specifying a common 
prefix and create the event on both PMUs even if I only wanted it on the 
first one?

Robin.
