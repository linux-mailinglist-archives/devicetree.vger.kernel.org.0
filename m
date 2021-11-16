Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2875B4531BD
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 13:05:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235886AbhKPMIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 07:08:00 -0500
Received: from foss.arm.com ([217.140.110.172]:44450 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235968AbhKPMFz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 07:05:55 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EDE11FB;
        Tue, 16 Nov 2021 04:02:57 -0800 (PST)
Received: from [10.57.82.45] (unknown [10.57.82.45])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A58CC3F5A1;
        Tue, 16 Nov 2021 04:02:55 -0800 (PST)
Message-ID: <3b5cb536-5a11-5096-4369-cec3d369ec52@arm.com>
Date:   Tue, 16 Nov 2021 12:02:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 0/2] perf/smmuv3: Support devicetree
Content-Language: en-GB
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        joro@8bytes.org, mark.rutland@arm.com, jkchen@linux.alibaba.com,
        leo.yan@linaro.org, uchida.jun@socionext.com
References: <20211116113536.69758-1-jean-philippe@linaro.org>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211116113536.69758-1-jean-philippe@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-11-16 11:35, Jean-Philippe Brucker wrote:
> Add devicetree binding for the SMMUv3 PMU, called Performance Monitoring
> Counter Group (PMCG) in the spec. Each SMMUv3 implementation can have
> multiple independent PMCGs, for example one for the Translation Control
> Unit (TCU) and one per Translation Buffer Unit (TBU).
> 
> I previously sent the binding as reply to Jay Chen's thread implementing
> device tree support [1]. This posting addresses the comments from that
> thread.

Ha, I'd also resurrected this and was planning to post it at some point 
this week[0] - you should have said :)

> Patch 1 adds two compatible strings. "arm,smmu-v3-pmcg" is common to all
> PMCGs. "hisilicon,smmu-v3-pmcg-hip08" allows to support the same quirk
> as IORT for that implementation (see patch 2). We'll probably want to
> also introduce compatible strings for each implementation that has
> additional perf events. For example the MMU-600 implementation has
> different events for TCU and TBU PMCGs [2], but both components have the
> same device IDs. So the driver could differentiate them if they had two
> distinct compatible strings such as "arm,mmu-600-pmcg-tbu" and
> "arm,mmu-600-pmcg-tcu".

Actually it only needs a general MMU-600 compatible, since once you know 
it's an Arm Ltd. implementation, you can assume the pattern for the 
IMP_DEF ID registers to figure out the rest.

Robin.

[0] https://gitlab.arm.com/linux-arm/linux-rm/-/commits/smmu-pmcg

> The series doesn't deal with this because for testing I use a software
> model which only implements architected events. I do not include DTS
> change for that platform because enabling PMCGs requires an additional
> model option. See my branch smmu/pmu-dt [3] for details.
> 
> [1] https://lore.kernel.org/all/20200707150114.GC159413@myrica/
> [2] https://developer.arm.com/documentation/100310/0202/Functional-description/Operation/Performance-Monitoring-Unit
> [3] https://jpbrucker.net/git/linux/log/?h=smmu/pmu-dt
> 
> Jean-Philippe Brucker (2):
>    dt-bindings: Add Arm SMMUv3 PMCG binding
>    perf/smmuv3: Add devicetree support
> 
>   .../bindings/iommu/arm,smmu-v3-pmcg.yaml      | 67 +++++++++++++++++++
>   drivers/perf/arm_smmuv3_pmu.c                 | 25 ++++++-
>   2 files changed, 90 insertions(+), 2 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/iommu/arm,smmu-v3-pmcg.yaml
> 
