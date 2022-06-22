Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4E56554EDB
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 17:14:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359243AbiFVPO3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 11:14:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359236AbiFVPOV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 11:14:21 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3ECD3AA71
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 08:14:19 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id ej4so20411006edb.7
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 08:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=MrbZtaLd72AWbUNZUvq+3EUC9TFqAA/Ym3AEvzkLNkQ=;
        b=RtkZJ0W24qnsBx8EJBAs5r569tN8kJedXETYlMi1T5FjsGZVbGwmCLEwhBpOYxC4YZ
         neDhjYhVyFrIjkuIbq85C8MAHs/NyTShod3cTHY+I2UhJxzFS8BBdGt13Uy6MGqVPCO8
         BraKMmGvWW1dCGwdjMVgYWan2ZAcQz/PZRzIK16BuDxsDvQb0322zIggL9LQHd3MV76W
         gJsOW1Ag4JjlQ0mQbRQ3HizozpWos3mxfQ8PVZvM81TVX5xZrDJcA/gQq/rxkH78pdhu
         LLMAJm57sxF5ohAbGyw5ay7pCZ07AwnBIQH34Bh/GKy+IhR/oDQyBODX4wTmsB4wtKr+
         7MUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MrbZtaLd72AWbUNZUvq+3EUC9TFqAA/Ym3AEvzkLNkQ=;
        b=tiW2B4tXgkdR2q4aTyMRdYKfiZgt0FlQstLs5Um0Lld2gvb4G2+GTZ21aDisvVZH53
         6IDOOXj7KaNloax9FHdXfvIwcy+Dmsimdds0YZr1J0+TvSYXj8ZiZKWbEsAYbgLxCIYk
         trwHPkr0+WMHZsh0p0DMSifTvKApzg8fqKRQg1jbcAurrapt8KkX+b5FvyA4QWMX+IRH
         eCGkPX93lxmvpg9D/Ai753aoviU93DcAsDC2dUJy/jRg3liiLcJEMGkuGnT6DWc0QwjH
         fx6k4TovGqiPRYf7r/fsaOgjhP40mvA19JrXdw9GrK35jPw1b/XCnC0urMeCSuTyR3XS
         mCzw==
X-Gm-Message-State: AJIora/krSPOWyWm0aDp9t/+6ruq3+24kaQtQH88xe49tGoOSReTIALn
        CDuXzotoMG3ha72y4e3ZKfskfw==
X-Google-Smtp-Source: AGRyM1s2PrI91CQS76o4vHYX7nL2Klo+CzdTyknqWI0pfwCxZ0Srhg/foHX3Wb4KMaJnGGlL1UyvrQ==
X-Received: by 2002:a05:6402:51d3:b0:431:6c7b:28d with SMTP id r19-20020a05640251d300b004316c7b028dmr4549790edd.281.1655910858371;
        Wed, 22 Jun 2022 08:14:18 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b17-20020a1709063cb100b0070b7875aa6asm6737858ejh.166.2022.06.22.08.14.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 08:14:17 -0700 (PDT)
Message-ID: <317d18af-e4a0-523e-960f-5e2df66afe19@linaro.org>
Date:   Wed, 22 Jun 2022 17:14:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V2 6/8] dt-bindings: qcom: Add ipq5018 bindings
Content-Language: en-US
To:     Sricharan R <quic_srichara@quicinc.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, linus.walleij@linaro.org,
        catalin.marinas@arm.com, p.zabel@pengutronix.de,
        quic_varada@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220621161126.15883-1-quic_srichara@quicinc.com>
 <20220621161126.15883-7-quic_srichara@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220621161126.15883-7-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2022 18:11, Sricharan R wrote:
> From: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> Document the new ipq5018 SOC/board device tree bindings.
> 
> Co-developed-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Your chain is wrong. Since you send it, your SoB is the last. We have
nice example for this:

https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L473


Best regards,
Krzysztof
