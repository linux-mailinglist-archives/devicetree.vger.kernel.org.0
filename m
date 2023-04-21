Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8BA76EAE34
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 17:43:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbjDUPnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 11:43:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbjDUPna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 11:43:30 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04645C14D
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 08:43:29 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f19323259dso7967555e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 08:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1682091807; x=1684683807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sMEnXGj3u+SXU62VeCg+ELIQZXSDTJJuwOrlP/w5GEs=;
        b=bdUvv3JfOrVw/zILmIes6bmwuMa+wnr3MHyk5xmXizhrYrELmhf88wjSE2cmqquS3a
         fWkYFNsTAITXrjT18M9bgM1Dh+1PDe5JLBYYdc01bsQz4Ic1bTUPxA2yME+bnBil0/zO
         vKvbP/OAgkv4PS4aibBMZF8S757anBEQEaIrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682091807; x=1684683807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sMEnXGj3u+SXU62VeCg+ELIQZXSDTJJuwOrlP/w5GEs=;
        b=Jxxx/B3nd9PtRRkbKGdzgGODPZRZZ78o7I6M/+M1auedaD9/WyhgPus83HNLxvdsht
         vHTIUFOYEK6j03dKTXjLX5r8hestZsTPnbonVN0+54GVUKEUVjUgVWQlQ35o0Rqne9EI
         SB27OkN/IjcemqOudXSmTGD5wzZeA+G/uWmuja+0Z3hx40kzPcsDECJ6312jqegfwpCO
         QOThki4+AY8+XaN0ooQsf1W9em3fSZM16HBRQ4Vz6f/H4OfRZfKueH/lPiE/Xeu8FDBP
         VCHSQhoAhojrrM11h/PgJnGRRCdj84M+FDDvpfTUEv/Y3Gcxd4571Hh4Zj3KGwq4epQE
         bgaw==
X-Gm-Message-State: AAQBX9czGp/T3vwYiulT7SpRjHZ5A3DFDO1hVWpNQbMZJRGeKEbt5IRy
        a7U3FhDOtj4y91QJ3qTdWJdPpQ==
X-Google-Smtp-Source: AKy350YnSQtq123y2pQ09gEzQfB5N3RkWCbeSE+y7DhwsFraKIM8xPzW/lvSXmN6tH+XvnykN9Qt2w==
X-Received: by 2002:a7b:cb47:0:b0:3f0:967e:2cfb with SMTP id v7-20020a7bcb47000000b003f0967e2cfbmr2410174wmj.36.1682091807382;
        Fri, 21 Apr 2023 08:43:27 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([37.159.127.129])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5552000000b002e51195a3e2sm4651609wrw.79.2023.04.21.08.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 08:43:26 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Adam Ford <aford173@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Marek Vasut <marex@denx.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/7] add displays support for bsh-smm-s2/pro boards
Date:   Fri, 21 Apr 2023 17:43:01 +0200
Message-Id: <20230421154308.527128-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds drivers for the displays used by bsh-smm-s2/pro boards.
It has been tested applying it on top of these patches:

Adam Ford <aford173@gmail.com> (6)
  arm64: dts: imx8mn: Add display peripherals
  drm: bridge: samsung-dsim: Dynamically configure DPHY timing
  drm: bridge: samsung-dsim: Fetch pll-clock-frequency automatically
  drm: bridge: samsung-dsim: Fix PMS Calculator on imx8m[mnp]
  drm: bridge: samsung-dsim: Support non-burst mode
  drm: bridge: samsung-dsim: Support multi-lane calculations

Series "drm: Add Samsung MIPI DSIM bridge" (https://lwn.net/Articles/925754/)
Marek Vasut <marex@denx.de> (1):
0adce1be8dc0 drm: bridge: samsung-dsim: Add i.MX8M Plus support

Jagan Teki <jagan@amarulasolutions.com> (9):
0a98655a08cc dt-bindings: display: exynos: dsim: Add NXP i.MX8M Plus support
b25b5384e27d drm: bridge: samsung-dsim: Add i.MX8M Mini/Nano support
ee83295c036d dt-bindings: display: exynos: dsim: Add NXP i.MX8M Mini/Nano support
f18605b9b682 drm: bridge: Generalize Exynos-DSI driver into a Samsung DSIM bridge
8ab12dbce060 drm: exynos: dsi: Add host helper for te_irq_handler
c37c8e89af38 drm: exynos: dsi: Consolidate component and bridge
11276ea9964a drm: exynos: dsi: Add atomic_get_input_bus_fmts
2fe8a5f92c08 drm: exynos: dsi: Add input_bus_flags
5d79cf173994 drm: exynos: dsi: Add atomic check

Marek Szyprowski <m.szyprowski@samsung.com> (1):
b9ad1112014d drm: exynos: dsi: Handle proper host initialization

Jagan Teki <jagan@amarulasolutions.com> (5):
93b2ce0c329d drm: exynos: dsi: Introduce hw_type platform data
83d704dc0cf6 drm: exynos: dsi: Add platform PLL_P (PMS_P) offset
f25b304ea948 drm: exynos: dsi: Mark PHY as optional
6c59da2ae519 drm: exynos: dsi: Lookup OF-graph or Child node devices
2186e15100de drm: exynos: dsi: Drop explicit call to bridge detach



Michael Trimarchi (7):
  dt-bindings: display: panel: Add synaptics r63353 panel controller
  drm/panel: Add Synaptics R63353 panel driver
  arm64: dts: imx8mn-bsh-smm-s2/pro: add display setup
  dt-bindings: display: panel: Add Ilitek ili9805 panel controller
  drm/panel: Add Ilitek ILI9805 panel driver
  dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
  drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 panel

 .../display/panel/ilitek,ili9805.yaml         |  61 +++
 .../display/panel/synaptics,r63353.yaml       |  58 +++
 MAINTAINERS                                   |  12 +
 .../freescale/imx8mn-bsh-smm-s2-common.dtsi   |   1 +
 .../freescale/imx8mn-bsh-smm-s2-display.dtsi  | 111 +++++
 drivers/gpu/drm/panel/Kconfig                 |  16 +
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-ilitek-ili9805.c  | 418 ++++++++++++++++++
 .../gpu/drm/panel/panel-synaptics-r63353.c    | 376 ++++++++++++++++
 9 files changed, 1055 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9805.c
 create mode 100644 drivers/gpu/drm/panel/panel-synaptics-r63353.c

-- 
2.32.0

