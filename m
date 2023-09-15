Return-Path: <devicetree+bounces-467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 169B07A1A7D
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B47592829EF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC21ADDC1;
	Fri, 15 Sep 2023 09:26:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49D6AD7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 09:26:17 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C4581FD4;
	Fri, 15 Sep 2023 02:24:47 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38F9Nt6B079447;
	Fri, 15 Sep 2023 04:23:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1694769835;
	bh=4VeziTl+d8+AbgxzpJag5vUqbkWM3E4fMIuyXtnWn1U=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=F3kyzuFFrqo13xYV4oBqzGrPfPlQHB81syKDNevbRnSkMHhRgtrbCfu2fYN/EByUN
	 LhLVg872+ZhwGYqeP3Tjks+JHEcQ/z9RNUnhK3mMj0DpTbOD7T+7Fm9a7nHw8R8xAi
	 g6zmhI/q4Q4oxy9XQifNqsKN7nsb0XDY5l+dVTB4=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38F9NtFX120940
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 15 Sep 2023 04:23:55 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 15
 Sep 2023 04:23:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 15 Sep 2023 04:23:55 -0500
Received: from [10.24.69.29] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38F9Npqr039108;
	Fri, 15 Sep 2023 04:23:51 -0500
Message-ID: <bc3e9526-f497-616d-e720-69081e266983@ti.com>
Date: Fri, 15 Sep 2023 14:53:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] arm64: dts: ti: Add GPMC NAND support
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <vigneshr@ti.com>,
        <rogerq@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20230913114711.2937844-1-n-yadav@ti.com>
 <20230913114711.2937844-2-n-yadav@ti.com>
 <32c82fa2-f8b9-d22d-f0ac-f8d6e48df39d@linaro.org>
 <f7bebc22-d494-f54d-5543-db75f5714a52@ti.com>
 <20230914160450.knooq6q3dflostv4@playtime>
From: Nitin Yadav <n-yadav@ti.com>
In-Reply-To: <20230914160450.knooq6q3dflostv4@playtime>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 14/09/23 21:34, Nishanth Menon wrote:
> On 14:56-20230914, Nitin Yadav wrote:
>> Hi Krzysztof,
>>
>> On 14/09/23 11:57, Krzysztof Kozlowski wrote:
>>> On 13/09/2023 13:47, Nitin Yadav wrote:
>>>> Add support for AM62Q NAND card: X8 NAND EXPANSION
>>>> BOARD card (PROC143E1) for AM62x LP SK board.
> 
> Commit message is all too wrong as well. Sigh.
> 
>>>>
>>>> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
>>>> ---
>>>>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 29 ++++++++++++++++++++++++
>>>>  arch/arm64/boot/dts/ti/k3-am62.dtsi      |  2 ++
>>>>  2 files changed, 31 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
>>>> index 284b90c94da8..e93e79d8083f 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
>>>> @@ -955,4 +955,33 @@ mcasp2: audio-controller@2b20000 {
>>>>  		power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
>>>>  		status = "disabled";
>>>>  	};
>>>> +	gpmc0: memory-controller@3b000000 {
>>>> +		status = "disabled";
>>>
>>> status is never first in DTSI. Really, where did you see such code?
>> Thank for pointing out, Will send a revised version.
> 
> GPMC is not functional without board specific interface configuration
> such as pinmux. this approach, in fact is all over the place now and
> discussed in the mailing list multiple times now.
> 
> What is missing here is the documentation of the constraints as to why
> it is set as disabled by default.
gpmc nand is only am62x lp sk in am62x series. it has pinmux conflict
with macsp1, so disabling gpmc & elm by default for other am62 series.
For am62x lpsk in overlay macsp1 is disabled.
> 
> 
>>>
>>>> +		compatible = "ti,am64-gpmc";
>>>> +		power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
>>>
>>> First is compatible, second is reg/reg-names/ranges.
>>>
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> -- 
>> Regards,
>> Nitin
> 

-- 
Regards,
Nitin

