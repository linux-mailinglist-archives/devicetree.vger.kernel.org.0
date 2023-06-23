Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9CE073BCD5
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 18:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232186AbjFWQkt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 12:40:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232425AbjFWQke (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 12:40:34 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C79295C
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 09:40:26 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-31126037f41so910837f8f.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 09:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687538425; x=1690130425;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a++H1TBaoMInjxf1VRNayHFgIoMRZUfsbrwobdRMHxM=;
        b=UWiFZVq9PviMA6JRGjbHqEt+m9IevMv3xp08xFnUHTcxXbIJufUKkHCG+g3uh+Bqep
         f09l1smOXN9rsdbfj6XW4vFE26shZo/BIsb61P+5bhujL27vIlx/p4VkWSsUZWeYPs8v
         LQMLUpkfdLNIBN52677r14e/RBOrRq0H2DkcK1s8qtqyczyPJ033/hdjuLEwqw9mHdaX
         uOjnDidevxLrQiYKTYmwtRREs2pw34BhtewvSNz0G30GHLbO5FjPCi/2OZ2/2uGeIaWv
         bIZ3/6W+ro7KtdEZZfvqBIaV/woq/vJHc6a0tDHYxD+K6GRFVVepV/bBlnlR4nej/jIH
         hZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687538425; x=1690130425;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a++H1TBaoMInjxf1VRNayHFgIoMRZUfsbrwobdRMHxM=;
        b=BwVONz4xDGO/9i5Oy6lRnCaXu0z4xFCUa4cs3ydIwcDoqd2CKvFXvuabhRfqBEs6X1
         8wgDsErMcKcqWAH8sEYUIyvGFOjlpXiAs64tDkj2T+5FHR3+6qSNVH/7PScdDmJd4nR0
         0PzdPRVwoRsghifT7jMcsZoM884j/0d3RkWRJgId4v36cOpHbxpahQzVMIPFWIdhpgh/
         2cf9SEHBzq+ygQvgN8KTR6e4abbqTw9hdnyaLQFqMuHcsO6CAMwTj5+px3k8fz79r9qq
         bpHKFPOEJDF2GjKGP/9pMjGSW5FbUlL4DJ8t387hmq5ZKdRNbLiO8QLTYh06exMXnR1q
         mWyw==
X-Gm-Message-State: AC+VfDxBfL6E0ZJewiFHp5JsbMNhnO1eZ/0wOzKktihIt3D0U24pFbU4
        pUzEGTEUzhH07zGcoBvDedx5jw==
X-Google-Smtp-Source: ACHHUZ4fKA6Pm2fcKNkv0rlEk+sJhe5V3FlXTeOrwsHbnoKloMGvxBbGqNJdKkvKTV5uhcjK5HvYDA==
X-Received: by 2002:adf:e507:0:b0:30f:bc98:ede1 with SMTP id j7-20020adfe507000000b0030fbc98ede1mr18707632wrm.8.1687538424854;
        Fri, 23 Jun 2023 09:40:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id t16-20020a5d49d0000000b0030aed4223e0sm9881032wrs.105.2023.06.23.09.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jun 2023 09:40:24 -0700 (PDT)
Message-ID: <ea4dd457-eba6-9068-fb4e-c1761ce80343@linaro.org>
Date:   Fri, 23 Jun 2023 18:40:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/9] dt-bindings: clk: qcom,gcc-msm8998: Add missing
 GPU/MMSS GPLL0 legs
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230622-topic-8998clk-v1-0-5b7a0d6e98b1@linaro.org>
 <20230622-topic-8998clk-v1-1-5b7a0d6e98b1@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230622-topic-8998clk-v1-1-5b7a0d6e98b1@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 22/06/2023 13:57, Konrad Dybcio wrote:
> GPLL0 has two separate outputs to both GPUSS and MMSS: one that's
> 2-divided and one that runs at the same rate as the GPLL0 itself.
> 
> Add the missing ones to the binding.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

