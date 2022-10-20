Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 687C260608D
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 14:49:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbiJTMs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 08:48:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiJTMs5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 08:48:57 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF59518B09C
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:48:55 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id j8so2020418qvo.6
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q1M+ZjygcTh+wQj/LaxDBpu7tJHisiKmS4wQI9QNJcE=;
        b=f70jO+rGeNbNXJzEkd45j6Ddwl2FJ+n3aWFgYESzO4HCa4/8nk+a1IpfagfnXXpfFS
         uAZ2YSiq6H4q7djpGDD+k+mZJQigOaOEGUBPc5N6ECV8WmJcYtZb8Ir2ocoNJOf24t7p
         I7NAMptGN6/CGe84jawcV62mxzbk3AFe1U0kSlOdnWllShr3cE83dRDn3mpaIRIwvvCR
         C6QiNQcZ00H9FGHVOkfj6L0KXjnTF0hqFFSbwsggf4pPKY19Mvi0sQ4+X95rVTOG2xpA
         xESOirAxOqMbK7lKhEFjTT+grQ8TY7roHA8p4OFWN6BJ4CMS1fUnsnHlpkA4mn4S5/eQ
         2OPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1M+ZjygcTh+wQj/LaxDBpu7tJHisiKmS4wQI9QNJcE=;
        b=U9l9tPynK94XIkMGmbBsYxMKXvGP/nxL/nJiyy8Fn0xWM+Qkw5iuQ6pU8AHLc4L/mt
         RBw7j6y7Fx4fdbE2mzqdIWAUCRQXPDaOQ6rkpPYubn1pPRSgiBbDXGEKhHXuspVCEEH5
         /2dHDRMNG4RetDlOrTBnpGlwetO4AiMf5EgzpxnnGb/DmpmftNsl+N9WVUdp/iWQRmRP
         gvy4kmhHhOiiBAjB8v2Uv6G/h8Jnjo9b7a/BuPanXnb9QNqRTCPibIGqc1w/rVaygkze
         h2OnSSQorh+znmnhCCcu3nf0/IMwXkEGWy2XgnogSPjlvh60uw5SoyuBSdaEWEQfArQb
         9epg==
X-Gm-Message-State: ACrzQf2rBj53+shGX50mSH8bhcQGm9oOpvJzPMInzgYWuVDSC8BScbIm
        FN+QBJ8sqAvKKVAUUur2YBUAKg==
X-Google-Smtp-Source: AMsMyM7I9aV/f95bj7v+lreXR9VyQcLP8Abt+ZwUvcSxkF81/hwGk36S5tUn8jCXLGR9ascLThvvEg==
X-Received: by 2002:a0c:e1c6:0:b0:4af:aa3c:987c with SMTP id v6-20020a0ce1c6000000b004afaa3c987cmr11230613qvl.60.1666270134922;
        Thu, 20 Oct 2022 05:48:54 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id dm10-20020a05620a1d4a00b006bb87c4833asm7232789qkb.109.2022.10.20.05.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 05:48:53 -0700 (PDT)
Message-ID: <730eec7e-deb2-2d04-6ba9-132a41ebed58@linaro.org>
Date:   Thu, 20 Oct 2022 08:48:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] dt-bindings: nvmem: add new stm32mp13 compatible for
 stm32-romem
Content-Language: en-US
To:     Patrick DELAUNAY <patrick.delaunay@foss.st.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20221014172324.1.Ifc1812116ff63f5501f3edd155d3cf5c0ecc846c@changeid>
 <7ada410d-8d13-b29a-869c-3f5d032528bf@linaro.org>
 <4d113cfd-4c22-780e-2a13-48ca0e2b28ab@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4d113cfd-4c22-780e-2a13-48ca0e2b28ab@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 13:23, Patrick DELAUNAY wrote:
