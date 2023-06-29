Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F7A742465
	for <lists+devicetree@lfdr.de>; Thu, 29 Jun 2023 12:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbjF2Kxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jun 2023 06:53:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232048AbjF2Kwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jun 2023 06:52:31 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B40732681
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 03:52:29 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4fb960b7c9dso824630e87.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 03:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688035948; x=1690627948;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UlNJGPdeRLhuq8bqjnDJ0UiciWKAic+2KZiOlQuvC6c=;
        b=DamM5VZs/lO5iA4xZe2PrxnJR2N0IAzDBmZowkeJ/lZnCEYhFxUjB6J3gqc38TMt67
         Oy+hyl/ymZN1R+F5AsKuoQsMsmcGgmH3AYAkYPoiEeWfLMTlNPaG5r2a4CXPYH8orfqf
         aERr2DgNX32sra+awK6jIcDaVWFR6yFE3Xeu2wrX5Sb2Ky7uz4ZKw/1iIQ2rVBGtPPJX
         q2JaB+P51dBu1B8tjuTbiUMxRAI1KLDWqZfDkBz7bcERf0SqUD2BAiSM5NMUPi47NBLc
         te1YNm9E8ijgKlDYPCLIrHyGqbTACN6Pmdh+UP/g6nKe1vRbcwYqwWwWEYqop0bxVthm
         RvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688035948; x=1690627948;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UlNJGPdeRLhuq8bqjnDJ0UiciWKAic+2KZiOlQuvC6c=;
        b=gTzPhFpSdi7mf0w/u1tOVCnK4cqHj/sXb92zkyP6Xf8qn0ufrSiSB1KpYOxrJoXeQk
         mwLfkNhya54qYqvQlzU/AU0g0gmDnCbaqHVKbwrSWMrFdKeRyAbSQIfSxThO66Ofhp1W
         bRDUXTcYLLo+MlU+sJtH0WVoyMBWolSGTkyo1teLBZbY5/UXP0yEHiKWhwUm/XTUHvpM
         sHK0Zz3InVpODj5XvJInVOG3qEIZlcJyLHRD8QdIxjFKIvBFaFWu7g6+fMI8koNJib3b
         /CuEnOD7bZIAzBNjyV4j7XXsimlSZ5tWPi8z2URE7rjwJe0LtW7BhMa/vSPyI5YMBS6/
         oLtg==
X-Gm-Message-State: AC+VfDxGLE62C3z9uRcZ/qDf2Hj7ikHE24k+xumpSHbyIsa0ChDTYdax
        9fa9MBPLNHc8kRTc8jJTFTRZlA==
X-Google-Smtp-Source: ACHHUZ4dABRK2BfrjLDu0qPtXKOPHueOULm4fXuKzIBieK4pOQhtBj+Ysu2v1iw/uLjYljBUn8tpcQ==
X-Received: by 2002:a05:6512:3c81:b0:4fb:73ce:8e7d with SMTP id h1-20020a0565123c8100b004fb73ce8e7dmr9458729lfv.15.1688035948080;
        Thu, 29 Jun 2023 03:52:28 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id a18-20020ac25212000000b004fb8f4df9bdsm655205lfl.226.2023.06.29.03.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 03:52:27 -0700 (PDT)
Message-ID: <a4ff3447-1e4f-7877-6f2f-d90b8cb8184e@linaro.org>
Date:   Thu, 29 Jun 2023 13:52:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 09/15] drm/msm/mdss: Add SM6125 support
Content-Language: en-GB
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Loic Poulain <loic.poulain@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Lux Aliaga <they@mint.lgbt>
References: <20230627-sm6125-dpu-v2-0-03e430a2078c@somainline.org>
 <20230627-sm6125-dpu-v2-9-03e430a2078c@somainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230627-sm6125-dpu-v2-9-03e430a2078c@somainline.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2023 23:14, Marijn Suijten wrote:
> SM6125 has an UBWC 3.0 decoder but only an UBWC 1.0 encoder.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>   drivers/gpu/drm/msm/msm_mdss.c | 8 ++++++++
>   1 file changed, 8 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

