Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86FDF4DD623
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 09:29:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233797AbiCRIam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 04:30:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233793AbiCRIal (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 04:30:41 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1C7A264F4E
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 01:29:22 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id n15so6480154plh.2
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 01:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Wk/pqrVyJD3dZfuBlDvR3gvRx5qETAjydlq9k9fo89I=;
        b=MBv2nbtC77uuFP6FO9vF3JJunvP31eEWqLFqoiGIM3/E0+IkznfVBrTBIuGgXWfVv9
         5TBZHlNgegYmt3aqmPENYo8GhMqjeRQgRc3d1sr5+ApsSsOS0LqCL96pxslRickdXpwV
         ZNw9ExgEXTLbAqCs2ncXkhyskWqy7wd4OrW7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Wk/pqrVyJD3dZfuBlDvR3gvRx5qETAjydlq9k9fo89I=;
        b=oAQekUfXADje5t2pY6qrc1R8vcsErvKgQBy4VfSLrkM76+TtIOwiISTeWGieiYZdJx
         weJq7ViaA8iqRv93votLDNJrKNTXreJHS5R6j0vJN3izK/hAqLTe9ghKUNxqXYFIDyPk
         8HQC+zmvNvQZcDNgl47pbX3ijk7YLl6qM/5TtgufzJJgE5mbRQpqUvyCoQygCXDKYKjK
         hAsMOXSIScx1AqIBkt+YCkKax5wjO2LNjFZOhiTWAgJSEvP3MoQ7E9zoG7BEybd2SJao
         dchNhzSy5wV2UboKl+csRHqsyBuRPb56k3Wc2kELzFTvv3XcrWQ4ntfxBj8FFcdVbwSE
         3aWg==
X-Gm-Message-State: AOAM530HlDf4ZNXf6A4pkiGXOeHXqrpj3Ss95px7Wobc/zsoEsTAA7QG
        YOXLsjt/G/vWDj2X7qBrlGwkwA==
X-Google-Smtp-Source: ABdhPJxZr+WrsVRD3EBe7ULBmlgFiXmGvjfKG8gVhn0pmPIZv9TgokVPdh4o8x0PeMOmdu3PzI1t6Q==
X-Received: by 2002:a17:902:e944:b0:14e:dc4f:f099 with SMTP id b4-20020a170902e94400b0014edc4ff099mr9105752pll.161.1647592161915;
        Fri, 18 Mar 2022 01:29:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:435a:ce78:7223:1e88])
        by smtp.gmail.com with ESMTPSA id q2-20020a056a00084200b004f761a7287dsm9404044pfk.131.2022.03.18.01.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 01:29:21 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
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
Subject: [PATCH v9 3/4] drm/msm: init panel orientation property
Date:   Fri, 18 Mar 2022 15:48:24 +0800
Message-Id: <20220318074825.3359978-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220318074825.3359978-1-hsinyi@chromium.org>
References: <20220318074825.3359978-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
index 0c1b7dde377c..b5dc86ebcab9 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -627,6 +627,10 @@ struct drm_connector *msm_dsi_manager_connector_init(u8 id)
 	connector->interlace_allowed = 0;
 	connector->doublescan_allowed = 0;
 
+	ret = drm_connector_init_panel_orientation_property(connector);
+	if (ret)
+		goto fail;
+
 	drm_connector_attach_encoder(connector, msm_dsi->encoder);
 
 	ret = msm_dsi_manager_panel_init(connector, id);
-- 
2.35.1.894.gb6a874cedc-goog

