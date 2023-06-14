Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62B1372FB38
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 12:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbjFNKic (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 06:38:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233697AbjFNKib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 06:38:31 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 189831996
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 03:38:29 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f5f728c4aaso7622985e87.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 03:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686739107; x=1689331107;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjCyUOjKHvqSiAPvi5lvMeFvTbESRkFpyQF2eUzcXcU=;
        b=PVF87715a76Oul6uJPquKGj3PrzNdvZEqPM3VSXWCsSd2wwxdPh3GOp0Krq17RHQVB
         JvqVbACkW/9yPq/o/eHTwoL8IxOYJpPD0DM2XG+WuaCE2LcNCMQKO14WOuEFhX7Gwvox
         84qngorhvtNifC+ZcWMnKS1t+7Wp+rvBognn2lGXWJHGDjUTzq13H0saJSQJXIZmYQ96
         6PvFoY8GK2za7ZSCNFjG7eiZSA/gvHctvY78G/JwXd/1hP7yHTcf5m7iO/iZ/H+YGBfH
         W2lOKiZg/gzTCaaw4wJUTeCuIuuEuWRfSqwDpQVwoEU4secMO1CRYsqpDEDpiDf7lKvN
         bx/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686739107; x=1689331107;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yjCyUOjKHvqSiAPvi5lvMeFvTbESRkFpyQF2eUzcXcU=;
        b=VpREN2OBwjOXymg9vwM+iQV+RaHaVGNFKEAGLm66vzzojn8dYswO6kouMFE5+OzTiH
         fHGpaqGiXxrusBvAtzdEJHIxDp8ckPR6tUacwzBoscfpq6o+7ChexSACkyjdvjXm3vfQ
         KqZiVgTUAlPr6c5t3besM1uFt/thkLY9EkvK5UBbnYu4abSlLEt9thTaHm3lopTE3X2c
         VeTOlOBko1QUfvCWAlYRf2OZoRl1HC4k0dSZ8AKuRDefQuUttg+9C8oMwQ7i2NDlMvHG
         opofWI3+wwJhbrYBg3y0XsbHtKJasxW7h3iLd9OYcNkQ9xfClbcRaPbsvkDD1AWuMU9a
         g0jA==
X-Gm-Message-State: AC+VfDxJTuig6Raq3uOi+mzy1CRzEaioaUGgn1CU0L+8wCvQTLqtL5wb
        XAVCwv+cQd+AahkPL3SVLotzZA==
X-Google-Smtp-Source: ACHHUZ7qQnH+ebopeL/sAhczQKmmtGiDj2cBOZLvaV9abds/FUpO9nMFHuIzElJlA/ILOOrAao0Gfg==
X-Received: by 2002:a05:6512:b0e:b0:4f4:b10f:d521 with SMTP id w14-20020a0565120b0e00b004f4b10fd521mr374666lfu.13.1686739107249;
        Wed, 14 Jun 2023 03:38:27 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a8-20020a19f808000000b004f14ecc03f1sm2069876lff.100.2023.06.14.03.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 03:38:26 -0700 (PDT)
Message-ID: <a35f039a-98a7-a4c0-ccd2-a18ef4def147@linaro.org>
Date:   Wed, 14 Jun 2023 12:38:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: enable the SPI NOR support in
 RDP433
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230609081508.30982-1-quic_kathirav@quicinc.com>
 <c1c34aa4-ac7d-2c07-bf92-05d887aed3d2@linaro.org>
 <ed9d11cc-7ab4-b6c8-737b-bd89d3973e80@quicinc.com>
 <1957b1cf-28b7-dbfc-1675-ee4534e5571b@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1957b1cf-28b7-dbfc-1675-ee4534e5571b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14.06.2023 12:34, Kathiravan T wrote:
> 
> On 6/14/2023 12:02 PM, Kathiravan T wrote:
>>
>> On 6/9/2023 2:37 PM, Konrad Dybcio wrote:
>>>
>>> On 9.06.2023 10:15, Kathiravan T wrote:
>>>> RDP433 has the support for SPI NOR, add the support for it.
>>>>
>>>> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
>>>> ---
>>>> Note: This patch was part of initial submission
>>>> https://lore.kernel.org/linux-arm-msm/20230329053726.14860-1-quic_kathirav@quicinc.com/
>>>> however this got missed in between, so sending it across again.
>>>>
>>>>   arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 21 +++++++++++++++++++++
>>>>   1 file changed, 21 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
>>>> index 2b3ed8d351f7..31ee19112157 100644
>>>> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
>>>> @@ -48,6 +48,20 @@
>>>>       };
>>>>   };
>>>>   +&blsp1_spi0 {
>>>> +    pinctrl-0 = <&spi_0_pins>;
>>>> +    pinctrl-names = "default";
>>>> +    status = "okay";
>>>> +
>>>> +    flash@0 {
>>>> +        compatible = "micron,n25q128a11", "jedec,spi-nor";
>>>> +        reg = <0>;
>>>> +        #address-cells = <1>;
>>>> +        #size-cells = <1>;
>>> If you're not adding a partition table, you can drop the address-
>>> and size-cells properties, as they determine what the reg value of
>>> the child looks like.
>>
>>
>> Sorry, somehow I missed this query. Will check and update it.
> 
> 
> Currently IPQ boot loaders patches the partition information into the SPI node. To parse that, we need the address-cells and size-cells properties.
Please consult adding these properties if they're not found with the
bootloader team using libfdt calls from there. All bl changes should
be self-contained.

I understand it won't be possible for released products, but hopefully
this could change for the next ones.

Konrad
> 
> Also, this patch is now integrated into the below series
> 
> https://lore.kernel.org/linux-arm-msm/20230614085040.22071-1-quic_anusha@quicinc.com/T/#t
> 
> 
> Thanks,
> 
> 
>>
>>
>>>
>>> Konrad
>>>> +        spi-max-frequency = <50000000>;
>>>> +    };
>>>> +};
>>>> +
>>>>   &sdhc_1 {
>>>>       pinctrl-0 = <&sdc_default_state>;
>>>>       pinctrl-names = "default";
>>>> @@ -96,6 +110,13 @@
>>>>               bias-pull-down;
>>>>           };
>>>>       };
>>>> +
>>>> +    spi_0_pins: spi-0-state {
>>>> +        pins = "gpio11", "gpio12", "gpio13", "gpio14";
>>>> +        function = "blsp0_spi";
>>>> +        drive-strength = <8>;
>>>> +        bias-disable;
>>>> +    };
>>>>   };
>>>>     &xo_board_clk {
