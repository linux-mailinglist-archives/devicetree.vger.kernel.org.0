Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0990862EF01
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 09:14:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234080AbiKRIOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 03:14:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234724AbiKRIOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 03:14:38 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86B2F13DDA
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:14:35 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id d6so6989697lfs.10
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GVIAqFFv0kCN0rRPM8hMtsvdD/yxisYOHhG5SG0ehK4=;
        b=Mk0CQRJ0wstXRfmXaM+uKrViqR3HLGAVqBsF+5knhoK/Rhb8L6MNVbvNXJtYEgo8VU
         okSFlODxefKP/IKr2yxfC4Fo/xl+z747+u0bwxOsBszrmSRl2ZBWreHgT0uNCHZ/cKTd
         FsupcamkRL9kdmC8qEEA5inciWCVO2Wj9hg+oVldTg49ALo66x8gEtjWgZw1917Bg8Vy
         4D0hXgkgD2gtawaVCtj8d11XzG+xdbaCPC21eTtOx/1YthY+7oTqKI1DZCY42Aceijxp
         M0fAEpWWkcogbcwtqWkY2pVboqIML8/b2ZaPIjwwoJqtePbt6HP2rtpeOjUGK/NthPhB
         3cDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GVIAqFFv0kCN0rRPM8hMtsvdD/yxisYOHhG5SG0ehK4=;
        b=4n8m+G2b+4aNrlfQBGCx5uQY5lVsMLwfHMLqYlfvRiVafuoGeGj9ThndHQpAtQKENK
         uEt5oPLOHZE1KXtNZrd+1BSxKsokqLwQ+8zX9avtDEk3cOl6+EfxbFrrEK+GBqlUJf58
         ZVkmxl/ol2SHfsbon7132YSeWhZhhjuNxW/UNvobPz51G6Plu/g4YtIWQQDtJW02w65q
         klV+wGokZ+R/yu7Kt+4nCKo9fGBBMjwGub3E8AqV966N8y4I37orASx4fbY3JlKRhec/
         UFlyosqBS4aHIDkiO0B0rscCsMW9/l/jS8JKB4VBceycz6+ASw0wM9+ROkaXTw8ufg3P
         OJFg==
X-Gm-Message-State: ANoB5plvzY1R/Xsq6gt3UFn0ZyP1UH0ftrYKBVWPKWsbThbBN3SydnGf
        RjKBsJbuPfq6oMZPjfxknrqGgA==
X-Google-Smtp-Source: AA0mqf47bbPmux3j4f5zi+7tIrEZKMMqsFnA4CfXLKsMV3od5nhmKn6TPJ+Dxa8RSdLaglEdR/cvtg==
X-Received: by 2002:a05:6512:3d10:b0:4b4:1177:a64c with SMTP id d16-20020a0565123d1000b004b41177a64cmr2329003lfv.647.1668759273847;
        Fri, 18 Nov 2022 00:14:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j7-20020ac253a7000000b004acb2adfa21sm557212lfh.297.2022.11.18.00.14.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 00:14:33 -0800 (PST)
Message-ID: <d5bf5d7b-097e-a48c-4cc8-9be87f2aaa13@linaro.org>
Date:   Fri, 18 Nov 2022 09:14:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] dt-bindings: pwm: tegra: Convert to json-schema
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Jon Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-pwm@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20221117214248.2365983-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117214248.2365983-1-thierry.reding@gmail.com>
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

On 17/11/2022 22:42, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Convert the Tegra PWFM bindings from the free-form text format to
> json-schema.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

