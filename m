Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF886CDA76
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:19:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbjC2NTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:19:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbjC2NTB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:19:01 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC125253
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:35 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id f6-20020a17090ac28600b0023b9bf9eb63so16110995pjt.5
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oygreZW8DvOSbrfdutvOrgL5JnDv+HmvzMABB2AWGTU=;
        b=PP7u3tIVudtuhiv7qFOZesk675zC0V0fkdntB0jL9iNFdXswt5umwg2LIHdEfVOiMf
         SgO+s3lzSunEphaQfvxPRajR+A37yc3RjX4w8wsdfpCpN9Mb0dFYRS/j2D2PhblCX/Hd
         Hp+2hRKUZPeHcHj96OS+0nv+9aVyjszRGvqX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oygreZW8DvOSbrfdutvOrgL5JnDv+HmvzMABB2AWGTU=;
        b=GC6tpiyg2gXgZjaMvad4c8IE3GsbN8Nacs5Z6O77gH9F491YGA7Fd3W07w+eclHdiZ
         bhx8h2o2K4Jc+klIQx/iaHqf0tvS2unowxjS8285AaE/3laP0/f2Qsi15A3h6wh8VbZI
         k3xrdnJPgMTou63OJK7eIlDjuMo+4uKGWvv48yMgIM1RwvMkZtQqqeGWTnQrgzebpkJr
         NETJb0eg44LtuRVHer4j4HsmMw6daT0OoSpAGniQPfYqpZG8vnaeHfRFmwNJg4bV7XSt
         0VUA2EwVtWcURzBvCDyiLC3JIRMYHV6FxhSVa4/1ypP28wVtfQf7VSZSlXgPQPZrajx2
         lhfg==
X-Gm-Message-State: AAQBX9ec+Gl4JKWe8l1jIyKZwJIY34x7CePsyBJV408NU0h2eEkA9O7R
        2NY7i43vT8M/etY5G3H0amY0Kg==
X-Google-Smtp-Source: AKy350YoFCLmv9UyFpcpczhcyZuQVDlALTndWJuxarm3WW0HnhzkLVyGld0li+h4fc7/eikeMMk/0A==
X-Received: by 2002:a17:90b:1d02:b0:23d:133a:62cc with SMTP id on2-20020a17090b1d0200b0023d133a62ccmr21046371pjb.17.1680095912864;
        Wed, 29 Mar 2023 06:18:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:18:32 -0700 (PDT)
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
        Jagan Teki <jagan@amarulasolutions.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v7 07/12] drm: panel: ilitek-ili9881c: Enable prepare_prev_first for k101_im2byl02
Date:   Wed, 29 Mar 2023 18:46:13 +0530
Message-Id: <20230329131615.1328366-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329131615.1328366-1-jagan@amarulasolutions.com>
References: <20230329131615.1328366-1-jagan@amarulasolutions.com>
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

Enable the drm panel prepare_prev_first flag for k101_im2byl02 panel
so-that the previous controller should be prepared first before the
prepare for the panel is called.
                   
This makes sure that the previous controller(sun6i-mipi-dsi), likely to
be a DSI host controller should be initialized to LP-11 before the panel
is powered up.

Cc: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v7:
- new patch

 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
index 1ec696adf9de..102a1df0cea0 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
@@ -42,6 +42,7 @@ struct ili9881c_desc {
 	const size_t init_length;
 	const struct drm_display_mode *mode;
 	const unsigned long mode_flags;
+	bool prepare_prev_first;
 };
 
 struct ili9881c {
@@ -891,6 +892,7 @@ static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
 
 	drm_panel_init(&ctx->panel, &dsi->dev, &ili9881c_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = ctx->desc->prepare_prev_first;
 
 	ctx->power = devm_regulator_get(&dsi->dev, "power");
 	if (IS_ERR(ctx->power))
@@ -942,6 +944,7 @@ static const struct ili9881c_desc k101_im2byl02_desc = {
 	.init_length = ARRAY_SIZE(k101_im2byl02_init),
 	.mode = &k101_im2byl02_default_mode,
 	.mode_flags = MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
+	.prepare_prev_first = true,
 };
 
 static const struct ili9881c_desc w552946aba_desc = {
-- 
2.25.1

