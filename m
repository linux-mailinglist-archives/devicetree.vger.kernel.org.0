Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89C523F1631
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 11:30:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbhHSJbe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 05:31:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234266AbhHSJbd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 05:31:33 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9938FC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 02:30:57 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id a5so3573145plh.5
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 02:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SUMawJHmaVN55KeOYmXXMpF4IBtsM0ibJxP9InePT3U=;
        b=YH/ArTJGydoXDN0Xm5aHoUW9TuDBKhVtr6uw541cR9SCzHRAFujhu3XP/mg4l4ybri
         OdgD9WzBYvaxzN3UxOYQCzSZtzmGGmr2NYg1W3s7Ijq9tST6J+3Qfo2c08bSI64jdhNf
         dOVnNB8Yy7ck0DZFdkqzi3NCqyGvXpb/G6KALgmLR40BIhSISZcRXhF3kS7VLnXyq87L
         lELyMzo1afuvMBnjiPN4r7dCJ9bG758rV3obNxL6cHLOaxuSF1rYJ5q0US7wtybDDYLp
         EaYApzt7Mf+G9eAJ+cn/BNktzAykDnwy3DZgVmiMW1o934bbqR7cV/DN+1YiRQwwrAWG
         wpBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SUMawJHmaVN55KeOYmXXMpF4IBtsM0ibJxP9InePT3U=;
        b=LK8ennmVSQyGGBSbXWfic15g0hTM7hAcQpaRDVrfuExi2auEUP9X+ioF39FicGw8YL
         VTRXtauCUyeehbBkp0fBoDDltWyG20tUPGV6yqFx6Bs9OCpWPtm3B49ks+OJjXvE4/8V
         OsXSiMOzIXAsJyA3FhXbOxulMcZPFVXzbjPHmYN3EuCNpZ6x4Jxp4yvmVQASHDVY6Gz7
         d8tvnHmMnTGVqDBtZbxGGzR7P+FYA5sYtUhWlEhF+LfI7Yg01UTuQEvRQd3eZzMzTZ4x
         kaHRgGp3ld7GVfyzITKZVY4imsyWNQqG7IyZMKr2zZWgf+EOd37OACm+pGSbYDIR8/0z
         YVFg==
X-Gm-Message-State: AOAM5333KSToTf+vzHyuZ5xCBZ5WZB7kuntTDAlH0FU+/Zt8V2ptErDh
        Dw94apXXuEqiGPLBhsgqmrcgEqW2rI3IVPF5
X-Google-Smtp-Source: ABdhPJwsj3rAAoA/f3M4HkgnnMtAzPA07GutC47oQWe874MOPHVkmZqHUyK+O/GozrfPiBXXdTJ6WQ==
X-Received: by 2002:a17:90a:fa3:: with SMTP id 32mr14444997pjz.68.1629365457186;
        Thu, 19 Aug 2021 02:30:57 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id 11sm2601031pfl.41.2021.08.19.02.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 02:30:56 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 1/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Thu, 19 Aug 2021 17:29:42 +0800
Message-Id: <20210819092943.719433-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819092943.719433-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210819092943.719433-1-yangcong5@huaqin.corp-partner.google.com>
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

