Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70E7F6CDA7D
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbjC2NUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:20:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbjC2NUC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:20:02 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A90084685
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:19:47 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id o6-20020a17090a9f8600b0023f32869993so18531114pjp.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6Zop59KiDms2RJ1oWf1wfATSRqRH4OJms0tUCu66Ds=;
        b=QQ4mv0hzsvmkqMfZ15yfLZhf/wl79O4+d+NBuatGYLK4BGPk9Np/s4ckoMZRB3LZXo
         I3dscvMrxXCbTMtb7/FDV05iLJ2rUvj36gPeS7d0vqmmPQeVd2WB7IiqF1xr4PDKBwF2
         i3aV50EnDgs+bsKD5ZfaHeeybIOgqGkOc1ghc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u6Zop59KiDms2RJ1oWf1wfATSRqRH4OJms0tUCu66Ds=;
        b=IysfnB5whF/YgD1etOMm0JtGhs60Y8f577YFGmLA9XyEAz9/45oFeu+nrDDSmSotKZ
         QJVsrabboexvfIYICWKRX+/eYXhZTbaLf1weGVzu9n8+B+laZjIiZ1oL8kE8HStb2GKu
         X55uw5cGoFHSqQln7BcGqbKiRDzv+sfW7yCjoGoAvpM5t5+OEStrzaoR9U0B0IyxWzU0
         o9wFIAjCaKmFnQVJ3jsnsd0lF4yJCYIVDxylotzESDXX4ytC0qVmKgIjgHuC9IJjL+Uh
         NeJE1qOy5bKE20+6Zb4Q530+ntNjfEIwV3kg1nRZUyd2NbUZuYbNNJFDc4iKOdDz+AT6
         +k1w==
X-Gm-Message-State: AAQBX9c8AmBY+QD4ihic/IuQEwc49qKQZ0pztIikPBx9rUkPaYzMwq4q
        rvv5f6QEreemnDrgRKlka4locg==
X-Google-Smtp-Source: AKy350bJSgXAsk9heZqbdTPpDv1tZiTFnee58NDrLnd5uUac7ubukuyOG3UH7pLKrlBz3vrhjtw4ZQ==
X-Received: by 2002:a17:902:d2d2:b0:1a0:6ed9:f9d0 with SMTP id n18-20020a170902d2d200b001a06ed9f9d0mr24347448plc.68.1680095987116;
        Wed, 29 Mar 2023 06:19:47 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902854900b0019c90f8c831sm22949389plo.242.2023.03.29.06.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:19:46 -0700 (PDT)
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
Subject: [PATCH v7 11/12] drm/bridge: Document bridge init order with enable_next_first
Date:   Wed, 29 Mar 2023 18:49:28 +0530
Message-Id: <20230329131929.1328612-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329131929.1328612-1-jagan@amarulasolutions.com>
References: <20230329131929.1328612-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to switch HS mode properly by DSI host, the DSI sink has to
send the MIPI-DCS commands first before the DSI host switches to HS
mode.

This behavior requires a bridge init alter in @enable and @disable
function calls with the help of @enable_next_first.

Document the affected bridge init order with a proper explanation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v7:
- new patch

 drivers/gpu/drm/drm_bridge.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index cdc2669b3512..3c6c9937537a 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -190,6 +190,21 @@
  * Ultra Low Power State (ULPS) is not explicitly supported by DRM. If
  * implemented, it therefore needs to be handled entirely within the DSI Host
  * driver.
+ *
+ * DSI sink devices typically send the MIPI-DCS commands to the DSI host via
+ * general MIPI_DSI_DCS read and write API. The classical DSI sequence
+ * mentioned that the DSI host receives MIPI-DCS commands from the DSI sink
+ * first in order to switch HS mode properly. Once the DSI host switches to
+ * HS mode any MIPI-DCS commands from the DSI sink are unfunctional.
+ *
+ * DSI sink uses the @enable function to send the MIPI-DCS commands. In a
+ * typical DSI host, sink pipeline the @enable call chain start with the
+ * DSI host, and then the DSI sink which is the "wrong" order as DSI host
+ * @enable is called and switched to HS mode before DSI sink @enable. If
+ * the DSI host enables with the @enable_next_first flag then the @enable
+ * for the DSI sink will be called first before the @enable of the DSI host.
+ * This alter bridge init order makes sure that the MIPI-DCS commands send
+ * first and then switch to the HS mode properly by the DSI host.
  */
 
 static DEFINE_MUTEX(bridge_lock);
-- 
2.25.1

