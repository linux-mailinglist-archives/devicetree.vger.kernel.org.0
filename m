Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F85F5713DA
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232549AbiGLICU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:02:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232471AbiGLICP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:02:15 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E75024958
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:02:14 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t25so12614578lfg.7
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8pDDUTCLyl+0VPUb9vCl9+PQj1k0LcM84yg9J/H9QBw=;
        b=dcC0Ul9g125S3vaBRkM++E4UOOh+we3TQuyJEtjdnURZGSeGck8fhIsO/Tbj1+Zi8k
         3q9wPZQHfJkaSX2s7F2/VkpQPMArhAzhXwsbajLJ8JmzRSRGSNC50trfv2tbnOZ+JegJ
         EkrfVivx5wf+zMiuOmIcdb+L2UUhsKq8div+2XjCHNgSs3A6dx6FrJS6UWvaD4ekWXZ1
         MhV/1npds2NPScbbX+IqEQXmbdp1E1BbXVJcWw63UjNXRxN/pD4OWPtl3KUpNFS6Pl0t
         hIll6UbCssxLzvb1BIFkugVsqX0SHPzfHWEy41LCSRUs88P2pRllnCFH/4K8dO1H/3wA
         Kz2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8pDDUTCLyl+0VPUb9vCl9+PQj1k0LcM84yg9J/H9QBw=;
        b=Y4Y9pD7XA8j3NHYA4Ei6Y7JvCy5OKGPv4I3g7tB7HIZ0XdjpCyVemPJombSSZTRZXn
         nIktJLt1xi1o8zBYlhDRhGloddtQN0LT3KziAwgigsQE6W5YqSUlGLGNRdQNOz4ZDmni
         iPatFLz0+GLWlI0YNDEx8sTuMAYSvsEjyxQCoO/rWyx516j2ShEaQYtwfYLQAiScWImJ
         JO2+OCO1llpC1v4wb/6TCReWCKUFyJ4ycza2eI/YoubtDaPXPFyce3Zgzrcq6FOwQHlR
         4mKAfzqiDRWA4mTz3G/GCfCm+RJ2A2l1bPnGI90VWS9ix2R44a3CYSnT2ieNSvf75Vif
         eu5Q==
X-Gm-Message-State: AJIora84H2GhykINf+6P2Uyb7Lgs+7lfSPEnzOZuopLUowLZBIhnkYYw
        b7NxHK+W5AvmvMuPlTG7V4Z7ZA==
X-Google-Smtp-Source: AGRyM1tUjP31uGw3j/W8J2dlAqbG7oY2WLGmv3DUCVdpDWWNll1dOlteH1A+nzVCO8hlxN8BGndhxg==
X-Received: by 2002:a05:6512:32c1:b0:489:e9de:2f0 with SMTP id f1-20020a05651232c100b00489e9de02f0mr2436575lfg.117.1657612932572;
        Tue, 12 Jul 2022 01:02:12 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id z23-20020a195057000000b00489f0c8bddesm274281lfj.207.2022.07.12.01.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:02:12 -0700 (PDT)
Message-ID: <b6c3cfae-2af4-7d87-48c0-8b58697f45dc@linaro.org>
Date:   Tue, 12 Jul 2022 10:02:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mailbox: qcom,apcs-kpss-global: Add
 syscon const for relevant entries
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        jassisinghbrar@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org
References: <20220707150933.1889371-1-bryan.odonoghue@linaro.org>
 <20220707150933.1889371-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707150933.1889371-2-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 17:09, Bryan O'Donoghue wrote:
> msm8916, msm8939, msm8953, msm8994 and qcs404 already declare or should
> declare syscon as they have drivers that use syscon inside of the apcs-kpss
> block.
> 
> grep apcs arch/arm64/boot/dts/qcom/* | grep syscon
> 
> Add in the additional syscon in the documentation for the above mentioned
> parts.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
