Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 441A772FF16
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 14:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244578AbjFNMvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 08:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244741AbjFNMvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 08:51:14 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A2D1BC5
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:51:10 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f7368126a6so5457655e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686747069; x=1689339069;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yV/2JI5MFWLOIVVC3zz2EQ4UGoIgXAQIkr+NgrjDxXU=;
        b=koSPBOI3Bjps7GEXrxMDmMrvwQ9bQtVavp8Z8AnXsQMH0dKj9/GzL0t0fYoba9UU88
         umqehauoSZt7M4f8QEvNkAlEaw+qtyXprWdY+nnsqDacGJLih7sC2n07MRKnTmDA5FfY
         d4Zm2P4CpDq+77I6g3sYO4sVKTmNey2QPrh80MirfVIQWIyJ+llw2NPDuCW9FxdHcPRR
         wxqgp2o0FeP2ngJo3UGRU8bmdkgrPsguEMB0bsWRFAakzpXYDfsbZSrQGIH/WJRVO+57
         ZAN7F2+aQw4+S7DZt1kPr6YZ4r7iE5phERe53O3KkdeI6Wb+3c9NDOeIN3+Ey+iHKD8j
         vtRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686747069; x=1689339069;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yV/2JI5MFWLOIVVC3zz2EQ4UGoIgXAQIkr+NgrjDxXU=;
        b=CZz6jd9Rz+0XM11zZtd5ievsaAPAaXhN62UKi/JErcimo16w6VT9UQMFQ2WodRtZWM
         0MaE8CI0kJVuC5dEKfIXpQdy9NJNuJLxmvaZd6Up93UszspQrGOum7grlGRSvJeQ+GKI
         b6izzAqwnCUkyo2qMCES/pkEFUQLVN2gyvu9cMtVBs4kTw/MMY70hjCVWQcaBV7QXEbM
         rb/7oZHS/t8pmRstR2ER1+qkR6Gd4Hr8RCi+R6x+WSf6+6YeGxoiuJNHTg7Y0fDd049g
         VuzRHH2I0l+ptBnQEcfv//Oa2/JrQGB6W3G7wywZ2nGBMur35DpFYhlzv0vuozDjweqq
         OCrg==
X-Gm-Message-State: AC+VfDwQUwAKNpeGdS9+r5KqznVvPJWz5TUrS6C1n2dZ2KaseOppXhPv
        wzi2b/zT1XC4C5N7uh9M4oJ2+Q==
X-Google-Smtp-Source: ACHHUZ4TBlkqigkZIhRP0eqsdiIl0p9vlo74LMJwxlnnYios2BrtxP9fM7jtR+laX6UF2XhuSTSBuw==
X-Received: by 2002:a7b:c3ce:0:b0:3f8:c9a4:4998 with SMTP id t14-20020a7bc3ce000000b003f8c9a44998mr3327071wmj.28.1686747069206;
        Wed, 14 Jun 2023 05:51:09 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id s14-20020adfeb0e000000b0030ae53550f5sm18180780wrn.51.2023.06.14.05.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 05:51:08 -0700 (PDT)
Message-ID: <71a05574-64f0-1f00-19a4-8962d84ccecf@linaro.org>
Date:   Wed, 14 Jun 2023 13:51:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 7/8] arm64: dts: qcom: msm8939: Define regulator
 constraints next to usage
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230530-msm8939-regulators-v1-0-a3c3ac833567@gerhold.net>
 <20230530-msm8939-regulators-v1-7-a3c3ac833567@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230530-msm8939-regulators-v1-7-a3c3ac833567@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 08:16, Stephan Gerhold wrote:
> Right now each MSM8939 device has a huge block of regulator constraints
> with allowed voltages for each regulator. For lack of better
> documentation these voltages are often copied as-is from the vendor
> device tree, without much extra thought.
> 
> Unfortunately, the voltages in the vendor device trees are often
> misleading or even wrong, e.g. because:
> 
>   - There is a large voltage range allowed and the actual voltage is
>     only set somewhere hidden in some messy vendor driver. This is often
>     the case for pm8916_{l14,l15,l16} because they have a broad range of
>     1.8-3.3V by default.
> 
>   - The voltage is actually wrong but thanks to the voltage constraints
>     in the RPM firmware it still ends up applying the correct voltage.
> 
> To have proper regulator constraints it is important to review them in
> context of the usage. The current setup in the MSM8939 device trees
> makes this quite hard because each device duplicates the standard
> voltages for components of the SoC and mixes those with minor
> device-specific additions and dummy voltages for completely unused
> regulators.
> 
> The actual usage of the regulators for the SoC components is in
> msm8939-pm8916.dtsi, so it can and should also define the related
> voltage constraints. These are not board-specific but defined in the
> MSM8939/PM8916 specification. There is no documentation available for
> MSM8939 but in practice it's almost identical to MSM8916.
> 
> Note that this commit does not make any functional change. All used
> regulators still have the same regulator constraints as before. Unused
> regulators do not have regulator constraints anymore because most of
> these were too broad or even entirely wrong. They should be added back
> with proper voltage constraints when there is an actual usage.
> 
> The same changes were already made for MSM8916 in commit b0a8f16ae4a0
> ("arm64: dts: qcom: msm8916: Define regulator constraints next to usage").
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>


It makes sense to replicate the 8916 change.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
