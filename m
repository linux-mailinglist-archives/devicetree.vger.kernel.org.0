Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4475360B5B8
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 20:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231983AbiJXSiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 14:38:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231869AbiJXSiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 14:38:02 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12F18A0244
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:20:01 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id a5so6481984qkl.6
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tgrIP4nZQeGJcrPGCJ1bgRtOrkuECk76eGNdilu0Lmc=;
        b=zvsibRITqmBcGsZUZQhnjL1sHxkHx0r3ANHqsI81+ZQM/IPrKyLS14u3Gb9kG5KqAQ
         FmspzaueRClTvLRn0IU4ZGN8exp1SAnHR4o93KrozugqGb9+ri5u0OBGakGL38Zy/ZQ1
         qHHoHYryq7I+g5HHi0Sbb67ropTIZKYRKRbB3BjmBqb96fV9TT5fidsQu7DNmuLM1qnf
         fFKO/g35TXBsOBXIVtrDSQdQk3tL1ZbTF+9USPt9j0fpdVH4rQJ0emeGQB6Xy6zBjQtu
         4P8DNJjFydn1vFH1Kl3ct+aW/loSBJrbb/eoKB0NBbHBC2vioEFmKRxoW1846Lx/CNoa
         BJ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tgrIP4nZQeGJcrPGCJ1bgRtOrkuECk76eGNdilu0Lmc=;
        b=cLhL0AsXuaNmqyTFSbv/WYVc0dj2eJUekD1pEamyrWlxa7WHEjsJjyHhHkcSyRAcVW
         4rst2Vb+bwPd5GAopuKrYCx9YKgzsvM+8r0hXBGja22zIngLMdQSWDnhx6CqmkuQ1yXo
         +y4uWnhpMcv3jjHi1BVSydmcmUlzyhuY/CtUDccXFGFLp46Ykir4EPBpA9B8RqgI4ytr
         7sxZotl8KhciVkHvNT96ztU2iocjO0zsFM6Kt4NnQZln3RwF7Jb6I4X5RgYnb3MyzzaR
         krZElqst3x9AI1++2t50BceooYt8a+JaGbmyMuWcCCxmgcGA5Df+fNVdkRTle/aRXMG8
         aBdg==
X-Gm-Message-State: ACrzQf3MtM+nf/+bWgG+a2jsUlGi0WgXS/1D1Gg+XoiOvJy9M0qhmYxT
        xO00qZ/OtZOs41eiZnV+5KcAjrVDLz/g8w==
X-Google-Smtp-Source: AMsMyM5dcODY3v/k1EBmEMmc18J+TDr3xbuQ8ibXuI6rpHCGUUJ2x+/E71Y3SuCkeqgbXSheYfKltw==
X-Received: by 2002:a05:622a:1d0:b0:39c:fc19:b580 with SMTP id t16-20020a05622a01d000b0039cfc19b580mr25045560qtw.238.1666630049356;
        Mon, 24 Oct 2022 09:47:29 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id j22-20020a05620a411600b006eef13ef4c8sm247784qko.94.2022.10.24.09.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 09:47:28 -0700 (PDT)
Message-ID: <77cc64f5-e286-2e1c-4d27-2367051dbdcb@linaro.org>
Date:   Mon, 24 Oct 2022 12:47:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCHv2] arm: dts: socfpga: align mmc node names with dtschema
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221024152110.197041-1-dinguyen@kernel.org>
 <e1d6f611-3d43-c9a5-fa03-a3376f4916ba@linaro.org>
 <1d5cc799-445f-0fae-1e3b-e094583d956f@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1d5cc799-445f-0fae-1e3b-e094583d956f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 12:44, Dinh Nguyen wrote:
> 
> 
> On 10/24/22 11:17, Krzysztof Kozlowski wrote:
>> On 24/10/2022 11:21, Dinh Nguyen wrote:
>>> dwmmc0@ff704000: $nodename:0: 'dwmmc0@ff704000' does not match '^mmc(@.*)?$'
>>>
>>> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>>> ---
>>> v2: put back mmc0 for "linux,default-trigger"
>>> ---
>>>   arch/arm/boot/dts/socfpga.dtsi                      | 2 +-
>>>   arch/arm/boot/dts/socfpga_arria10.dtsi              | 2 +-
>>>   arch/arm/boot/dts/socfpga_arria5.dtsi               | 2 +-
>>>   arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5.dtsi             | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi         | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
>>>   arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
>>>   arch/arm/boot/dts/socfpga_vt.dts                    | 2 +-
>>>   12 files changed, 12 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
>>> index 2459f3cd7dd9..57a5d6c924b1 100644
>>> --- a/arch/arm/boot/dts/socfpga.dtsi
>>> +++ b/arch/arm/boot/dts/socfpga.dtsi
>>> @@ -755,7 +755,7 @@ l3regs@0xff800000 {
>>>   			reg = <0xff800000 0x1000>;
>>>   		};
>>>   
>>> -		mmc: dwmmc0@ff704000 {
>>> +		mmc: mmc@ff704000 {
>>>   			compatible = "altr,socfpga-dw-mshc";
>>>   			reg = <0xff704000 0x1000>;
>>>   			interrupts = <0 139 4>;
>>> diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
>>> index 4370e3cbbb4b..a06211fcb5c3 100644
>>> --- a/arch/arm/boot/dts/socfpga_arria10.dtsi
>>> +++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
>>> @@ -656,7 +656,7 @@ L2: cache-controller@fffff000 {
>>>   			arm,shared-override;
>>>   		};
>>>   
>>> -		mmc: dwmmc0@ff808000 {
>>> +		mmc: mmc@ff808000 {
>>>   			#address-cells = <1>;
>>>   			#size-cells = <0>;
>>>   			compatible = "altr,socfpga-dw-mshc";
>>> diff --git a/arch/arm/boot/dts/socfpga_arria5.dtsi b/arch/arm/boot/dts/socfpga_arria5.dtsi
>>> index 22dbf07afcff..9ce4b4979ecb 100644
>>> --- a/arch/arm/boot/dts/socfpga_arria5.dtsi
>>> +++ b/arch/arm/boot/dts/socfpga_arria5.dtsi
>>> @@ -18,7 +18,7 @@ osc1 {
>>>   			};
>>>   		};
>>>   
>>> -		mmc0: dwmmc0@ff704000 {
>>> +		mmc: mmc@ff704000 {
>>>   			broken-cd;
>>>   			bus-width = <4>;
>>>   			cap-mmc-highspeed;
>>> diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
>>> index 7f5458d8fccc..40f12232c150 100644
>>> --- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
>>> +++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
>>> @@ -107,7 +107,7 @@ rtc@68 {
>>>   	};
>>>   };
>>>   
>>> -&mmc0 {
>>> +&mmc {
>>
>> This does not look related and was not mentioned in commit msg,
>>
> 
> Because I've changed the mmc0 node to 'mmc', this is needed, otherwise 
> the build will break.

I know.

Why changing label to mmc? It's not related to this commit and not
explained in commit msg.

Best regards,
Krzysztof

