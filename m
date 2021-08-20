Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB313F26D6
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 08:33:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238250AbhHTGe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 02:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238276AbhHTGe1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 02:34:27 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D3D5C061756
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:33:50 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id x16so7758904pfh.2
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SUMawJHmaVN55KeOYmXXMpF4IBtsM0ibJxP9InePT3U=;
        b=1WBfuWrREdM+7g0ve2l8J0IuXQeTVkexBXa+xLhtvT+qAzaxS29O0QUHT/We0rw0cY
         5rqQ3zIi0kN0hhCEref7SyxTvgAKnQcmzXSWpOa2Wf1FvIUYLlHKqT0snHeoJK+pvU6/
         j2M33NOl5108cFocFXpBH90NAl95yCe/wdsdtf9A9tZo2vBT+jQO5qfuVSMcRCWjcnxl
         jnFUvQfnApsQYpaG0uAri+QvQPerWbNcWEvRPqezDNm+lA44MLvKPVmLPY93fIyU+OOo
         d9gk7rB6NldYD+UscJWK3YxL0ycOFVNKigCuMBqrAmtCDM0C34KLWl6mQ2LiOHbWqOYH
         5q1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SUMawJHmaVN55KeOYmXXMpF4IBtsM0ibJxP9InePT3U=;
        b=tneWT+qIbrc6iQjdUSaRUBSqfu4V93OB/jk9g54uOMkGNp+NLwfMYxVbWrVbkuPXIP
         l3suTagccICREeLzOWTWjh0inMYx1WNJ7e2gzRD/G3OtQfleamQehJJp/3ervvz4JuZt
         TWvy+NJn6Lc51FWbqG/G4lbdYjgmk+4MQeIlqqN0o+VDubZCUxzVtk5lrn0LNibIPgWP
         6G/QzYiRoDvhtVhkAupCLfYtvcuuIArBBogNQ7lBI9Pfpz4Zc07Q/3zCi3Wj8eaSybLS
         0SFmEEKC19HIjJgZPMwL6j9Gr/xpGXfHAf13VnkwJGAE94Lzqabo/kBQH8kArIQ/c3p4
         pdgg==
X-Gm-Message-State: AOAM53274BGZiD21RmrKqVFaxwm/2V0P5hJdpSHCVhnsQnGpWJbCpOjo
        XydYYBgg13bIW+PCWi+GzVHa+g==
X-Google-Smtp-Source: ABdhPJyeplS1JQrqCd+BTgzDBT/T3Dw66q6PAfn9z2Sfo3+zoCwlUQDIFzlO/a3WJubkCwjZv+HV6Q==
X-Received: by 2002:a63:556:: with SMTP id 83mr17053535pgf.1.1629441229622;
        Thu, 19 Aug 2021 23:33:49 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id a10sm5612160pfn.48.2021.08.19.23.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 23:33:49 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v2 1/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Fri, 20 Aug 2021 14:33:36 +0800
Message-Id: <20210820063337.44580-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210820063337.44580-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
 <20210820063337.44580-1-yangcong5@huaqin.corp-partner.google.com>
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

