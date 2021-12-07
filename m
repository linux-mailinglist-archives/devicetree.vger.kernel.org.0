Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED5546B6D3
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 10:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233397AbhLGJR4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 04:17:56 -0500
Received: from frasgout.his.huawei.com ([185.176.79.56]:4219 "EHLO
        frasgout.his.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233338AbhLGJRz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 04:17:55 -0500
Received: from fraeml702-chm.china.huawei.com (unknown [172.18.147.207])
        by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4J7ZMC43tRz67nRJ;
        Tue,  7 Dec 2021 17:12:39 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml702-chm.china.huawei.com (10.206.15.51) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.20; Tue, 7 Dec 2021 10:14:22 +0100
Received: from [10.47.82.161] (10.47.82.161) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Tue, 7 Dec
 2021 09:14:21 +0000
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        <robh+dt@kernel.org>
CC:     <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
        <robin.murphy@arm.com>, <iommu@lists.linux-foundation.org>,
        <uchida.jun@socionext.com>, <leo.yan@linaro.org>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
From:   John Garry <john.garry@huawei.com>
Message-ID: <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
Date:   Tue, 7 Dec 2021 09:14:06 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20211117144844.241072-4-jean-philippe@linaro.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.47.82.161]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/11/2021 14:48, Jean-Philippe Brucker wrote:
> From: Robin Murphy<robin.murphy@arm.com>
> 
> The SMMU_PMCG_IIDR register was not present in older revisions of the
> Arm SMMUv3 spec. On Arm Ltd. implementations, the IIDR value consists of
> fields from several PIDR registers, allowing us to present a
> standardized identifier to userspace.
> 
So is there some userspace part to go with this now?

Thanks,
John
