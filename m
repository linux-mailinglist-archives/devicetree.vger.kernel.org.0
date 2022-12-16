Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C04764EAC4
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:41:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230376AbiLPLl2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:41:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbiLPLlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:41:24 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE7C25C5A
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:41:23 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id z26so3055970lfu.8
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=17MNm39bbqpug3RvcPpT95MRkN2EavjuIF9h7FQ+Qn8=;
        b=VHCXQboZaHQaUmlcf4ptNuIES6oqD4kY6gXjy6RCuZSKl7IBGJP1j0CIhSv/4lssnQ
         /x8eEWu56rpZiR+8cLxh68WgXJgu+DaHx7W3oL3K7HQdb9ltmmCrXIhu/WDUvg6OJ72Y
         wRymzcON01Qja7mEKdR6ykpr2noJhH9kDNDtfC9b8ANxIvMbPP8w9MaLnROmIWD+i2nA
         ZwIzv2kfIlDnAiP6a2FK2HUm63jOBbpTFAojLBEV/QBrtQPsUsZEQNsHPvacqdxpbD+b
         CFyliRO8cgw940w/eZOMLI8JJGtCLd72ct0W5fyoFnXS60kTWyvnrRYlSCoMjPcDGPi6
         Sc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=17MNm39bbqpug3RvcPpT95MRkN2EavjuIF9h7FQ+Qn8=;
        b=7hmD1MduwQBtLkW8/eJv9nPO4yoM3styCWu6tYcv1o5odk6iDVSScPPh0BKi52GcuD
         I2euzvRWZb/VJCTJaHhBiFLPmSh9HrNcZ30LISuWwYYKmn6beyilIZu9DwYGkJA/AGJX
         xxA6NHk/N6XabiCcJReCfKOklmpA+5B8tuEHaaQQ+CEurR5zPPZPhtsXAmhc9x8yuFg9
         YB2obdJRoN4LZlYmziVHPWZXJZCwD92fgtcrng6friqyoo3BZqu57EBIhsQ3xXhpSGZG
         FK+bClOEKOGFFhJRTCMSdwhXGfU02k1+mNG0Fy5+qIy+226N/PUdWR3AuXOMMN2M4rhP
         3iGw==
X-Gm-Message-State: ANoB5pknpWXsO0XdvT8W1ejGTy6lJPO0XcD0yplgba9MywLp25Cnw2Nk
        ymDJFBFLAa16Wy6Fs7w5pBFB3AKOwGBhDSlZ
X-Google-Smtp-Source: AA0mqf6c1DPQoSUCYsU9ogB0mXF+R4gaLIaqfsP5TyLkbE0lKXJzvkHIC3TXLU+LjxkJGD27QCsmWg==
X-Received: by 2002:a05:6512:22d2:b0:4a4:68b7:e718 with SMTP id g18-20020a05651222d200b004a468b7e718mr11045785lfu.2.1671190881610;
        Fri, 16 Dec 2022 03:41:21 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m5-20020a056512358500b00498fc3d4cfdsm197067lfr.189.2022.12.16.03.41.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:41:21 -0800 (PST)
Message-ID: <e71e9254-07e3-a6d6-00db-ac42325f6138@linaro.org>
Date:   Fri, 16 Dec 2022 12:41:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/2] dt-bindings: display: imx: Describe drm binding
 for fsl,imx-lcdc
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20221214115921.1845994-1-u.kleine-koenig@pengutronix.de>
 <20221214115921.1845994-2-u.kleine-koenig@pengutronix.de>
 <0f3e755f-954a-9722-6898-181170deb2c3@linaro.org>
 <20221216113832.6qvyzlrwfzrlhker@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216113832.6qvyzlrwfzrlhker@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 12:38, Uwe Kleine-König wrote:
> On Fri, Dec 16, 2022 at 11:41:30AM +0100, Krzysztof Kozlowski wrote:
>> On 14/12/2022 12:59, Uwe Kleine-König wrote:
>>> Modify the existing (fb-like) binding to support the drm-like binding in
>>> parallel.
>>
>> Aren't you now adding two compatibles to the same hardware, just for two
>> Linux drivers? One hardware should have one compatible, regardless of
>> Linux display implementation.
> 
> The (up to now unopposed) idea was to use the opportunity to pick a
> better name for the compatible. The hardware component is called LCDC
> and I guess fsl,imx21-fb was only picked because the linux driver is
> called imxfb. Unless I understood Rob wrong, he insisted to describe
> both variants in a single binding document only.

OK, I'll leave it then to Rob.

Best regards,
Krzysztof

