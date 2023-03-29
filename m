Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A78A6CDA75
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:19:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbjC2NTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:19:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230267AbjC2NSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:18:52 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9050A525D
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:26 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so16122750pjz.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O2tcpLeWl99rVNnc/BvvLtZEsLOgUmupjkNUsxeTVcU=;
        b=UdCHrE7/F4LUh7hQ2PmcZsobbVhzz88QVAURCF04bdOUcixNytJMVbyBR/3Rw8N12x
         MVxl5we+vHJftN0y2JnudLK2tnLlZax9Sbw+5Oot89CpJUDrLdG8XFnbedNYOmo9FXDB
         oIduaHar12yN2QSMpZ8CpRYroeFZ6UkiA65Rw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O2tcpLeWl99rVNnc/BvvLtZEsLOgUmupjkNUsxeTVcU=;
        b=Y8X3XsCQX3HHPURsfmmTgdhtMXCaBnecak/jkQF1k1xhtRXsgpAWDLuhcyAuk9TpP/
         mrS41DMFl0FHRGnFluBd1UZmR+J0mWMLyhWVPJxJ4NAo4rCQdQyBRKSV0EssIkOSoESp
         XSF8239xMnAX8PYF+10a2Tt/BpwZkBOKI9Jk+RbHC3C+rNFzum0qMikmV7XIlxWsNdOu
         nxTMJY6dclapXX4Cur8IQ2+EKu/ZzrgY2J/YDecj2zz3uHLhOE0SjVyMLO0KzMfIyeud
         1Yhm/nvyUt0isN26QipC9DTQKNK9THNiDaEmIbYgj+K4zvBFIYd+nhbUb1v5eb+wdBi9
         7XeQ==
X-Gm-Message-State: AAQBX9d9tJjAKOkqyWi4N/WQRGAOCJfVTkmIA5fjRvY1IoYa5KDf12fi
        GC1qiNEvAp8rd9qNWTydnEiOcg==
X-Google-Smtp-Source: AKy350aezuMjKTTjFyH6/gyzvMVWaT+9pmv5Ms2TGgIoeYwTtKj6D8+d21S+PexByXuy9cf7MOK6Yw==
X-Received: by 2002:a17:90b:4acf:b0:236:99c4:6096 with SMTP id mh15-20020a17090b4acf00b0023699c46096mr20503031pjb.35.1680095905750;
        Wed, 29 Mar 2023 06:18:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:18:25 -0700 (PDT)
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
Subject: [PATCH v7 06/12] drm: panel: feixin-k101-im2ba02: Enable prepare_prev_first flag
Date:   Wed, 29 Mar 2023 18:46:12 +0530
Message-Id: <20230329131615.1328366-7-jagan@amarulasolutions.com>
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

Enable the drm panel prepare_prev_first flag for feixin-k101-im2ba02
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

 drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c b/drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c
index 76572c922983..77c936496eef 100644
--- a/drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c
+++ b/drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c
@@ -466,6 +466,7 @@ static int k101_im2ba02_dsi_probe(struct mipi_dsi_device *dsi)
 
 	drm_panel_init(&ctx->panel, &dsi->dev, &k101_im2ba02_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = true;
 
 	ret = drm_panel_of_backlight(&ctx->panel);
 	if (ret)
-- 
2.25.1

