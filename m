Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45886DFFC0
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 22:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbjDLU0g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 16:26:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbjDLU0b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 16:26:31 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE0A276BF
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 13:26:29 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id z26so12747856ljq.3
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 13:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681331188; x=1683923188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8H9YKn/XNUDyg0V0IfHKOXTMiAPmo1dRrKHaJchsJUE=;
        b=fsnNaJ3fMWvfqjnUgm9M5H+0D2TmDp4cyBYvzYOssEXvtbpAqLnOFds9jKCDvlhXAj
         yimJGk7G9oSRZW5qj5ULdaoI5lT2Vl4CbUMuM6U0MjxfixGU7Z7WzDAA71R5mhRAv+07
         P9TwXtH7Jz42ZeNPp3ZGtS85NR8lYNle7fUFx2LSA25aLyaXFjSi2tgg9REITXjWH0FD
         KrhFFZandn+X/4pyYr36x2Du9HaTxfg/wlR/gxdjvFzZVQ1e5kFDQ5UnpZcB9H3WZXO4
         9mnv4i3puJnsyrGzzu3i892UX+JYhhJVNx0SbyZfKhViPxWxYUxF/NHfzSeJI5W8FqhK
         vT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681331188; x=1683923188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8H9YKn/XNUDyg0V0IfHKOXTMiAPmo1dRrKHaJchsJUE=;
        b=ao3hx9JV76M5WDScKMnoE7YG/kVkHQfCUbJvl4opIRZdXcEXGo55Zf3K0o4XK/rD2i
         ckgdkuysCMkNYnWgUdSIkC3h+NHKwD8ltPa4pmoijdAnh6SS/YAJ/C5yYgKDARPrzABM
         TJeX0tVC+bqU3KJBoT14HAUMc9gKEGmuO1jcKtkPUtlxLXixfufqQprSczK3BW3ZKAaS
         oTP2xkPD6VdChRhqNXCi4u6JsDfytgvgttYyXgwv07ufHhnfKt8+nVEldRKVTWGwuGHX
         4n38c/8k4JCx8vdkJIWha2c+xY0g5YCXAclodxHkCppAcRxqyIbQTRjhJlaOjADqQ2jf
         AuvA==
X-Gm-Message-State: AAQBX9dYdwi1nSFEtBt7xO8apzhh2sG2Oud+YNsr83X5m78LmJMpHa9w
        G47dVIBy3z6EaXoM16QEMusqSw==
X-Google-Smtp-Source: AKy350aXEj5ixExfpIhCosCnRuDfPdFOXLUsw5Zw5migaoZNzQBU88qmsg7DFqP2/hBysnxxJCHFog==
X-Received: by 2002:a05:651c:115:b0:2a7:a5a4:b878 with SMTP id a21-20020a05651c011500b002a7a5a4b878mr402560ljb.50.1681331187958;
        Wed, 12 Apr 2023 13:26:27 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id r1-20020a2eb601000000b0029c36ebf89asm3411557ljn.112.2023.04.12.13.26.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:26:27 -0700 (PDT)
Message-ID: <497d7ea1-6824-314b-7165-d72e0ce55027@linaro.org>
Date:   Wed, 12 Apr 2023 23:26:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
 <70957e67-e570-3800-e679-d7c291295999@linaro.org>
 <cfa6af3e-c7bc-894a-119c-5c6c5ea82ec0@linaro.org>
 <85d75550-66f4-2680-c6fe-9c575e916b40@linaro.org>
 <6a545494-832b-d1d9-ad5a-9ed0a724703b@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <6a545494-832b-d1d9-ad5a-9ed0a724703b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 13:52, Konrad Dybcio wrote:
> 
> 
> On 27.03.2023 12:14, Dmitry Baryshkov wrote:
>> On 27/03/2023 11:05, Neil Armstrong wrote:
>>> On 27/03/2023 09:59, Neil Armstrong wrote:
>>>> On 24/03/2023 22:55, Dmitry Baryshkov wrote:
>>>>> The first USB PHY on the sm8150 platform is really the USB+DP combo
>>>>> PHY. Add the DP part of the PHY.
>>>>>
>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> ---
>>>>>    arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
>>>>>    1 file changed, 13 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
>>>>> index 9491be4a6bf0..a618218f7b68 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
>>>>> @@ -3392,20 +3392,19 @@ usb_2_hsphy: phy@88e3000 {
>>>>>            };
>>>>>            usb_1_qmpphy: phy@88e9000 {
>>>>> -            compatible = "qcom,sm8150-qmp-usb3-phy";
>>>>> +            compatible = "qcom,sm8150-qmp-usb3-dp-phy";
>>>>>                reg = <0 0x088e9000 0 0x18c>,
>>>>> -                  <0 0x088e8000 0 0x10>;
>>>>> +                  <0 0x088e8000 0 0x38>,
>>>>> +                  <0 0x088ea000 0 0x40>;
>>>>>                status = "disabled";
>>>>>                #address-cells = <2>;
>>>>>                #size-cells = <2>;
>>>>>                ranges;
>>>>> -
>>>>>                clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>>>>>                     <&rpmhcc RPMH_CXO_CLK>,
>>>>>                     <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
>>>>>                     <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
>>>>>                clock-names = "aux", "ref_clk_src", "ref", "com_aux";
>>>>> -
>>>>>                resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>>>>>                     <&gcc GCC_USB3_PHY_PRIM_BCR>;
>>>>>                reset-names = "phy", "common";
>>>>> @@ -3423,6 +3422,16 @@ usb_1_ssphy: phy@88e9200 {
>>>>>                    clock-names = "pipe0";
>>>>>                    clock-output-names = "usb3_phy_pipe_clk_src";
>>>>>                };
>>>>> +
>>>>> +            usb_1_dpphy: phy@88ea200 {
>>>>> +                reg = <0 0x088ea200 0 0x200>,
>>>>> +                      <0 0x088ea400 0 0x200>,
>>>>> +                      <0 0x088eaa00 0 0x200>,
>>>>> +                      <0 0x088ea600 0 0x200>,
>>>>> +                      <0 0x088ea800 0 0x200>;
>>>>> +                #clock-cells = <1>;
>>>>> +                #phy-cells = <0>;
>>>>> +            };
>>>>
>>>> Is there a reason why the new flat bindings from qcom,sc8280xp-qmp-usb43dp-phy.yaml are not used instead ?
>>>>
>>>
>>> Oh ok I see "phy: qcom-qmp-combo: convert to newer style of bindings" is the followup of this serie,
>>> please specify it because it wasn't obvious...
>>
>> I thought that a note in the cover letter was good enough, but yeah, maybe it should be more explicit. Do you think it warrants v2? I can send one.
> IMO it's unnecessary so long as both get in.

And so nobody responded with R-B :-)

-- 
With best wishes
Dmitry

