Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 113E03F19B4
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 14:49:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239624AbhHSMtw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 08:49:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239655AbhHSMtc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 08:49:32 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAACDC061757
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:48:56 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id t1so5804070pgv.3
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SUMawJHmaVN55KeOYmXXMpF4IBtsM0ibJxP9InePT3U=;
        b=poi/3POstQaDTOLIjjaBy40eED2lQNrvLtJS2EowIBpj7DvkC3tlyNdSGuuvq3/oMJ
         lkBiSiJDYLSLNwojo2+coMAdB4SLFsFwXAUgp4uROKUrq+IstpFpUOI6AjFdJkt7ohwr
         cqbUNTVAyztPQaAbdLkfvtAjdu2a4p3v07UjkPFu76DyuyMPaSG0aon/8letuf3jfn+f
         Ip4SDIYXwWieMLmVUlkBwNuwhRlm1RLOhFH3zdNcYyh8rKbiH+lqBhpYZITStAoUoQlB
         tjcb9F/2KJKYNAYwf/vA2PUnX936ZH7RytCNJHrq1ymTaMwALM/xAxkJXz3bVSTT+ofi
         44Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SUMawJHmaVN55KeOYmXXMpF4IBtsM0ibJxP9InePT3U=;
        b=cDpruv+6yAZ8cpAfn1EEGcvPySNNgvWckXk+WCeL8tcRl4W0glqeUqmph9tHDyp+FK
         uxQS0u1WAk2aUCKcFlYmtv/1e076Tbo8MFP5tE9622o5o6evW6rxjiVhmr33Z/S+J06H
         FNOmEUN+8DkbaRI0KbZuRTqLu/81NndQa9QZ+eniYlBGUhmqVx7pujD0Ve6LRS0PAKYi
         ERCVLb6XXBV0gn6BuPxJMMjwLCA0w6DgDDH58SPgb6Giks/2hBw8/3Ql6b1Gtf70bmx4
         qZurCC9hA+jSt0E0tFmh+dc0vArX68+0Ou98lC+pb0uyAXTzoa2s3vvIQTey/OBQKsNG
         AsJg==
X-Gm-Message-State: AOAM532Lsm5V8l0XhPRZI6tKbGXWvez+GKHrob0qOwuzOMEylQZBbhQj
        S2V1FOIjSEFQ+bNIqugxqIMA9E+grfOO5f0F
X-Google-Smtp-Source: ABdhPJz50PnVrajJNlk81GzmU6h//wK7jfZ2Wgq/rpbrQE/iZM8d66AxL3ZK//Oc0pzDe2AO3ccVkg==
X-Received: by 2002:a65:6287:: with SMTP id f7mr13839893pgv.444.1629377336400;
        Thu, 19 Aug 2021 05:48:56 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id c11sm3137210pji.24.2021.08.19.05.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 05:48:56 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 1/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Thu, 19 Aug 2021 20:48:43 +0800
Message-Id: <20210819124844.12424-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The auo,b101uan08.3 panel (already supported by this driver) has
a 3.3V rail that needs to be turned on. For previous users of
this panel this voltage was directly output by pmic. On a new
user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
to turn the 3.3V rail on. Add support in the driver for this.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index db9d0b86d542..9a644433629e 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -45,6 +45,7 @@ struct boe_panel {
 	const struct panel_desc *desc;
 
 	enum drm_panel_orientation orientation;
+	struct regulator *pp3300;
 	struct regulator *pp1800;
 	struct regulator *avee;
 	struct regulator *avdd;
@@ -511,6 +512,7 @@ static int boe_panel_unprepare(struct drm_panel *panel)
 		gpiod_set_value(boe->enable_gpio, 0);
 		usleep_range(5000, 7000);
 		regulator_disable(boe->pp1800);
+		regulator_disable(boe->pp3300);
 	} else {
 		gpiod_set_value(boe->enable_gpio, 0);
 		usleep_range(500, 1000);
@@ -518,6 +520,7 @@ static int boe_panel_unprepare(struct drm_panel *panel)
 		regulator_disable(boe->avdd);
 		usleep_range(5000, 7000);
 		regulator_disable(boe->pp1800);
+		regulator_disable(boe->pp3300);
 	}
 
 	boe->prepared = false;
@@ -536,6 +539,10 @@ static int boe_panel_prepare(struct drm_panel *panel)
 	gpiod_set_value(boe->enable_gpio, 0);
 	usleep_range(1000, 1500);
 
+	ret = regulator_enable(boe->pp3300);
+	if (ret < 0)
+		return ret;
+
 	ret = regulator_enable(boe->pp1800);
 	if (ret < 0)
 		return ret;
@@ -767,6 +774,10 @@ static int boe_panel_add(struct boe_panel *boe)
 	if (IS_ERR(boe->avee))
 		return PTR_ERR(boe->avee);
 
+	boe->pp3300 = devm_regulator_get(dev, "pp3300");
+	if (IS_ERR(boe->pp3300))
+		return PTR_ERR(boe->pp3300);
+
 	boe->pp1800 = devm_regulator_get(dev, "pp1800");
 	if (IS_ERR(boe->pp1800))
 		return PTR_ERR(boe->pp1800);
-- 
2.25.1

