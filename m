Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4226662BFE2
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:45:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232990AbiKPNo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:44:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232515AbiKPNou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:44:50 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 723D117067
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:44:49 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id a29so29556565lfj.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OtRPgI0hPTXIZ3YSyjqLr0O5f9pH5O1PPXUqg324a9M=;
        b=RAZe8L5Sc3K3kbuBdwhHlHTAzGECl3wpYNKJvGTewdAq1TGLJ+Qi0gA4TLERj1mpo0
         DkMEQbgitJvpZ949P4FahoJheUx/i1l4wO6dV6k9lhFRlxezhzk2nOVr9UVohSx4SJSv
         gjsbJ82Hf7tL8u1MqPhCPN+tC+yNaug7ysT4AT7USIXPlOWVkJtPAGC3h4/n0CYxSAN4
         uSXpGJpB9qGbqSNShSb03vitD7w6L+6+Wkvxinrc/Aqom+KJRWaofzaPnqNokYKdGp4R
         058bUa0iH2agFyp+m0MUgzLTcDDy9qVTenjQk610OLKwpnPqIJo1NmWlcDtnLMV6y+wC
         mIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OtRPgI0hPTXIZ3YSyjqLr0O5f9pH5O1PPXUqg324a9M=;
        b=3Juc8maEiUPQPAJ9t7yudnFzxSQ1hagLqM7SMrCmu/aj5uAUGHtk3fFDYFaG5JsmDe
         ME1cvcat8PZpMoQBTrjwUVJRuG046Mk176ul3ZP4FhVj5+2LbRw/Z4kovVwC4OHDdv5N
         l/HvBf7xydR0ers6a9xbakmOVvV6AXgujxSUg+E0OGtxZkz62wJbkZ2MR0AUIdtNYLYt
         e82GHF3zWyBRr9rN4uzDdPSVIsjT/Psb/7TlitHUPMITNf4JxRGuuWTWN7X1mpJC8G1N
         hxNA+gbBlBV3zR2a9t0v6lduqzAhOhSPkTVEtzPQrQJHBZlQrkYOoAqfh9hqzV/hbKYD
         0TPw==
X-Gm-Message-State: ANoB5plARkr0UY4iIWmxUdFug1Rj0kxipkuoLO3MxQhFBTEekokFOT4M
        eik1wJ3DT56It7wd6L48+GEMTw==
X-Google-Smtp-Source: AA0mqf66GIdI3xUDmN8RUOnND9di3YfQxPlSmBq4FTYOcrQK43KraobsvCgrjdbs1xu1lfXpbC1wfA==
X-Received: by 2002:a05:6512:3195:b0:4a4:43e4:9cc1 with SMTP id i21-20020a056512319500b004a443e49cc1mr7257334lfe.512.1668606287844;
        Wed, 16 Nov 2022 05:44:47 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0027754bdd667sm2114795ljc.109.2022.11.16.05.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 05:44:47 -0800 (PST)
Message-ID: <ef2057cb-8de8-4d65-2749-cfc205833eb4@linaro.org>
Date:   Wed, 16 Nov 2022 16:44:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8150: Use defines for power
 domain indices
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221115130936.6830-1-konrad.dybcio@linaro.org>
 <20221115130936.6830-2-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221115130936.6830-2-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 16:09, Konrad Dybcio wrote:
> Use the defines from qcom-rpmpd.h instead of bare numbers for
> readability.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8150.dtsi | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

