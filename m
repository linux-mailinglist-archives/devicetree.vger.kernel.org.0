Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD2B686653
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 14:00:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231781AbjBANAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 08:00:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231368AbjBANAg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 08:00:36 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F414B451
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 05:00:35 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id k16so12618197wms.2
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 05:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pVYGNoOjinG7SrCWTecQYxGmZ7oqM0G+38edYB+oHHw=;
        b=v5LDlYxQZ+bsz1e1EX5FJEj4EZhfjpQpGSYkTgoH1wvORyHsD3rKTwm7S9hHJKKpwe
         rR1T1oLcTFm24/bAFlm4FgJ1vw/8dZAwYAZtWPtmWUnctNe7OKvVkcOLRSKUxiz7lyb7
         mAPHkQKG4zpwXefdoS4al9fO0kWMWCkoUn6exxLT0XV43tMKiy3qx10BxanAbutKPJ/w
         Danr6n2+cNkbudmJYE4qXCWEd4mMYT6PYpwpriZddKO0bUPKr99DO4/qk1qqHWKt7l7V
         hER2nwnpXlxj/i1TOR7Pu3CeqpMyAxe3BP+HjwWkLdI4JU6d1srbH/UcCNUQYI71Vzgt
         Qvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pVYGNoOjinG7SrCWTecQYxGmZ7oqM0G+38edYB+oHHw=;
        b=XymVPBtPW/erNAazKxaVo8ZpgvfZxWUIXF5m6+p7bfgy4ihkNm7ju9tv07srF8nsmY
         WZw1TgmdlKP7KaVJsmttULB4dzdTH1sQDS8Ha52UISGgbXynAWtmpkPyrGtWE09I9ERd
         GV1cIHz/Vm+znyJeHur5Ln8q8fqn0DNKp3ViIzdtwiRAxdJUdLciUOQEN3TKv8B9eNeA
         ISaOAvsN2ItwahWQ2j4kr/Yj+qLXFsCsf8MhCnBATdTlmywVF08Da19oMuJ2CBkwEjtj
         ONuyPxoptUjQ+xfWUgb5mqeuoIe+96fHpkg9gFOUxml8gBiQqoWe71pG+l0TIiwVOtxb
         Ii1Q==
X-Gm-Message-State: AO0yUKXu3K0cJMw5Wyvzd+EkxS6MEWAo1sO2KmliUtfciTjA0U3UR17B
        q5sd1jg/DFgHqzUUa1EOf8UDBQ==
X-Google-Smtp-Source: AK7set9g7b5Mfam7n/PRDNDBLuQhP05bAB3If4chbOznqTsU9vIBK2LesGlJ9dsAziXf80TwiCxTeQ==
X-Received: by 2002:a05:600c:3556:b0:3db:331b:bd57 with SMTP id i22-20020a05600c355600b003db331bbd57mr2022836wmq.23.1675256433672;
        Wed, 01 Feb 2023 05:00:33 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q4-20020adff944000000b002bfae3f6802sm17184325wrr.58.2023.02.01.05.00.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 05:00:33 -0800 (PST)
Message-ID: <9d29b6b3-c3df-6098-07b2-06daa8c6b3b1@linaro.org>
Date:   Wed, 1 Feb 2023 14:00:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ASoC: dt-bindings: irondevice,sma1303.yaml: Fix about
 breaking the checks
Content-Language: en-US
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
References: <20230131050946.14385-1-kiseok.jo@irondevice.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230131050946.14385-1-kiseok.jo@irondevice.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 06:09, Kiseok Jo wrote:
> Fix the bindings checks like syntax error.

BTW, so not only original patch was not tested but also fix was not
tested at all. This still fails next.

Best regards,
Krzysztof

