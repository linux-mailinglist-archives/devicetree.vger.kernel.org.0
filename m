Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCC3B781865
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 10:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjHSIcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 04:32:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbjHSIcf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 04:32:35 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A4D257084
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 01:32:33 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5259cf39154so2101819a12.2
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 01:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692433952; x=1693038752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ix8YOkiCA8Yfy3DAKq6Gdfu5OcCLN5ahy1LqBBsn4wE=;
        b=YaQB7apPrUzQw+O6eG/Yk0FmvmuOjm7Ay1BxfYb5mlEJy6nUwAz8okLIdE8baxHqYF
         xadgxYMSpy89etPzpg2vVMG6UNS7d2ghuYqlGihe1Ow+Vjzu6yQlYo8iAFko8VtNGxSN
         KKbXXUTPtYdWT62ojSawsImuUjSlmsjjaW/NejUDiaUCur28P74X/LNchQH+8FGVft1z
         AbPttNejtTIbwXVSc+DU1xsR9qsJdXGhhwmS0qHoOPZkHBUytYA27JwWWMxdJ4wJHift
         jbmtHvTV/hYtqm87krKtKxz1M2w47gdLFrOSR5wFKXEyJx21qjI7TjD5GeSgffSVSwea
         hjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692433952; x=1693038752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ix8YOkiCA8Yfy3DAKq6Gdfu5OcCLN5ahy1LqBBsn4wE=;
        b=i83Db+0ffAbVT7+yV5NOTI0DCqCNc4Xbv/gthqWHceaxOBE9MGCJKE7TroJxbi0qWE
         i4Zn6pjJCu3diFj/cKpXFeACZAg3TMtRDTB1tWzEi1JYxJkBcyxQIcaX8zesa7PtpKTR
         48CyUAwv7TlpvjCmNacDmPPph/arI7bqE4r8kmgKV/Si5oCGDw/z1OKvaDBhr2sEg4lt
         sVqg6rnKTQGaRuzo3vG0ApU4rIsqxzBczB3NT8q2bLJwGocUUmtnZRqsTowaYkD6Hqix
         bFuzupvlZT/g6eTloK3uKaCo1zGr4GKAFdymB2iLBXbyJnpVQAZxXAGo5nolGUgpju5Z
         ZdMw==
X-Gm-Message-State: AOJu0Yx+nV2FoyBJ7Ly/27R7RTPaQ27VJlO7spgpngZI/s6/VkQPyt7y
        s45vJVB2CP+hwMeNfVgrOlkWHA==
X-Google-Smtp-Source: AGHT+IHuS5W+rAGYbQvkT8qr8muLdssch24hUmSNaCYTDbifpEloZHjDQHkxPYQT+aZgwP4zN57W1A==
X-Received: by 2002:aa7:d952:0:b0:525:63f9:a268 with SMTP id l18-20020aa7d952000000b0052563f9a268mr996159eds.42.1692433951262;
        Sat, 19 Aug 2023 01:32:31 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id p6-20020aa7d306000000b0052574ef0da1sm2122455edq.28.2023.08.19.01.32.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 01:32:30 -0700 (PDT)
Message-ID: <0f7babfd-de60-326b-37b3-32fe48927815@linaro.org>
Date:   Sat, 19 Aug 2023 10:32:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 6/8] phy: exynos5-usbdrd: Add Exynos850 support
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc:     JaeHun Jung <jh0801.jung@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-7-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-7-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2023 05:17, Sam Protsenko wrote:
> Implement Exynos850 USB 2.0 DRD PHY controller support. Exynos850 has
> quite a different PHY controller than Exynos5 compatible controllers,
> but it's still possible to implement it on top of existing
> exynos5-usbdrd driver infrastructure.
> 
> Only UTMI+ (USB 2.0) PHY interface is implemented, as Exynos850 doesn't
> support USB 3.0.
> 
> Only two clocks are used for this controller:
>   - phy: bus clock, used for PHY registers access
>   - ref: PHY reference clock (OSCCLK)
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

