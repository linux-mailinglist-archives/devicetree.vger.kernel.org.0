Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2F2A5376C3
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 10:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233533AbiE3ITs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 04:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233571AbiE3ITf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 04:19:35 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CDA6D1A9
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:34 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id d12-20020a17090abf8c00b001e2eb431ce4so2465788pjs.1
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 01:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DngeuiJs1gkZdqFRMCVvHoL93k8N7yG0MeWJK9ZEK3k=;
        b=IqL1Mg8WnZDtXb3yyaSQRaeibgzLzDCSjzxs2JJ81/LU/mT9HMq1woD+CE/FphDXTH
         GnabHy2Ip2oVOYcPjiQ1WwYT2VtY4CQG3boKYbVWHxYOBjBrj1GEcBMoB1z1qeA4GCV1
         8WB0hTYwZDmiOgIt5tnLdJsOq3i7hVAzVDu9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DngeuiJs1gkZdqFRMCVvHoL93k8N7yG0MeWJK9ZEK3k=;
        b=B8aesJAXXLVSLlzeT4Y2VdTDtE2hNXuhpojrjucsk77XqDk4FIJPbHN5L/0EEl//RY
         9KWhd2jm0jdPgPPttnxcCT/vH7vfFtB6M1F+2cH4tLF2XlB+GNQbDdViNOgwTu/7NRMV
         4O9Vuvqq4HeQ1/IwELsibGZUmHWT6MWpYdd37oIW5/r4kuK/d3pTEcbo5r+UpzXyT074
         l1Nxy/xMDIwX28zkt84PWKsMecPB9zJfKy40mDhw3ziRtYHvVce0o9SddVaBuSoYLP56
         AdtifaOPCt2PSGeJU1v3BQWlukgOgL3lAUGsqdNGejhMm9A6xCZTOVPGbCfveCEkQSDJ
         ZtJw==
X-Gm-Message-State: AOAM531gCz68mGe5AQykAPAm902EO53mQoSPhYyVbgME33WRDzW5WKQz
        7Le2ZY/3l1MLLWJyNRFQ4HY1dg==
X-Google-Smtp-Source: ABdhPJwMisSwwoUx/1CnfaxFxra5CHlr+0BrN6Jv+hKSLKGk6/BuFuOZ6hgtXERtcSsiW+uir2UNtw==
X-Received: by 2002:a17:90a:6941:b0:1e2:f37a:f889 with SMTP id j1-20020a17090a694100b001e2f37af889mr5209221pjm.160.1653898773678;
        Mon, 30 May 2022 01:19:33 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ae1c:3d63:abec:1097])
        by smtp.gmail.com with ESMTPSA id m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 01:19:33 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Simon Ser <contact@emersion.fr>,
        Harry Wentland <harry.wentland@amd.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Emil Velikov <emil.l.velikov@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>
Subject: [PATCH v10 3/4] drm/msm: init panel orientation property
Date:   Mon, 30 May 2022 16:19:09 +0800
Message-Id: <20220530081910.3947168-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220530081910.3947168-1-hsinyi@chromium.org>
References: <20220530081910.3947168-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Init panel orientation property after connector is initialized. Let the
panel driver decides the orientation value later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index cb84d185d73a..16ad3d8fab4d 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -669,6 +669,10 @@ struct drm_connector *msm_dsi_manager_connector_init(u8 id)
 	connector->interlace_allowed = 0;
 	connector->doublescan_allowed = 0;
 
+	ret = drm_connector_init_panel_orientation_property(connector);
+	if (ret)
+		goto fail;
+
 	drm_connector_attach_encoder(connector, msm_dsi->encoder);
 
 	ret = msm_dsi_manager_panel_init(connector, id);
-- 
2.36.1.124.g0e6072fb45-goog

