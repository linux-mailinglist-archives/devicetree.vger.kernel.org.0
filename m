Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 311F946BD25
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 15:00:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232984AbhLGOEZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 09:04:25 -0500
Received: from frasgout.his.huawei.com ([185.176.79.56]:4226 "EHLO
        frasgout.his.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237475AbhLGOEX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 09:04:23 -0500
Received: from fraeml741-chm.china.huawei.com (unknown [172.18.147.201])
        by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4J7hkT3JQ3z67ySF;
        Tue,  7 Dec 2021 21:59:45 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml741-chm.china.huawei.com (10.206.15.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 15:00:52 +0100
Received: from [10.47.82.161] (10.47.82.161) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Tue, 7 Dec
 2021 14:00:51 +0000
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
To:     Leo Yan <leo.yan@linaro.org>, Robin Murphy <robin.murphy@arm.com>
CC:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
        <iommu@lists.linux-foundation.org>, <uchida.jun@socionext.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <robh+dt@kernel.org>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
 <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
 <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
 <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
 <20211207132007.GB255238@leoy-ThinkPad-X240s>
 <675bfd78-69ac-608f-1303-e86b90a83f72@arm.com>
 <20211207135904.GH42658@leoy-ThinkPad-X240s>
From:   John Garry <john.garry@huawei.com>
Message-ID: <2ece685e-84fb-cec2-522e-70680bcf9370@huawei.com>
Date:   Tue, 7 Dec 2021 14:00:35 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20211207135904.GH42658@leoy-ThinkPad-X240s>
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

On 07/12/2021 13:59, Leo Yan wrote:
>> Whether other implementers might retroactively define "equivalent" IIDR
>> values for their existing implementations in a way we could potentially
>> quirk in the driver is an orthogonal question.
> Agreed, it makes sense that supports the standard IP modules in
> the mainline kernel at this stage.
> 
> Thanks for explanation.

Leo, if you really want this to work on D06, I could also hack some 
out-of-tree perf tool patches for you. I'm not sure if you're interested 
in that. Let me know.

Thanks,
John
