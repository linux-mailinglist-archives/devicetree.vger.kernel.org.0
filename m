Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18E156D410B
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 11:46:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232296AbjDCJq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 05:46:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232241AbjDCJqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 05:46:16 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA8B0170A
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 02:45:39 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3336pBnM028235;
        Mon, 3 Apr 2023 11:45:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=e4XR1GM3WaqqSzL3e4Hqmkz/4rQgM7STgd78EwWbfmc=;
 b=s9mrgNMBH3FtPn07pXDwKq3eC2O2G5CiDgnvmGnXUeApqn7zSNBITbaA7RmpOuo1gngz
 yYpkI4Km+RzdEfgeZ7tg/Nkw0OIYaBnauJQ6fJd+KFC/xZWbbwNiCl/ORPPQjKywM0Pt
 DMv6rupJvvlKegphVTzTXj2pum9Nqu6V98mmiMU+0fKAfarcFOAr2UtCB33ALd282ohK
 oLQUkWw7Nu0m5bQB2B+r3rhhTRLhypW0mhnFXNSoqWucFctkP9mFgQaVhMOF32ODHMrW
 FLKiqCVKKmG2lgub0sbsKLNYWZxXxmLrV19Rqk6RuhYTWZNF2v1LDzye2n7eMCthiuvK nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ppa1m9pqt-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 03 Apr 2023 11:45:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 42C4010002A;
        Mon,  3 Apr 2023 11:45:23 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3B60E215134;
        Mon,  3 Apr 2023 11:45:23 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Mon, 3 Apr
 2023 11:45:22 +0200
Message-ID: <9ac37755-1800-3a18-c2bb-43fb06449ceb@foss.st.com>
Date:   Mon, 3 Apr 2023 11:45:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [Linux-stm32] [PATCH v7 10/10] ARM: dts: stm32: add
 STM32MP1-based Phytec board
Content-Language: en-US
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230330050408.3806093-1-s.trumtrar@pengutronix.de>
 <20230330050408.3806093-11-s.trumtrar@pengutronix.de>
 <31b1300b-7dd9-9bdf-be01-a79b1ac6e8cd@foss.st.com>
 <a8cedf08-7b7d-712c-1c35-4da8d0542e72@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <a8cedf08-7b7d-712c-1c35-4da8d0542e72@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-03_06,2023-04-03_01,2023-02-09_01
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Ahmad

On 4/3/23 11:28, Ahmad Fatoum wrote:
> Hello Alexandre,
> 
> On 03.04.23 11:15, Alexandre TORGUE wrote:
>> On 3/30/23 07:04, Steffen Trumtrar wrote:
>>> Add the Phytec STM32MP1-3 Dev board. The devboard uses a Phytec
>>> stm32m157c-som.
>>>
>>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>> ---
> 
> [snip]
> 
>>> +/ {
>>> +    model = "PHYTEC phyCORE-STM32MP1-3 Dev Board";
>>> +    compatible = "phytec,phycore-stm32mp1-3",
>>> +             "phytec,phycore-stm32mp157c-som", "st,stm32mp157";
>>> +
>>> +    aliases {
>>> +        mmc0 = &sdmmc1;
>>> +        mmc1 = &sdmmc2;
>>> +        mmc2 = &sdmmc3;
>>
>> mmc aliases are still used in linux?
> 
> Since kernel commit fa2d0aa96941 ("mmc: core: Allow setting slot
> index via device tree alias") added with v5.10-rc1, aliases
> dictate kernel numbering of /dev/mmcblk devices, so it's good
> to have these aliases for consistency as the alternative of
> using PARTUUID breaks down once the same image is flashed to
> both SD and eMMC and use of an initrd is not always practical.

Oh ok. I thought the opposite. Sorry for this mistake.

Cheers
Alex

>>> +&sdmmc1 {
>>> +    secure-status = "disabled";
>>> +};
>>> +
>>> +&sdmmc2 {
>>> +    status = "okay";
>>> +    secure-status = "disabled";
>>> +};
>>
>> What is the need to put the secure status disabled for SDMMC nodes ?
> 
> TF-A parses them, but for SDMMC, it should have no effect, so I agree
> they can be removed.
> 
> Cheers,
> Ahmad
> 
> 