> Hi,
> 
> On 10/18/22 03:56, Krzysztof Kozlowski wrote:
>> On 14/10/2022 11:23, Patrick Delaunay wrote:
>>> Add a new compatible for stm32mp13 support.
>>>
>>> Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>
>>> ---
>>>
>>>   Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
>>> index 448a2678dc62..16f4cad2fa55 100644
>>> --- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
>>> +++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
>>> @@ -22,6 +22,7 @@ properties:
>>>     compatible:
>>>       enum:
>>>         - st,stm32f4-otp
>>> +      - st,stm32mp13-bsec
>>>         - st,stm32mp15-bsec
>> According to usage in DTS (separate patch for some reason), the devices
>> are compatible, so please describe them like that.
> 
> 
> I push the separate patch "ARM: dts: stm32mp13: fix compatible for BSEC"
> 
> It is a advice of my colleagues: send an update of device tree
> 
> only when the binding modification is acked.

That's not correct advice - only for few cases it's valid (when
subsystem maintainer wants to take entire patchset, so there should be
no DTS inside). We want to see the bindings and its usage, so one of:
1. the same patchset
2. if two patchsets, then cross linked to each other with URLs to
lore.kernel.org. I see DTS had link but not this one.

Driver changes also must be sent together with the bindings. Since there
are no driver changes here, it means for us the devices are compatible
from Linux point of view.

> 
> 
> Sorry for disturbance, I can sent a V2 with the 2 patches.
> 
> 
> The STM32MP15 and STM32MP13 don't use the same version of the BSEC device,
> 
> and the driver need to handle it.
> 
> 
> In these 2 patches:
> 
> - [PATCH] dt-bindings: nvmem: add new stm32mp13 compatible for stm32-romem
> 
> - [PATCH] ARM: dts: stm32mp13: fix compatible for BSEC
> 
> 
> I fix a error for BSEC node in the initial patch to support STM32MP13x,

The question is then whether device was working before or not. If it was
working, you fix one error but break DTS usage on any system which does
not have updated driver (so BSD, u-boot, other firmware, other Linux
kernel versions).

If it was not working, then it's okay, but such case was not explained
in DTS patch, I think.

> 
> the DTS "stm32mp131.dtsi" should not used/accepted with the a BSEC node 
> using
> 
> the compatible "st,stm32mp15-bsec" in commit 1da8779c0029 ("ARM: dts: 
> stm32: add STM32MP13 SoCs support")
> 
> 
> It is a preliminary step to add support of STM32MP13x in STM32 ROMEM driver.
> 
> 
> I don't indicate these patches as "Fixes:" to avoid a dts check issue
> 
> if only the DTS patch was backported.
> 
> 
> Today it not blocking for STM32MP13x users because this SoC is not yet 
> available for customers
> 
> and it is only used internally on the ST Microelectronics board 
> STM32MP135F-DK.

DTS patch says nothing about it...

> 
> 
> Nobody (except STMicroelectronics) use this SoC  STM32MP13x with the 
> current DTS / Linux version.
> 
> 
> Moreover, by default, the STM32 ROMEM driver in not activated in any 
> defconfig,

Independent issue.

> 
> I prepare a other patch to activated it by default in arm_multiv7_defconfig.
> 
> but I am waiting this DTS correction to avoid to probe the stm32 romen 
> driver with STM32MP15
> 
> configuration on STM32MP13x SoC.
> 
> 
> I think is a good time to update this DTS error before the SoC availability,
> 
> agreed with SoC Maintainer, Alexandre Torgue, even if this patch breaks 
> surrent users
> 
> of STM32MP13x DTS (but it is only internals user STMicroelectronics 
> until now).
> 
> 
> but perhaps you prefer a other solution ?

With that explanation it is fine, but the DTS commit was not mentioning
explanation.

> 
> add Fixes in the DTS patch ?
> 
> + Fixes: 1da8779c0029 ("ARM: dts: stm32: add STM32MP13 SoCs support")
> 
> or
> 
> 
>          bsec: efuse@5c005000 {
>              compatible = "st,stm32mp13-bsec", "st,stm32mp15-bsec";


Depends whether devices are compatible or not.

Best regards,
Krzysztof

