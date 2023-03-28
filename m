Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 764896CB8B3
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 09:52:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjC1HwT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 03:52:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbjC1HwR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 03:52:17 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAB544494
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:52:08 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32S7bG39031640;
        Tue, 28 Mar 2023 09:51:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=hjcFiiAdU8XBCSGQ/ASQ4ZZpEQVFGAfSjTdSl+f/CLE=;
 b=NgEcjvhs/T5vq1lSun4MXvOW21LLrHfaH3CV+OY87h+2uCqDzcn51T+/J5oTLPmbeTEx
 OXYihf9ERT7EgG/DGRuVVhEjWfRgTm7/gOkbKNBRGNKE6RW5ALULzwYpLUcjdx1HG7cd
 0quNLeXDLOH7S2W2obebhLYdYGWW3UKKTKkAr1V5gpAMh7FIvIPq6f4ZgwTnVu+gjQ6+
 /2Gbq7snLVaVMtTgU9p3eXovbjWbc4Y04mJuewjT2Hf+SgYny7BDKrEnutqfKwTvRODI
 bDESP8A5NTqoGMEQWg/4UVHZLiBDYDduSnmuCt1c9vFtxVRjnlfmkJv7ko4bfnhubCZ6 3Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3phsqwfy81-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 28 Mar 2023 09:51:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B9474100040;
        Tue, 28 Mar 2023 09:51:54 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A1F1F20F2D2;
        Tue, 28 Mar 2023 09:51:34 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Tue, 28 Mar
 2023 09:51:34 +0200
Message-ID: <eb8963a0-a891-8f95-300f-89682188b3a3@foss.st.com>
Date:   Tue, 28 Mar 2023 09:51:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v5 09/10] ARM: dts: stm32: add STM32MP1-based Phytec SoM
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>
CC:     <linux-stm32@st-md-mailman.stormreply.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20230320132755.2150384-1-s.trumtrar@pengutronix.de>
 <20230320132755.2150384-10-s.trumtrar@pengutronix.de>
 <a37db3a8-a3e6-8755-2b7c-c33a1fdca469@foss.st.com>
 <87o7omedqr.fsf@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <87o7omedqr.fsf@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-27_02,2023-02-09_01
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi steffen


On 3/21/23 08:14, Steffen Trumtrar wrote:
> 
> Hi Alexandre,
> 
> Alexandre TORGUE <alexandre.torgue@foss.st.com> writes:
> 
>> [1. text/plain]
>> Hi Steffen
>>
>> On 3/20/23 14:27, Steffen Trumtrar wrote:
>>> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to 1 GB
>>> eMMC, up to 16 MB QSPI and up to 128 GB NAND flash.
>>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>> ---
>>> Notes:
>>>       checkpatch warns about un-documented binding
>>>            According to checkpatch the binding for "winbond,w25q128"
>>>       used in this dtsi is un-documented.
>>>       However, 'jedec,spi-nor.yaml' defines the pattern
>>>                (winbond,)?w25q(16|32(w|dw)?|64(dw)?|80bl|128(fw)?|256))$"
>>>            so, this should be good!?
>>
>> We recently added some yaml fixes and we continue to send others (i.e., GPU yaml
>> error fix is under review) so please don't add new ones. Some of follownig
>> errors are directly linked to your board so please fix them.
>>
> 
> sorry about that, seems like I wasn't using dt_binding_check correctly :(
> However, how did you generate these?

I ran make dtbs_check (after updating my schemes).

Cheers
Alex


> 
>> arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dtb:
>> /soc/i2c@40012000/touch@44: failed to match any schema with compatible:
>> ['st,stmpe811']
>> arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dtb:
>> /soc/i2c@40012000/touch@44/touchscreen: failed to match any schema with
>> compatible: ['st,stmpe-ts']
>> arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dtb: /soc/i2c@40012000/leds@62:
>> failed to match any schema with compatible: ['nxp,pca9533']
> 
> The bindings are there and if I explicitly run dt_bindings_check with
> e.g. Documentation/devicetree/bindings/leds there is no warning/error.
> 
> I will fixup the rest.
> 
> Best regards,
> Steffen
> 
> --
> Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
> Steuerwalder Str. 21            | https://www.pengutronix.de/    |
> 31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
> Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |

