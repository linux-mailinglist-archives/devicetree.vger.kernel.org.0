Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F68350851A
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 11:38:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377277AbiDTJlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 05:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353889AbiDTJlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 05:41:39 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC604205E8
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:38:53 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id lc2so2259823ejb.12
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DckHze4+6HunbSN7WuckOn6koLzRNHoE18iuqzdYRHo=;
        b=e8ylOQikeKIG/AC+TycP76KVjSkEqA4N6kaulLzrl1WtU/lA43sSPII0Sbu0X2MHib
         /cMJWB/n3gDKkmVatRgoIRJKxUJWTTJVO9NBcpIiKOtO1sIllmBOP8ZuPXV3C/LE5Lku
         nteUnrba3Br2VDUR1kYdccP3cGqCBr1pwwmS+WqNPsubBmoynNYzJeR8UrIE1678argD
         L2mJ/bMrjHg8voULGiRMc8gydA0+QzWrhZvG0ksXGiPrtjIH2DPegHPXOkr8lSnXNSYV
         Xe9uhd4256jAR2Cmaxtfg2/kACUohhq/ioX+O6kv1KAStSJYhOhK28cjvN7ghDbvT36a
         u69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DckHze4+6HunbSN7WuckOn6koLzRNHoE18iuqzdYRHo=;
        b=cGJOLnndIfHZK9D1hW3mN17oF34BxlFiLK9ClQnBG1vWUpeaCfs68Hrr2ilo9FPl1Z
         92vBlecY8rKH3oiD6jCtRLgXnCwe7W8zrx5NKg000pfPRgdUoOmLalTTlWk1uMyXLOvU
         ftlex1INIWNP3ZE7hnPx2rQdILObpEphrKZ9TMEvw0ySYhTZUjKMuqs770eG9wx2yj0a
         zOk2yRBZvGvapIT9Oz/9Qpc6pqFW21vJlaCR8fP3DR/kvhYOr/suUl8cxZPCvlOFi9Mj
         jYvA9elJIPF7Gr7pvvMSbFXZwCbyNEzQ5ljcCVhH9Bk+hsy8VMb6sCl2b7gkf3YSotAr
         NZBg==
X-Gm-Message-State: AOAM533j/1dbu4avs0SmBLOUnEXw99vyawnsLc+9LJzoKJtfqsU44YW5
        ro7OsmDK4mOM+Za+5hOEHSK1KA==
X-Google-Smtp-Source: ABdhPJwoDueEKLGKwkfFU691uKlS3vu33JDCbK4DKBvkhwBpMW9X/RX56XFc5Unh+7pVw6WmL07iNQ==
X-Received: by 2002:a17:907:3f02:b0:6e7:7172:4437 with SMTP id hq2-20020a1709073f0200b006e771724437mr16846093ejc.361.1650447532280;
        Wed, 20 Apr 2022 02:38:52 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z21-20020a170906435500b006e8669fae36sm6565271ejm.189.2022.04.20.02.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 02:38:51 -0700 (PDT)
Message-ID: <0cb490f4-3df8-7fc8-277f-070e0133f5db@linaro.org>
Date:   Wed, 20 Apr 2022 11:38:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 2/4] arm64: dts: Add msm8939 SoC
Content-Language: en-US
To:     Jun Nie <jun.nie@linaro.org>
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, benl@squareup.com, jwillcox@squareup.com,
        jgates@squareup.com, mchen@squareup.com, zac@squareup.com,
        Leo Yan <leo.yan@linaro.org>
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-3-bryan.odonoghue@linaro.org>
 <737d44a9-56ba-846e-24ad-36b2da52d2d7@linaro.org>
 <CABymUCOAKvZXZKYtvunjn=K9mpZmAd4x3WTXH571k5BsBH6CEA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABymUCOAKvZXZKYtvunjn=K9mpZmAd4x3WTXH571k5BsBH6CEA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2022 11:31, Jun Nie wrote:
>>
>> Why these opps are named with numerical suffix but other with frequency
>> suffix?
> 
> Hi Krzysztof,
> 
> Because the 200MHz in cpr is just used as a parameter to calculate the
> voltage adjustment.
> The frequency in cpr_opp is not directly related to CPU frequency.
> Such as cpr_opp1 is for
> 200MHz on cluster1 while it is for 249MHz on cluster0. Do you still
> suggest to use
> cpr_opp_200 or so in this case?

Thanks for explanation, I would still choose it to have consistent
opp-hz and suffix.

>>
>> Generic node names, no underscores in node names. This applies everywhere.
>>
>>> +                     compatible = "qcom,qfprom";
>>> +                     reg = <0x00058000 0x1000>;
>>> +                     #address-cells = <1>;
>>> +                     #size-cells = <1>;
>>> +                     cpr_efuse_init_voltage1: ivoltage1@dc {
>>
>> s/ivoltageX/voltage/
> 
> How about cpr_efuse_init_voltage_dc? There are 3
> cpr_efuse_init_voltage* node here.

The node names should be generic, so this should be maybe even just
"efuse"? Feel free to add some prefix to it, so "init-voltage-efuse",
but no underscores and no suffixes in such case (but "init-voltage2-efuse").

Was there anything more to discuss? Without trimming the response it's
not possible to find anything among 1000 unrelated lines. :(

Best regards,
Krzysztof
