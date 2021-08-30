Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9963E3FAFDA
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 04:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236226AbhH3Cj7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 22:39:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236164AbhH3Cj6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 22:39:58 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF390C0617AD
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 19:39:02 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id mw10-20020a17090b4d0a00b0017b59213831so12832229pjb.0
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 19:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zVxaxVLkHd1OjVLGEtEzeZhPd4oQXGRtOBcdwaIOQoo=;
        b=imvcqNYmCLGVlCEjlbxiQ+Wkr4mmvwsu4AOWQiYZzRlzUIwaCaZweBEvgJDCSSBWqO
         e2qu/yzRIGsbJy7UC3eaVSvx74Xh34sMFJsveb1wav80h/u5K5dNGOIJnVHjIJfqvkgc
         xFBLVl4c8uuodWKhlUYi4zLsVIE6K405ceEaz0rBjt7/khq1Axz0I6xbI2nWzxP9IHUL
         vzF8a6/j39SpA+v5sxzrDvYdMrCMV0azPKkc9J+IBiuJVHkMF4DzCpRPcMEUYMWgAB4p
         TlMG8C38J4Fc/3xMe73wPGH2DNtM0+mfvH+Hy00gOQjusHsh/3PRLscFl/1YRECyX7Y4
         DkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zVxaxVLkHd1OjVLGEtEzeZhPd4oQXGRtOBcdwaIOQoo=;
        b=qCFtbTuM652428hoAVIawOutyghxe3fF+/nWwaDQYSQwMgZB9iwDro6UEPAj73W1Gz
         pmsbPPsqe5xoqOUe2jHhPEGs11KlxPKO59+C/fcm2sPkHCtf3flmNfK7A2yWahvxJrHR
         uYSFLnC6Eu9oRoDcNv6HUuATPx+GEqb1BFuOWKQmBZaqK1b5mcgjiq3oXJ0faXIJ7G8B
         Scdmc7RmccWxVVmUEQHRFt307o0S/mFXAMiGAgr9L7guXVfwVlsJMgSeKN0+Arc6cqz0
         BMhj9fD5YHvTxUOxp+UTpfsEsfnVOBSCWnDOY0AjsUvE7GlxLAnOaE0lSH3uGMu++bHO
         xcMg==
X-Gm-Message-State: AOAM530x+KoH+SPnlJ9HtgxEaCv88IRFbpbi+Mdq2DXHdzvyoiAk4Dn4
        byBSFyWRSuSEJCOOEDV/RfGHdA==
X-Google-Smtp-Source: ABdhPJw3Nqwng0ECCd2lIzkvP/08EVDGHxdPye2GDNmSRH5KIBwkBeuFFGsX3XVVY6fq/y8iwnx5Fw==
X-Received: by 2002:a17:902:8a96:b0:138:c162:ff62 with SMTP id p22-20020a1709028a9600b00138c162ff62mr6354503plo.43.1630291142438;
        Sun, 29 Aug 2021 19:39:02 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id g13sm906839pfi.176.2021.08.29.19.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 19:39:02 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>,
        Douglas Anderson <dianders@chromium.org>
Subject: [v4 1/4] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Mon, 30 Aug 2021 10:38:46 +0800
Message-Id: <20210830023849.258839-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210830023849.258839-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210830023849.258839-1-yangcong5@huaqin.corp-partner.google.com>
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
Reviewed-by: Douglas Anderson <dianders@chromium.org>
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

