Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1167575EE9
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 12:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbiGOKBF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 06:01:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbiGOKBD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 06:01:03 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C4F820DA
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 03:01:02 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id bp17so7046162lfb.3
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 03:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=49/cugRDS6TNO8LUbn+Bfa9lSPXar+32O/jfPHUtlp4=;
        b=ryur40BTCGCsemCMQWtdESjuuEL113rZcPvz3NIOl6g8tbuOW8Xklfl8HgRSjmaz6k
         1THJMUrcz+pGR7jj9rWarcnR0jFxMq3bT4UPxoX9Cs7gnrBy0sygxC/r9ox2DpMDxIrk
         rWWhQG+rXwPoQBIrqDDp7hjiwAC6+KklryDE8o9wusfeRWrStrJ/mUC0upHl7Sy73a+d
         E3E+RVsEYssFonilo3ruaIgrShHxWrUNBCfhxZ7Q9jF1ZpxQcLGqAXWQKS6dH+nId5Jz
         kabE+WKGv7vPoAbNyjdNAUDRSEl6hhBmB/CA/AyK3xElU/3YwR97HLkySdHm2Fqgxh0o
         PVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=49/cugRDS6TNO8LUbn+Bfa9lSPXar+32O/jfPHUtlp4=;
        b=MnTQ3mxyeHGR990jsHoQWvV12U8g7gwD6Y9BF3Tx6/ebf1NqZEd3pPMdFEqQmiYGPF
         +rZahRziCEzAtXuIon3nKxi37MSbiBbu8XQRIfFlDTxwYGcKFhl6/HTOdVQ+A/9C9NKf
         MmXfOtwBgWKm6dYXoBoJVuzyjMoZKbZWpjGqK7cbKkcqc6AiviVUVqAS1T4/PAt+ywc8
         CtPz4WZZUDWstZeLz1AuHT2PaFB5GoFSbU8X01Xgt50NF0tazMHJ/Wj1h+nXzoJxame5
         UF5Y0wj8eHMLpK0Yt/1ReS0GM1aHi4gLKT4wFX8XkdQX+c3b0aJ2G1B2iFlE+YTn6Crt
         jcuQ==
X-Gm-Message-State: AJIora+OlRK/y+UwvTvNAfEeLXFFYS5wbIDqYwQZeos015pnNBs/GjnQ
        ZOlQkif+t0wJx4BXhL24V1xUzA==
X-Google-Smtp-Source: AGRyM1vpVzMrr7jf9rC4afDfFN8YR9xWUS2k19sUYbnisWW3KnNHxlarI0nN8FnDlNj36TzTA4rspg==
X-Received: by 2002:a05:6512:401c:b0:489:d49b:2462 with SMTP id br28-20020a056512401c00b00489d49b2462mr7357876lfb.640.1657879260847;
        Fri, 15 Jul 2022 03:01:00 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id g2-20020a056512118200b0048a0e948c34sm823374lfr.195.2022.07.15.03.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 03:01:00 -0700 (PDT)
Message-ID: <9ef75900-4daf-05c7-0c9a-d76878410f1c@linaro.org>
Date:   Fri, 15 Jul 2022 12:00:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: msm8916-samsung-e2015: Add
 initial common dtsi
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20220715093653.61933-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220715093653.61933-1-linmengbo0689@protonmail.com>
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

On 15/07/2022 11:37, Lin, Meng-Bo wrote:
> Samsung Galaxy E5, E7 and Grand Max are smartphones using the MSM8916 SoC
> released in 2015.
> 
> e2015 and a2015 are similar, with some differences in accelerometer,
> MUIC and Vibrator. The common parts are shared in
> msm8916-samsung-a2015-common.dtsi to reduce duplication.
> 
> Add a common device tree for with initial support for:

I just received one patch, no cover letter, no threading (I asked for),
no changelog against v1, no binding updates (I asked for).

Sorry, the process does not work like that.

You receive comments, so either you apply them or you keep discussing
with reviewer.

Best regards,
Krzysztof
