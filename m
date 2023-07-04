Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3A047468BC
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 07:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbjGDFIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 01:08:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbjGDFH6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 01:07:58 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F57E1AD
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 22:07:53 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-666e64e97e2so2651367b3a.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 22:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1688447273; x=1691039273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yEK3MGVob10iHTS5iKmj9mov/a9Z0JHKPt0QQ9mDo9g=;
        b=Vybgv0OQeX/6z7nZ2kdt8af/KgUBNJE+NAoTuQ6oTimRuKBHhBlIA4pMTVyOskQEUc
         RJSyf33iJhcVqr/xNVVCTsaUNnQ/OuxvHBKANMsxN3ghZLgF3dar8cE7MfAOh7gkSFDC
         HecYFG8tkJGF1VzRXAPQA7p24XjA6j6q2J7TReMOvXKu+LZ6kqbxqJaubVzQaXH7hLXX
         gzIaDJiTck4ZysH0NooOrld1rJDDpwA2SOWAfEElZ+rGlK0p/DvM4MnKKD48BGgXpEmC
         JbcHkzGnDFiL1w8ExoXmw4YZjsS/OXp0bqHFMi/lKqREIYqQo0xjHremhE1jgZksiRmg
         o8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688447273; x=1691039273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yEK3MGVob10iHTS5iKmj9mov/a9Z0JHKPt0QQ9mDo9g=;
        b=Hp5t1h11I9h0C2FsNG4523N5RlEfEklf2/6XOjJDKQ/xQb9fIMcpj22WcZrUHwUEwy
         6+FrXcoOk1yCMfWj+xAU7IRgU0gdK1FEq2W3Ptm1BWW4C4g1FVWkkPJ239k+8xd58Xxe
         PgcK+WEdHrgEmtGQ4r6Wvv7OZrw+sXcvozgqEXfehjiAVvO+LGxnnccOSK2eFvEiIT98
         miV0gy4zkPkH6YTM5mMcExFWYs3M2cg88KCF6VCzq6I5VvdCvhz2HietK+hrOF5UKNAj
         nMKt9oGs1pGaSIOvvNoqlRKBHbS899p4M02Mp33kPd0Q7hAjkedLhHp26QSLNW6tD2+H
         7p0Q==
X-Gm-Message-State: ABy/qLZeNpPuI+LO87Dk/kXUzgfFTGCZiiqEyddvp3SzLyAFsiCPR9R9
        sX6G5nJB/jYoefbd/FRi0pAqhQ==
X-Google-Smtp-Source: APBJJlFgr2ePE2VS5nmoQIhosRnrM+okwhC8T3OIv/v4UT43clXElusIoAUyB+8H9jJ2UsHZO/qzkQ==
X-Received: by 2002:a05:6a00:13a1:b0:677:bdc:cd6b with SMTP id t33-20020a056a0013a100b006770bdccd6bmr13638452pfg.19.1688447272644;
        Mon, 03 Jul 2023 22:07:52 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.205])
        by smtp.gmail.com with ESMTPSA id y10-20020aa7804a000000b00669c99d05fasm14834333pfm.150.2023.07.03.22.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 22:07:52 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch,
        airlied@gmail.com, dianders@google.com, hsinyi@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH] drm/panel: Add avdd/avee delay for Starry-himax83102-j02 and Starry-ili9882t panel
Date:   Tue,  4 Jul 2023 13:07:44 +0800
Message-Id: <20230704050744.1196293-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From power on/off sequence for panel data sheet[1], T2 timing VSP to VSN
needs 1ms delay when power on, and VSN to VSP also needs 1ms delay when
power off. Some pmic may not be able to adjust the delay internally, so
let's add a delay between avdd/avee regulator gpio to meet the timing of
panel.

[1]: https://github.com/HimaxSoftware/Doc/tree/main/Himax_Chipset_Power_Sequence

Fixes: 59bba51ec2a5 ("drm/panel: Fine tune Starry-ili9882t panel HFP and HBP")
Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index dc276c346fd1..b44a6871d97c 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -37,6 +37,7 @@ struct panel_desc {
 	unsigned int lanes;
 	bool discharge_on_disable;
 	bool lp11_before_reset;
+	int avdd_avee_delay;
 };
 
 struct boe_panel {
@@ -1798,6 +1799,7 @@ static int boe_panel_unprepare(struct drm_panel *panel)
 
 	if (boe->desc->discharge_on_disable) {
 		regulator_disable(boe->avee);
+		usleep_range(boe->desc->avdd_avee_delay, boe->desc->avdd_avee_delay * 2);
 		regulator_disable(boe->avdd);
 		usleep_range(5000, 7000);
 		gpiod_set_value(boe->enable_gpio, 0);
@@ -1808,6 +1810,7 @@ static int boe_panel_unprepare(struct drm_panel *panel)
 		gpiod_set_value(boe->enable_gpio, 0);
 		usleep_range(1000, 2000);
 		regulator_disable(boe->avee);
+		usleep_range(boe->desc->avdd_avee_delay, boe->desc->avdd_avee_delay * 2);
 		regulator_disable(boe->avdd);
 		usleep_range(5000, 7000);
 		regulator_disable(boe->pp1800);
@@ -1843,6 +1846,7 @@ static int boe_panel_prepare(struct drm_panel *panel)
 	ret = regulator_enable(boe->avdd);
 	if (ret < 0)
 		goto poweroff1v8;
+	usleep_range(boe->desc->avdd_avee_delay, boe->desc->avdd_avee_delay * 2);
 	ret = regulator_enable(boe->avee);
 	if (ret < 0)
 		goto poweroffavdd;
@@ -2134,6 +2138,7 @@ static const struct panel_desc starry_himax83102_j02_desc = {
 		      MIPI_DSI_MODE_LPM,
 	.init_cmds = starry_himax83102_j02_init_cmd,
 	.lp11_before_reset = true,
+	.avdd_avee_delay = 1500,
 };
 
 static const struct drm_display_mode starry_ili9882t_default_mode = {
@@ -2162,6 +2167,7 @@ static const struct panel_desc starry_ili9882t_desc = {
 		      MIPI_DSI_MODE_LPM,
 	.init_cmds = starry_ili9882t_init_cmd,
 	.lp11_before_reset = true,
+	.avdd_avee_delay = 1500,
 };
 
 static int boe_panel_get_modes(struct drm_panel *panel,
-- 
2.25.1

