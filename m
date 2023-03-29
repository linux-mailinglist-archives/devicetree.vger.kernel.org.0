Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 063E66CDA4D
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbjC2NRx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:17:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230161AbjC2NRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:17:52 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE23469E
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:17:44 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id o11so14897282ple.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bW/AgagaO6ywAMmPlVyMdeYGY+JgIPY1xvCW5wCjozk=;
        b=SUmEEgfMa1/1RR4qutY82AyNdat0Bllb1eN7+a6A088ScN6DJBLsCYH1YiyH3VqCnj
         w++Z6YNI0jTkzE8QucWMf1UGrJIbTa3mIYfiy8CfFvRTrrebusfaT+fvg61wOk1T6dTg
         KyXNE+3AHEvqqNDpBVEtFXfGPXskZNINJ/rdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bW/AgagaO6ywAMmPlVyMdeYGY+JgIPY1xvCW5wCjozk=;
        b=iXb/sqFTSGk0n8EegxJda9JjvS6U33CAqQ/Z189FfwIlhG4DlK7Vt6IZ0C156Hi5Pj
         gW/bwanUgb0VsJjMYT4fA5zrSzIR9mciBIUWT/cXIStljGk3KzuK/tMoBu3nOpT6UKLq
         9/2/u28upZbtHGbW9iXyT9RmOmiEd09RiSAF6ST8gIb4COJHPnvQC0BaoElez6t5lOqj
         9tfhZT0ObV9kJOEBD1iTqvExOvRxcZ9tkoeXwy66lT8gDl4eptwdLU5VVteEewPPnVuW
         wm11yIwoFLroatVhWXIqXjckLOAEXIASAxUf2TJJgY+VEKoHFFpuZHEnSURPGh0djexX
         E8jA==
X-Gm-Message-State: AO0yUKXjblzF8ZyaBjTv46HJ1MrwswcV8FT3EV0L3b7W+FikIYi1/4FL
        ZVd/TeRWYWVCVhZEwuHtCl7bGzB42zu7+456ksrWBA==
X-Google-Smtp-Source: AKy350ZWJmSE8KO6Fn6dPzW0B6CF5nzLIVuiZRWRnVV1+G1WuZ3oveCjNMqcyORie403mxNUrMMYOQ==
X-Received: by 2002:a17:90b:314b:b0:23f:1210:cea4 with SMTP id ip11-20020a17090b314b00b0023f1210cea4mr20998965pjb.18.1680095864035;
        Wed, 29 Mar 2023 06:17:44 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:17:43 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v7 00/12] drm: sun4i: Convert Allwinner DSI to bridge 
Date:   Wed, 29 Mar 2023 18:46:06 +0530
Message-Id: <20230329131615.1328366-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is v7 revision of converting Allwinner DSI to brige driver.

Patch 1 and 2 implements drmm_of_dsi_get_bridge which is required to
lookup the DSI sink device represented either child or OF-graph port or
ports node. This is essential as not to break the existing bindings
which indeed uses child node represention for DSI sink devices.

Patch 3 to 7 enables the prepare_prev_first flag for essential panels
which effects sun6i-mipi-dsi host init order sequencing.

Patch 8 and 9 added endpoint 0 to dsi_in_tcon0 of A33 and A64 which is
required for I2C-Configured bridges to represent.

Patch 10 and 11 implements enable_next_first flag, which is essential
If the DSI host enables with the @enable_next_first flag then the
@enable for the DSI sink will be called first before the @enable of
the DSI host. This alter bridge init order makes sure that the MIPI-DCS
commands send first and then switch to the HS mode properly by DSI host.

Patch 12 is final patch bridge conversion.

Series has been tested in DSI Panel, DSI Bridge and I2C-Configured DSI
Bridge.

v6:
https://lore.kernel.org/all/20211210111711.2072660-1-jagan@amarulasolutions.com/
v5:
https://lore.kernel.org/all/20211122065223.88059-4-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (12):
  drm: of: Lookup if child node has DSI panel or bridge
  drm: bridge: panel: Implement drmm_of_dsi_get_bridge helper
  drm: panel: feiyang-fy07024di26a30d: Enable prepare_prev_first flag
  drm: panel: sitronix-st7701: Enable prepare_prev_first for ts8550b
  drm: panel: sitronix-st7703: Enable prepare_prev_first for xbd599
  drm: panel: feixin-k101-im2ba02: Enable prepare_prev_first flag
  drm: panel: ilitek-ili9881c: Enable prepare_prev_first for k101_im2byl02
  ARM: dts: sun8i: a33: Add endpoint@0 to dsi_in_tcon0
  arm64: dts: rockchip: a64: Add endpoint@0 to dsi_in_tcon0
  drm/bridge: Implement enable_next_first to alter bridge init order
  drm/bridge: Document bridge init order with enable_next_first
  drm: sun4: dsi: Convert to bridge driver

 arch/arm/boot/dts/sun8i-a33.dtsi              |   6 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   6 +-
 drivers/gpu/drm/bridge/panel.c                |  34 ++++
 drivers/gpu/drm/drm_bridge.c                  | 186 +++++++++++++++---
 drivers/gpu/drm/drm_of.c                      | 112 +++++++++--
 .../gpu/drm/panel/panel-feixin-k101-im2ba02.c |   1 +
 .../drm/panel/panel-feiyang-fy07024di26a30d.c |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c |   3 +
 drivers/gpu/drm/panel/panel-sitronix-st7701.c |   3 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c |   3 +
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        | 143 ++++++--------
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |  10 +-
 include/drm/drm_bridge.h                      |  18 ++
 include/drm/drm_of.h                          |  12 ++
 14 files changed, 399 insertions(+), 139 deletions(-)

-- 
2.25.1

