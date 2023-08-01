Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE3276AB1C
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 10:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231778AbjHAIdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 04:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230166AbjHAIdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 04:33:38 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7506C10D
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 01:33:36 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fe24b794e5so12351645e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 01:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690878815; x=1691483615;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oK0mQIgJFm3oWmc63ghs/FgVS9TuK8MCPl54LV6+KXo=;
        b=A5e6AHFp6IDY6zqFw+2Vp+XVJjDNO6YNmIyENgzu54x5sZ1SIslybCxaNUnHBHPZ5e
         4v7uaHFddphWgRw1TAGZYcyhSJDbiiQc2hXm9R9LuWoAzT/Uf3WUBQQi/BW+3V3nxsID
         rEyYBibpt7H8fMefpSMR7RfETg9KjxnJWf8FsNc/N+UUxMpI5aNdHE3wC2LH584RRgc+
         6Ewibhp2wIGaDZ13zuqBq0kTZ8oJMPusDLAww7v7rns/VhLYbuIAo4xVMMzp7L2/LKeo
         sgPGmW0Clogl7+2KM1uxN6ER9LfkVavSUMUQPjnkNMJXhQpNwcXazCY9dsOFoR9DFtSg
         ciDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690878815; x=1691483615;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oK0mQIgJFm3oWmc63ghs/FgVS9TuK8MCPl54LV6+KXo=;
        b=QVTE6wMeU83T0c9sRuMZEe5UakqQfXKmXkF4DdTJIMz+xwj96BU4XmFkyEdf1ZC4CK
         0QciQ893UcsWbYFisHVm6MpxdWIOB2j9FzdJ33NuodxWf0ftUXe4WfNWy9YpGIeKljfm
         YbixAkUdcLCUDtdqsoqR99jlXeMYXJaHzLOcCuakzHkx00dKu1pW9BojXGk15YYku1uH
         2rCEc4OWhA+na/kkM0lMSb9afYqtbGVDzsifcyWcLM4N/DY7yoxgxBFguwUufWw73pCQ
         R1S1goioHRoT1LYlKJpRVzeBz5md0rV9xVLO4RUL5M77xwQwz0bVN79rUUm593dh/Iq8
         V6Iw==
X-Gm-Message-State: ABy/qLYZMFIGxdvLUUjPOqbJ/kfdfwLYdU/advDV4d0Pq/9KsDdNUo4h
        XSvdTQrx/37ySmsascOrsrUX1rBqAM8DY2e68DHh8kjh
X-Google-Smtp-Source: APBJJlHa99JzpOzhNd3dFCbo+iZFJO4dJ0qmI2sxSaXTvYWF4P+cbpqXHzfrY66cS1b6O/IZnKx1cA==
X-Received: by 2002:a05:6000:1206:b0:317:6ff6:fe93 with SMTP id e6-20020a056000120600b003176ff6fe93mr1787505wrx.47.1690878814875;
        Tue, 01 Aug 2023 01:33:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id s6-20020a5d6a86000000b003142ea7a661sm15362840wru.21.2023.08.01.01.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 01:33:34 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Gerald Loacker <gerald.loacker@wolfvision.net>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
In-Reply-To: <20230714013756.1546769-1-sre@kernel.org>
References: <20230714013756.1546769-1-sre@kernel.org>
Subject: Re: [PATCH v3 00/19] Sitronix ST7789V improvements
Message-Id: <169087881393.663866.16032041261776637042.b4-ty@linaro.org>
Date:   Tue, 01 Aug 2023 10:33:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 14 Jul 2023 03:37:37 +0200, Sebastian Reichel wrote:
> This adds panel support for Inanbo T28CP45TN89, which I found inside of a
> handheld thermal camera. The panel is based on the st7789v controller. All
> information is based on reverse engineering. I also appended the series
> from Miquel Raynal adding EDT ET028013DMA panel support, so that I could
> easily test it with my SPI_NO_RX setup. They are slightly different due
> to rebasing.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[01/19] dt-bindings: vendor-prefixes: add Inanbo
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=b93e0e203e27492a2277169e05ac59afb9bf7fcd
[02/19] dt-bindings: display: st7789v: add Inanbo T28CP45TN89
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ff984a81cf601a68ba99a9c3264145f4d931783d
[03/19] drm/panel: sitronix-st7789v: add SPI ID table
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=11649154ec46f1c7f7c58bac22e2c5927ca6b6a2
[04/19] drm/panel: sitronix-st7789v: remove unused constants
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=c2974f43b1237e0c985760156bc3ca4dccbb5243
[05/19] drm/panel: sitronix-st7789v: make reset GPIO optional
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=b6b65e45e09a2e940e48722fa0bfdf16e6f4edf8
[06/19] drm/panel: sitronix-st7789v: simplify st7789v_spi_write
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=fbad26dcb657830e59ba2ca5eaba6be0019b97f9
[07/19] drm/panel: sitronix-st7789v: improve error handling
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=bc2aa99b2306bc9d91586bc9187bfef4e61d3882
[08/19] drm/panel: sitronix-st7789v: avoid hardcoding mode info
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9b4454fa2528c617b5986517c9c73e50e30d237d
[09/19] drm/panel: sitronix-st7789v: avoid hardcoding panel size
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=4098d1867f27de2443c33e116b064ad3082aecb9
[10/19] drm/panel: sitronix-st7789v: add media bus format
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a4b563b1d19dea9de366f81cae6342d80b663a45
[11/19] drm/panel: sitronix-st7789v: avoid hardcoding invert mode
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=7a6288726cf6bc0fa1bca0f24922a06425b84bf1
[12/19] drm/panel: sitronix-st7789v: avoid hardcoding polarity info
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e4572f99f8a7dfd8a081c9135943ab82abe6f692
[13/19] drm/panel: sitronix-st7789v: add Inanbo T28CP45TN89 support
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a411558cc14309073616e72d259083602585b296
[14/19] dt-bindings: display: st7789v: Add the edt,et028013dma panel compatible
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=893cfba7c56aa3fed34935b6fbc14a008c3b8172
[15/19] dt-bindings: display: st7789v: bound the number of Rx data lines
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9943981aa3ab7841186827fce2177279c766b6df
[16/19] drm/panel: sitronix-st7789v: Use 9 bits per spi word by default
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=6b00e72e4bee08048379a6365251b195b8a946d1
[17/19] drm/panel: sitronix-st7789v: Clarify a definition
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a368b40836e7fc4f24dbb0fcfb9dedcde1dcaa38
[18/19] drm/panel: sitronix-st7789v: Add EDT ET028013DMA panel support
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=71f739082160b5e4def3a7083dc25583cc195d04
[19/19] drm/panel: sitronix-st7789v: Check display ID
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=290cdd7959a734a0ef20ec096af7810177c4b9f8

-- 
Neil

