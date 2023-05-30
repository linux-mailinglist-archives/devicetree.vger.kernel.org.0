Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1684716B07
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 19:31:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233466AbjE3Ra6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 13:30:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233418AbjE3Raz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 13:30:55 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68806B2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:30:40 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-30a1fdde3d6so4762696f8f.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1685467839; x=1688059839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qSNZrRpCH6YveBXmzhTPDcMdcpekYpT5zeeKREWnbDo=;
        b=DT5pLl6NgSi+m0qW6rBzUgvtuVnjZz5fkNw4OmVIdWTRe8RYr82pHS0SpI9+ky681r
         D74ant3ntP2P3lFT8+2kR7JXv95/Tdo0SUY3l3GZXctLX0NUKkWtYZpLHDPLC8lOovEC
         xUlCKjnYQGi+cWbabo6d3oM9UvRn4FhzdLrDhyScUSZ3b0j4paQbJ7KxVoKBO6jrgoTD
         pn+d+d/XjRP2KtaEk0ZP6tnxXUQtuuMs9coGnF7NeopItsKaYT200XFdwy/eQI/QTU6W
         lqJUuxqHY9tMuHE8uoivyTeF7rrfoJZFT5olramgvK8++sTZYRYbtGDZbl/ptWwj+c1Z
         eVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685467839; x=1688059839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qSNZrRpCH6YveBXmzhTPDcMdcpekYpT5zeeKREWnbDo=;
        b=B01lHmsMA/Lh4ERkT919FV+GqDMjRko1UiiOce6nSH4FmyQwz3BEPHRTz3cZ0/74XO
         QsCo0hH9z9w7a+jL8YkIzLErA+KVnGGZnnl7HdbRBsHKtOOnrhOwX0V/hSQ6zvzQQYsT
         e7/eujsJk4sQJGomw9oGYDcuEdyfNyKuNSUoTGvwcxQMhYCyoa3PEoX0WonJeyxOTZCk
         ejZri/lmF50NoVB4lZkOGkMm5f19BGXms8zUvy5dpr2/1kac+zBOq8r5bFpYJtUEGKD7
         bxkpZkO9xwCR7yrZa9AQP+0J2Avxb47OP6hQSaJput+K0Yr36oA/Yl/foXV5OjcpYfMi
         1Gjw==
X-Gm-Message-State: AC+VfDyw0mSxJn1SVO/sOrp0iB1m9HD6PZNVrLLG3rwjXVtig9AuCUvj
        ofGniKcgSbIPKtayO4qiIVItAA==
X-Google-Smtp-Source: ACHHUZ6oO7q0ghT/6Ekec+2W+FivHq014bLFL4zrqS8l//6pdo/vzdawXrkn8ifJ2UyFqvx/EeJnkg==
X-Received: by 2002:a5d:51d1:0:b0:309:838:8c21 with SMTP id n17-20020a5d51d1000000b0030908388c21mr2176268wrv.38.1685467838895;
        Tue, 30 May 2023 10:30:38 -0700 (PDT)
Received: from dave-Ubuntu2204.pitowers.org ([93.93.133.154])
        by smtp.googlemail.com with ESMTPSA id h14-20020a056000000e00b0030ae901bc54sm3964823wrx.62.2023.05.30.10.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 10:30:38 -0700 (PDT)
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
To:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 06/21] media: i2c: imx258: Make V4L2_CID_VBLANK configurable.
Date:   Tue, 30 May 2023 18:29:45 +0100
Message-Id: <20230530173000.3060865-7-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
References: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The values and ranges of V4L2_CID_VBLANK are all computed,
so there is no reason for it to be a read only control.
Remove the register values from the mode lists, add the
handler, and remove the read only flag.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/i2c/imx258.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 30bae7388c3a..c6fb649abb95 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -30,6 +30,8 @@
 #define IMX258_VTS_30FPS_VGA		0x034c
 #define IMX258_VTS_MAX			0xffff
 
+#define IMX258_REG_VTS			0x0340
+
 /* HBLANK control - read only */
 #define IMX258_PPL_DEFAULT		5352
 
@@ -202,8 +204,6 @@ static const struct imx258_reg mode_4208x3120_regs[] = {
 	{ 0x0114, 0x03 },
 	{ 0x0342, 0x14 },
 	{ 0x0343, 0xE8 },
-	{ 0x0340, 0x0C },
-	{ 0x0341, 0x50 },
 	{ 0x0344, 0x00 },
 	{ 0x0345, 0x00 },
 	{ 0x0346, 0x00 },
@@ -319,8 +319,6 @@ static const struct imx258_reg mode_2104_1560_regs[] = {
 	{ 0x0114, 0x03 },
 	{ 0x0342, 0x14 },
 	{ 0x0343, 0xE8 },
-	{ 0x0340, 0x06 },
-	{ 0x0341, 0x38 },
 	{ 0x0344, 0x00 },
 	{ 0x0345, 0x00 },
 	{ 0x0346, 0x00 },
@@ -436,8 +434,6 @@ static const struct imx258_reg mode_1048_780_regs[] = {
 	{ 0x0114, 0x03 },
 	{ 0x0342, 0x14 },
 	{ 0x0343, 0xE8 },
-	{ 0x0340, 0x03 },
-	{ 0x0341, 0x4C },
 	{ 0x0344, 0x00 },
 	{ 0x0345, 0x00 },
 	{ 0x0346, 0x00 },
@@ -803,6 +799,11 @@ static int imx258_set_ctrl(struct v4l2_ctrl *ctrl)
 					       BIT(IMX258_HDR_RATIO_MAX));
 		}
 		break;
+	case V4L2_CID_VBLANK:
+		ret = imx258_write_reg(imx258, IMX258_REG_VTS,
+				       IMX258_REG_VALUE_16BIT,
+				       imx258->cur_mode->height + ctrl->val);
+		break;
 	default:
 		dev_info(&client->dev,
 			 "ctrl(id:0x%x,val:0x%x) is not handled\n",
@@ -1214,9 +1215,6 @@ static int imx258_init_controls(struct imx258 *imx258)
 				IMX258_VTS_MAX - imx258->cur_mode->height, 1,
 				vblank_def);
 
-	if (imx258->vblank)
-		imx258->vblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
-
 	imx258->hblank = v4l2_ctrl_new_std(
 				ctrl_hdlr, &imx258_ctrl_ops, V4L2_CID_HBLANK,
 				IMX258_PPL_DEFAULT - imx258->cur_mode->width,
-- 
2.25.1

