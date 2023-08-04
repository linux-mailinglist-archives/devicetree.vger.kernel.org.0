Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85FB976FFD1
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 13:58:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbjHDL6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 07:58:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjHDL6d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 07:58:33 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA257128
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 04:58:31 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-317c1845a07so1585484f8f.2
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 04:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691150310; x=1691755110;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=roPCqYVq5FoKhSTLB3DxuQDru8Tg95QBFx3xWNHBOBc=;
        b=vdFbzy+iPivOypCOS2MY/xP86T/mvKswug/NCUWqWWrxiMgBRbE7h3uPn5iTHbYAFK
         ciaS8/uhuK/UUCFMvQblvz2c6hwFA0GJSYLeQjmJK0kDMcADFsLArjJeLaiUH+H4jlHY
         DIrtpf1+USs77uLSO9QpWe6psg/bWLa1RMOlI7MRbPyQqKej/FxV7Ctnv4EmQlWFPwBA
         1zwiHA+GzVG+OKOxseTLKQPkYuUpJr//SDAdN7g3hb4uF0CNFZUhQr3L9YpFErWmUqkD
         oj35587kSsXhXKSkBuW5kfuECxr/zZvjlKW0N28ETKGB8cUc7mHt2iNQ6Lg1gdZ7byRt
         JKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691150310; x=1691755110;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=roPCqYVq5FoKhSTLB3DxuQDru8Tg95QBFx3xWNHBOBc=;
        b=kVN6ogAItYTobbYhKC1piefVyreZpBeo0uH8RhjH05/hKu7KYd3dQ1KYmmk48/KoFT
         AqfVd/ecV2pTphKy/elxLTWWRfsbrhY3LvfohARE3W577rxF7eMUxWF2jEgQoSEDxPNC
         CPX/O4FJMQd4a8W7av4liCnsD1MHM+mvP6jeSPfD/4Jr3RMxZRf02eqVnxzKjularhk1
         nBe4GgfLK0jjVyGIYP9qEKh3QEdoMGS7jfFLu4UW5CVoUKtdWA7VMgBx/PH0MHeAP/d8
         G43OvCzVsBLgssgXhUSsB1H1Furi6GuwwdYa71R4m1+haE+hewW+7klY26LO46ciuqKy
         6aAQ==
X-Gm-Message-State: AOJu0YyZ+btiFiLOUK/EvvzlunUma3tU23978ek0/wiIyTPCnd+G/Frh
        LrVdDJCgdbDPDKw3tHZ4nZ7n+Q==
X-Google-Smtp-Source: AGHT+IHdmAs57eM0Rz7KVhiySNQUuzLMCFVU6AXXyP/fH2yGgk5lSYGIfz3aoQtQCBNs8nXrYFi6OQ==
X-Received: by 2002:adf:f8cb:0:b0:30e:5bd0:21a2 with SMTP id f11-20020adff8cb000000b0030e5bd021a2mr1278153wrq.52.1691150310046;
        Fri, 04 Aug 2023 04:58:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id n1-20020a5d67c1000000b0031134bcdacdsm2358350wrw.42.2023.08.04.04.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 04:58:29 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Gerald Loacker <gerald.loacker@wolfvision.net>,
        Michael Riesch <michael.riesch@wolfvision.net>
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20230718-feature-st7789v-v3-0-157d68fb63e2@wolfvision.net>
References: <20230718-feature-st7789v-v3-0-157d68fb63e2@wolfvision.net>
Subject: Re: [PATCH v3 0/3] drm/panel: sitronix-st7789v: add panel
 orientation support
Message-Id: <169115030877.3531293.12258712491460228869.b4-ty@linaro.org>
Date:   Fri, 04 Aug 2023 13:58:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 04 Aug 2023 13:23:07 +0200, Michael Riesch wrote:
> This series adds support for orientation specification in the device
> tree to the Sitronix ST7789V panel driver.
> 
> This is can be seen as reduced version of [0] (some things of [0] have
> been implemented in more general fashion in the scope of [1], other
> things have been rejected).
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] drm/panel: sitronix-st7789v: fix indentation in drm_panel_funcs
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a238b5ee39e3d3581ec826cdb7b604adca37b5ea
[2/3] drm/panel: sitronix-st7789v: add panel orientation support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=b27c0f6d208d6ba269f184ed6f92c6a9908866e6
[3/3] dt-bindings: display: add rotation property to sitronix,st7789v
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e83172ec548d420f2e0b01e80a9a8cbae39bbe29

-- 
Neil

