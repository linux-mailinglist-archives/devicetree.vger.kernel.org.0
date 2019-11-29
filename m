Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8202010D9EA
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2019 20:06:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727133AbfK2TGF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Nov 2019 14:06:05 -0500
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36933 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727130AbfK2TGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Nov 2019 14:06:05 -0500
Received: by mail-pg1-f196.google.com with SMTP id b10so14783127pgd.4
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2019 11:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=btax4RMSl2FJJkeDJXhL49cWFpDR96FErKd7yRYZWSQ=;
        b=vGe0atV5IleTKdS0icIeakqOlIRkLGFXWmTpS6bbCj0mGhYocWU9ymQZ2gLJbvO4y+
         kbwdC3fMrKgcRtskxliCFIjToPKoO6leGdeVoY/f+95o9znszNKmZgRrH0cvNvNHfjHG
         d68Bsnw2/atDwUg+yQNiVQISIh27s21lYnLNCqRcpmrBkEsN3mTX0f3o2+BBCpPVTK2p
         UvB+zPYMw75MfJa5UoJ2Cx/tzE/toongxTqEeO6TPIZO86hWn0g3gH/t6frMXPmwTqSh
         +zPi0FYI4uifpMNFmqpIYUIACk82nS+0PRYfjKKnBjq0aGGQ8F91eRG6jX4mu4OPcqMx
         Dh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=btax4RMSl2FJJkeDJXhL49cWFpDR96FErKd7yRYZWSQ=;
        b=RDb+6YLlKWxnvzS36kp8vphSLr5ERgQBItMSIOoTOFeOMsszjhwPVtxiBW30bxO6Y6
         y+wfr+IWExajPpPdwSbFDWPeGTXdiLOfaQAYPGbRzXbd8HDvHPtntE8/BV2eeAf5j4gh
         IdZiZEgQWtcawWDf7h1xQMh4b75KbkXLBSD+MCcYudEEcT8TTASMvLPO2z2DLialyorL
         IoK5I57Od9H55S0aaBJH98kwf4uuJIaT2blynZ1NMZbIKw9og+xGtSYV8VhClxF5+f8d
         COjH88h/ExBoCdJHiHT/2mD0/MyNNXAeBdOBPgOwOrzI65++V1D++I8sXGiz0rj0eTa8
         RLLQ==
X-Gm-Message-State: APjAAAX4AMYPibN3uK2vFOw5TvCdaA64Tp7UrBbK6RolhJbu6CQJhzNE
        Zzk2Q17AOE5i3uYobhudby5x
X-Google-Smtp-Source: APXvYqzWl7SYTdiDWtEu2dTAa1cDtIYCAcRhkxkPeX+p2pRmrs78ThSM/ZSA+yYQDKmrO8PQCORYug==
X-Received: by 2002:a62:8249:: with SMTP id w70mr17482928pfd.253.1575054364597;
        Fri, 29 Nov 2019 11:06:04 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:638d:cc55:d006:f721:cde2:1059])
        by smtp.gmail.com with ESMTPSA id h9sm25159974pgk.84.2019.11.29.11.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2019 11:06:04 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, sakari.ailus@iki.fi
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com, peter.griffin@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 2/5] media: i2c: imx290: Add support for test pattern generation
Date:   Sat, 30 Nov 2019 00:35:38 +0530
Message-Id: <20191129190541.30315-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for generating following test patterns by IMX290:

* Sequence Pattern 1
* Horizontal Color-bar Chart
* Vertical Color-bar Chart
* Sequence Pattern 2
* Gradation Pattern 1
* Gradation Pattern 2
* 000/555h Toggle Pattern

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 41 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 1d49910937fb..e218c959a729 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -26,12 +26,19 @@
 #define IMX290_REGHOLD 0x3001
 #define IMX290_XMSTA 0x3002
 #define IMX290_FR_FDG_SEL 0x3009
+#define IMX290_BLKLEVEL_LOW 0x300a
+#define IMX290_BLKLEVEL_HIGH 0x300b
 #define IMX290_GAIN 0x3014
 #define IMX290_HMAX_LOW 0x301c
 #define IMX290_HMAX_HIGH 0x301d
+#define IMX290_PGCTRL 0x308c
 #define IMX290_PHY_LANE_NUM 0x3407
 #define IMX290_CSI_LANE_MODE 0x3443
 
+#define IMX290_PGCTRL_REGEN BIT(0)
+#define IMX290_PGCTRL_THRU BIT(1)
+#define IMX290_PGCTRL_MODE(n) ((n) << 4)
+
 /* HMAX fields */
 #define IMX290_HMAX_2_1920 0x1130
 #define IMX290_HMAX_4_1920 0x0898
@@ -99,6 +106,17 @@ static const struct regmap_config imx290_regmap_config = {
 	.cache_type = REGCACHE_RBTREE,
 };
 
+static const char * const imx290_test_pattern_menu[] = {
+	"Disabled",
+	"Sequence Pattern 1",
+	"Horizontal Color-bar Chart",
+	"Vertical Color-bar Chart",
+	"Sequence Pattern 2",
+	"Gradation Pattern 1",
+	"Gradation Pattern 2",
+	"000/555h Toggle Pattern",
+};
+
 static const struct imx290_regval imx290_global_init_settings[] = {
 	{ 0x3007, 0x00 },
 	{ 0x3018, 0x65 },
@@ -394,6 +412,22 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
 	case V4L2_CID_GAIN:
 		ret = imx290_set_gain(imx290, ctrl->val);
 		break;
+	case V4L2_CID_TEST_PATTERN:
+		if (ctrl->val) {
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x00);
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
+			mdelay(10);
+			imx290_write_reg(imx290, IMX290_PGCTRL,
+					 (u8)(IMX290_PGCTRL_REGEN |
+					 IMX290_PGCTRL_THRU |
+					 IMX290_PGCTRL_MODE(ctrl->val)));
+		} else {
+			imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
+			mdelay(10);
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
+		}
+		break;
 	default:
 		ret = -EINVAL;
 		break;
@@ -878,7 +912,7 @@ static int imx290_probe(struct i2c_client *client)
 
 	mutex_init(&imx290->lock);
 
-	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
+	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
 
 	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
 			  V4L2_CID_GAIN, 0, 72, 1, 0);
@@ -896,6 +930,11 @@ static int imx290_probe(struct i2c_client *client)
 					       INT_MAX, 1,
 					       imx290_modes[0].pixel_rate);
 
+	v4l2_ctrl_new_std_menu_items(&imx290->ctrls, &imx290_ctrl_ops,
+				     V4L2_CID_TEST_PATTERN,
+				     ARRAY_SIZE(imx290_test_pattern_menu) - 1,
+				     0, 0, imx290_test_pattern_menu);
+
 	imx290->sd.ctrl_handler = &imx290->ctrls;
 
 	if (imx290->ctrls.error) {
-- 
2.17.1

