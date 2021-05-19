Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0539B3891C8
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241679AbhESOrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:47:53 -0400
Received: from szxga05-in.huawei.com ([45.249.212.191]:4538 "EHLO
        szxga05-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239741AbhESOrw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:47:52 -0400
Received: from dggems706-chm.china.huawei.com (unknown [172.30.72.58])
        by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FlbGT0zSBzsRgS;
        Wed, 19 May 2021 22:43:45 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems706-chm.china.huawei.com (10.3.19.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:46:31 +0800
Received: from [127.0.0.1] (10.174.177.72) by dggpemm500006.china.huawei.com
 (7.185.36.236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 19 May
 2021 22:46:30 +0800
Subject: Re: [PATCH 3/4] arm64: dts: realtek: rtd16xx: normalize the node name
 of the UART devices
To:     =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
CC:     Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        "Jisheng Zhang" <Jisheng.Zhang@synaptics.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-realtek-soc <linux-realtek-soc@lists.infradead.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
References: <20210519141914.8044-1-thunder.leizhen@huawei.com>
 <20210519141914.8044-4-thunder.leizhen@huawei.com>
 <8e79d8d9-c2c7-32f3-e2be-e5d288cebf0a@suse.de>
From:   "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <cf6b7e5f-eab6-1600-c603-5454ebbebd5d@huawei.com>
Date:   Wed, 19 May 2021 22:46:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8e79d8d9-c2c7-32f3-e2be-e5d288cebf0a@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2021/5/19 22:31, Andreas Färber wrote:
> Hi,
> 
> On 19.05.21 16:19, Zhen Lei wrote:
>> Change the node name of the UART devices to match
>> "^serial(@[0-9a-f,]+)*$".
>>
>> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
>> ---
>>  arch/arm64/boot/dts/realtek/rtd16xx.dtsi | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
>> index afba5f04c8ec..bf4d9e917925 100644
>> --- a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
>> +++ b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
>> @@ -195,7 +195,7 @@
>>  };
>>  
>>  &iso {
>> -	uart0: serial0@800 {
>> +	uart0: serial@800 {
> [snip]
> 
> Ouch, shame on me for not catching this in review...
> 
> Reviewed-by: Andreas Färber <afaerber@suse.de>
> 
> Are you expecting this to go through the four maintainer trees or
> centrally somehow?

It would be nice for each maintainer to add its own patch to its own tree.
Each patch is independent, I put these four patches together just for the
convenience of describing 0000-cover-letter

> 
> Thanks,
> Andreas
> 

