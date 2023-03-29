Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD35D6CDA6B
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:18:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjC2NSU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:18:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjC2NSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:18:11 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D544ED5
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:06 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id om3-20020a17090b3a8300b0023efab0e3bfso18509279pjb.3
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cv6/4Vvh1vUo/moG1pbR53z8ML2U7R1WxCNXSlwjPc4=;
        b=dq2gflaXd3rWznoyd8LJ65hUjiMDXLDqp0a5RSfLfMrNFDFrbLmoQMU43Fdj4z/O58
         EDaIilmoyGxnNIuc9fNDvnyuCQiqB/pxw2QJFWV4UHFuG+va90m/gzt+D+JUulqQ3WbF
         sW46WI7QF9fIp0ljJytY4DuJU/0fhAqSLg+iI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cv6/4Vvh1vUo/moG1pbR53z8ML2U7R1WxCNXSlwjPc4=;
        b=iCrdqLWSwyDh7GySM3dT/BLV25ye6Okjfq36jYbmVcVmvPZFkuAihKknnK2UMT+1QW
         RSBOB2n/XXbqj8CowaOKfcVTweKSVdvhvn6ctXMbRdfeFWC5iZRhlwx1qn2OX8pEHA7K
         zF8BzjVIAJk76W+isQ5+EjZZ4KycIUfsFM73B6YdJhvABVjtGzUbARS1exWiUi/QRiJ5
         xAREAs6b0x0TQ2NoKWywZRzZXCGueDu2K1iIp4QTOX0/jj+x1J1ncGhD9XjoitXYUxUT
         FINHxCxVEYmehQKfE3AbSH/pux3O+i7MbOINxaupwmB2m3ikdCU8ue4YIAMWXcmLn0RD
         bv1g==
X-Gm-Message-State: AAQBX9e5a9IImztNSiMGocYO0qBZc4+jCJjICm0yzE/qJUu5bDmA6FjU
        u+sORMTFVkXlY1CPYEtznyBc8g==
X-Google-Smtp-Source: AKy350YSAxdStQu5k6BQ8X+TusC/NXLcHiqOIQaUy4h6emrwaIZtDtwCxjujQZcpQ0YsrrHN0GERmw==
X-Received: by 2002:a17:90a:19d:b0:23f:ebf2:d3de with SMTP id 29-20020a17090a019d00b0023febf2d3demr21536210pjc.27.1680095885930;
        Wed, 29 Mar 2023 06:18:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:18:05 -0700 (PDT)
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
Subject: [PATCH v7 03/12] drm: panel: feiyang-fy07024di26a30d: Enable prepare_prev_first flag
Date:   Wed, 29 Mar 2023 18:46:09 +0530
Message-Id: <20230329131615.1328366-4-jagan@amarulasolutions.com>
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

Enable the drm panel prepare_prev_first flag for feiyang-fy07024di26a30d
so-that the previous controller should be prepared first before the
prepare for the panel is called.
       
This makes sure that the previous controller(sun6i-mipi-dsi), likely to
be a DSI host controller should be initialized to LP-11 before the panel
is powered up.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v7:
- new patch

 drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c b/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
index df493da50afe..77d66dbe01fe 100644
--- a/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
+++ b/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
@@ -198,6 +198,7 @@ static int feiyang_dsi_probe(struct mipi_dsi_device *dsi)
 
 	drm_panel_init(&ctx->panel, &dsi->dev, &feiyang_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = true;
 
 	ctx->dvdd = devm_regulator_get(&dsi->dev, "dvdd");
 	if (IS_ERR(ctx->dvdd))
-- 
2.25.1

