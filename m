Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1FD16868D8
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 15:49:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjBAOs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 09:48:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbjBAOs4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 09:48:56 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67CFB46086
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 06:48:47 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso1644100wmq.5
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 06:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IrnlLHSpUTjrHRq92D868o5e+HjYioBUEUhrnsOP32c=;
        b=UfPFRQsMj32BsjZ01Mk6hCF0qquffPQzHMzbMrt95W634kccfQupeRF9JZ2z5EVoBf
         gOPmI8ZocCBvIlZLhNqend3rOkVmscOAh1qa8v0kRkIelaLpo52RTKEXIJcPUiWxzZLx
         bb17PM841mbhRI30oRsMY0JGqLVeHnb90sxUoNoElNp89qLR/KhJAQlkpC6tBR+j5GXr
         VGYyIf/Bna7fGYutR2v/EpjhAWiw+wQNyct4HOX9hAR625hogyTZ5laEwGreWD+g3hik
         oXp8tVO9mNfPbxX0Yc5degCgn90+V/33lip6HxDH83FpvHtesM30ZFiprr3IBVghG4Xu
         v+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IrnlLHSpUTjrHRq92D868o5e+HjYioBUEUhrnsOP32c=;
        b=Q/vXf4vgCVy2kslogGyiSmi4zoOunEFVir9UQ+FwRbNqksS1zS+QOqqvVcep79FdCV
         qoE114Trs0t2dRJ6D/XXn40hAISe8ZfN54YI5l/WPZNuyxm+1F3p/5rX6cOThTTlV0Ki
         KVxcbHZdAEb/gtpFR69m0UrVREUxBqwTWQe84e4HOZLufs5RWNdM1yFcr9VR5qaQZIbA
         dUiZ5zecFzjuPf0nwSmp7/g120JcCAJ3lGpmgHRK+PLd4thQjZmOG2UYLVjhj/ejCsnH
         LqeB25F5rDFlbGGwQsJTDPxPLAuexgD0YZ/Rwg9UjQcthBeSh4mVx4evq2dyMgpenxnk
         ahVw==
X-Gm-Message-State: AO0yUKVxF2qbZcIb0T5GMX9NKAmPpCGu7K5ZPjc94D/RWlw9DI3woqzm
        QJKN794nnGjucgtfGer3fMOLOw==
X-Google-Smtp-Source: AK7set+7RVhri8YFyr5V2meUkuAy+CNt+qnGsTyJwzqSTxxdHvqRO6TilYs80rAWUfMOTzbkXWKJoQ==
X-Received: by 2002:a05:600c:4586:b0:3de:e447:8025 with SMTP id r6-20020a05600c458600b003dee4478025mr1846048wmo.21.1675262925589;
        Wed, 01 Feb 2023 06:48:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m17-20020a7bce11000000b003dc492e4430sm2014770wmc.28.2023.02.01.06.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 06:48:45 -0800 (PST)
Message-ID: <ca742cbe-69f8-e269-ada5-b8731329e0a8@linaro.org>
Date:   Wed, 1 Feb 2023 15:48:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v1] colibri.dtsi: Refactor ASoC driver name
Content-Language: en-US
To:     Markus Burri <markus.burri@mt.com>, linux-kernel@vger.kernel.org
Cc:     Manuel Traut <manuel.traut@mt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230201120900.840725-1-markus.burri@mt.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230201120900.840725-1-markus.burri@mt.com>
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

On 01/02/2023 13:09, Markus Burri wrote:
> From: Manuel Traut <manuel.traut@mt.com>
> 

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

Best regards,
Krzysztof

