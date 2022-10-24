Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 256F960B4E9
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 20:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbiJXSHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 14:07:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232350AbiJXSGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 14:06:39 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 918EB14085
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 09:46:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B4A02B8149C
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 16:44:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE97CC433D7;
        Mon, 24 Oct 2022 16:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666629870;
        bh=/nJHTHEGLgd7iVwMhSotTOXcSCGsAb0CCqvD75S0Gnw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=rCbHQAaOqhJNak2+2EB3BiosjV+8qH5/GPFzVT5KikZK3dNjqaOPwcUFj9xTt3Z6J
         Rch57Wn6rP25FvcFQrCaYd0DybgupDAebrLCdDR/j+ZB7VTeY+39E+yrS4EK3CqR+Y
         9tHJSkvMR5hIejwHL/X2mxEY/gADmtdxkKHgZLP47D4T5owaiCsklSJ+LnSsp36nz9
         mqLzjEasVueCCh8ZDgCvQPwKGao7xMjKgzu6xTcx5+1tpvc/6Zj4wTqzCLv7HU+68+
         pu9mvMras+6REG6EiIp4Dxk0Oz6nmUevZdfBGQHnQVbfBqN5rBrVO09fGQIscIdfDH
         I6rXQ3GHp/6Xw==
Message-ID: <1d5cc799-445f-0fae-1e3b-e094583d956f@kernel.org>
Date:   Mon, 24 Oct 2022 11:44:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCHv2] arm: dts: socfpga: align mmc node names with dtschema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221024152110.197041-1-dinguyen@kernel.org>
 <e1d6f611-3d43-c9a5-fa03-a3376f4916ba@linaro.org>
From:   Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <e1d6f611-3d43-c9a5-fa03-a3376f4916ba@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/24/22 11:17, Krzysztof Kozlowski wrote:
> On 24/10/2022 11:21, Dinh Nguyen wrote:
>> dwmmc0@ff704000: $nodename:0: 'dwmmc0@ff704000' does not match '^mmc(@.*)?$'
>>
>> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>> ---
>> v2: put back mmc0 for "linux,default-trigger"
>> ---
>>   arch/arm/boot/dts/socfpga.dtsi                      | 2 +-
>>   arch/arm/boot/dts/socfpga_arria10.dtsi              | 2 +-
>>   arch/arm/boot/dts/socfpga_arria5.dtsi               | 2 +-
>>   arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5.dtsi             | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi         | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
>>   arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
>>   arch/arm/boot/dts/socfpga_vt.dts                    | 2 +-
>>   12 files changed, 12 insertions(+), 12 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
>> index 2459f3cd7dd9..57a5d6c924b1 100644
>> --- a/arch/arm/boot/dts/socfpga.dtsi
>> +++ b/arch/arm/boot/dts/socfpga.dtsi
>> @@ -755,7 +755,7 @@ l3regs@0xff800000 {
>>   			reg = <0xff800000 0x1000>;
>>   		};
>>   
>> -		mmc: dwmmc0@ff704000 {
>> +		mmc: mmc@ff704000 {
>>   			compatible = "altr,socfpga-dw-mshc";
>>   			reg = <0xff704000 0x1000>;
>>   			interrupts = <0 139 4>;
>> diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
>> index 4370e3cbbb4b..a06211fcb5c3 100644
>> --- a/arch/arm/boot/dts/socfpga_arria10.dtsi
>> +++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
>> @@ -656,7 +656,7 @@ L2: cache-controller@fffff000 {
>>   			arm,shared-override;
>>   		};
>>   
>> -		mmc: dwmmc0@ff808000 {
>> +		mmc: mmc@ff808000 {
>>   			#address-cells = <1>;
>>   			#size-cells = <0>;
>>   			compatible = "altr,socfpga-dw-mshc";
>> diff --git a/arch/arm/boot/dts/socfpga_arria5.dtsi b/arch/arm/boot/dts/socfpga_arria5.dtsi
>> index 22dbf07afcff..9ce4b4979ecb 100644
>> --- a/arch/arm/boot/dts/socfpga_arria5.dtsi
>> +++ b/arch/arm/boot/dts/socfpga_arria5.dtsi
>> @@ -18,7 +18,7 @@ osc1 {
>>   			};
>>   		};
>>   
>> -		mmc0: dwmmc0@ff704000 {
>> +		mmc: mmc@ff704000 {
>>   			broken-cd;
>>   			bus-width = <4>;
>>   			cap-mmc-highspeed;
>> diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
>> index 7f5458d8fccc..40f12232c150 100644
>> --- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
>> +++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
>> @@ -107,7 +107,7 @@ rtc@68 {
>>   	};
>>   };
>>   
>> -&mmc0 {
>> +&mmc {
> 
> This does not look related and was not mentioned in commit msg,
> 

Because I've changed the mmc0 node to 'mmc', this is needed, otherwise 
the build will break.

Dinh
