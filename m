Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A2A6716B11
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 19:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbjE3RbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 13:31:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233477AbjE3Ra7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 13:30:59 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45089121
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:30:44 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f60e536250so319695e9.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1685467843; x=1688059843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XRgJehk3c+VokQQa2iAQCR0Q7Cyaad+sagKAUpM01w=;
        b=TCiC9EtrEMwGTrM+0HPg5EJpPpzNfRuClb+Ot6dTNvCHHQiUvpf5TuCGs/u8lBBOPv
         5rJYof8MUixwqzizKw25fmznJYqhTzf0QuAcrVp/D+pzYOzWLGGxnfQ9DS8NHR7iWj7Q
         IJ3JK9ijQY8iZYBGi1UTvJJCPezYG4x/idQGxTFddhT4aEZR3ZlU4kM5dkcNfRqmu/WG
         ugMayATYEvgIVs765dCFL404l2X2ejmIIqU4ECHscy3YUMjPGajBO6KaTC2y7yLuAQI8
         0NwyknD8NhpOqABOO3S/kD/704JQ+SNEaVEGC45UWef9nzgVBXFxzYtYecZifX/NyLKw
         UAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685467843; x=1688059843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0XRgJehk3c+VokQQa2iAQCR0Q7Cyaad+sagKAUpM01w=;
        b=HK9nDk+MSMhsyJi0oQ04lHparskt/4nsJZ+QLTlROnAlxuNc+BGRxP+Y8EdfVLsda2
         coIhi2jNSDL67LPbswvnrikLdN8DMnQo9YJpF4GMfhyDqlZSTDK+Lj0FTPIeNgZt4ngE
         6MDZDa+P1V92kT6l7+OTp6WBdR/T+jOWbjzzPS/waOvu+6k0kNaStsxQsx3p2nf83CDz
         QigIKjpwhNBzDIUAQUqTus4GLu8po0BtuAudNdGINyAXAGW6X2kwnHe2DCp2Bb3CfpkV
         YdOwSRUS8loNbBuaNwxKd2mfLr2Qn3qlRHHRpIuE4/eYhzeeGSmIa6AJpaaK2pfoQVux
         s2Vw==
X-Gm-Message-State: AC+VfDy32CCFJiOi8OvR3v/GlThcCUaCLEh8F/6ZVWQIEB5tJyG3FQfe
        v6Q9yuhICJGRLqHDAjZc6VYB0w==
X-Google-Smtp-Source: ACHHUZ4M2gZLblM/C7pK/hMYpp5bL+EHQElo9Mg5JgpkII9Fxs9I3z2heTSNBSkLuVQIcwwu7ZxyFA==
X-Received: by 2002:adf:e7c5:0:b0:309:33c4:52df with SMTP id e5-20020adfe7c5000000b0030933c452dfmr2743588wrn.30.1685467842732;
        Tue, 30 May 2023 10:30:42 -0700 (PDT)
Received: from dave-Ubuntu2204.pitowers.org ([93.93.133.154])
        by smtp.googlemail.com with ESMTPSA id h14-20020a056000000e00b0030ae901bc54sm3964823wrx.62.2023.05.30.10.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 10:30:42 -0700 (PDT)
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
To:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 11/21] media: i2c: imx258: Add get_selection for pixel array information
Date:   Tue, 30 May 2023 18:29:50 +0100
Message-Id: <20230530173000.3060865-12-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
References: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Libcamera requires the cropping information for each mode, so
add this information to the driver.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/i2c/imx258.c | 90 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index 82ffe09e3bdc..1fa83fe82f27 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -77,6 +77,14 @@
 #define REG_CONFIG_MIRROR_FLIP		0x03
 #define REG_CONFIG_FLIP_TEST_PATTERN	0x02
 
+/* IMX258 native and active pixel array size. */
+#define IMX258_NATIVE_WIDTH		4224U
+#define IMX258_NATIVE_HEIGHT		3192U
+#define IMX258_PIXEL_ARRAY_LEFT		8U
+#define IMX258_PIXEL_ARRAY_TOP		16U
+#define IMX258_PIXEL_ARRAY_WIDTH	4208U
+#define IMX258_PIXEL_ARRAY_HEIGHT	3120U
+
 struct imx258_reg {
 	u16 address;
 	u8 val;
@@ -115,6 +123,9 @@ struct imx258_mode {
 	u32 link_freq_index;
 	/* Default register values */
 	struct imx258_reg_list reg_list;
+
+	/* Analog crop rectangle. */
+	struct v4l2_rect crop;
 };
 
 /* 4208x3120 needs 1267Mbps/lane, 4 lanes. Use that rate on 2 lanes as well */
@@ -562,6 +573,12 @@ static const struct imx258_mode supported_modes[] = {
 			.regs = mode_4208x3120_regs,
 		},
 		.link_freq_index = IMX258_LINK_FREQ_1267MBPS,
+		.crop = {
+			.left = IMX258_PIXEL_ARRAY_LEFT,
+			.top = IMX258_PIXEL_ARRAY_TOP,
+			.width = 4208,
+			.height = 3120,
+		},
 	},
 	{
 		.width = 2104,
@@ -573,6 +590,12 @@ static const struct imx258_mode supported_modes[] = {
 			.regs = mode_2104_1560_regs,
 		},
 		.link_freq_index = IMX258_LINK_FREQ_640MBPS,
+		.crop = {
+			.left = IMX258_PIXEL_ARRAY_LEFT,
+			.top = IMX258_PIXEL_ARRAY_TOP,
+			.width = 4208,
+			.height = 3120,
+		},
 	},
 	{
 		.width = 1048,
@@ -584,6 +607,12 @@ static const struct imx258_mode supported_modes[] = {
 			.regs = mode_1048_780_regs,
 		},
 		.link_freq_index = IMX258_LINK_FREQ_640MBPS,
+		.crop = {
+			.left = IMX258_PIXEL_ARRAY_LEFT,
+			.top = IMX258_PIXEL_ARRAY_TOP,
+			.width = 4208,
+			.height = 3120,
+		},
 	},
 };
 
@@ -703,6 +732,7 @@ static int imx258_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
 {
 	struct v4l2_mbus_framefmt *try_fmt =
 		v4l2_subdev_get_try_format(sd, fh->state, 0);
+	struct v4l2_rect *try_crop;
 
 	/* Initialize try_fmt */
 	try_fmt->width = supported_modes[0].width;
@@ -710,6 +740,13 @@ static int imx258_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
 	try_fmt->code = MEDIA_BUS_FMT_SBGGR10_1X10;
 	try_fmt->field = V4L2_FIELD_NONE;
 
+	/* Initialize try_crop */
+	try_crop = v4l2_subdev_get_try_crop(sd, fh->state, 0);
+	try_crop->left = IMX258_PIXEL_ARRAY_LEFT;
+	try_crop->top = IMX258_PIXEL_ARRAY_TOP;
+	try_crop->width = IMX258_PIXEL_ARRAY_WIDTH;
+	try_crop->height = IMX258_PIXEL_ARRAY_HEIGHT;
+
 	return 0;
 }
 
@@ -958,6 +995,58 @@ static int imx258_set_pad_format(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static const struct v4l2_rect *
+__imx258_get_pad_crop(struct imx258 *imx258,
+		      struct v4l2_subdev_state *sd_state,
+		      unsigned int pad, enum v4l2_subdev_format_whence which)
+{
+	switch (which) {
+	case V4L2_SUBDEV_FORMAT_TRY:
+		return v4l2_subdev_get_try_crop(&imx258->sd, sd_state, pad);
+	case V4L2_SUBDEV_FORMAT_ACTIVE:
+		return &imx258->cur_mode->crop;
+	}
+
+	return NULL;
+}
+
+static int imx258_get_selection(struct v4l2_subdev *sd,
+				struct v4l2_subdev_state *sd_state,
+				struct v4l2_subdev_selection *sel)
+{
+	switch (sel->target) {
+	case V4L2_SEL_TGT_CROP: {
+		struct imx258 *imx258 = to_imx258(sd);
+
+		mutex_lock(&imx258->mutex);
+		sel->r = *__imx258_get_pad_crop(imx258, sd_state, sel->pad,
+						sel->which);
+		mutex_unlock(&imx258->mutex);
+
+		return 0;
+	}
+
+	case V4L2_SEL_TGT_NATIVE_SIZE:
+		sel->r.left = 0;
+		sel->r.top = 0;
+		sel->r.width = IMX258_NATIVE_WIDTH;
+		sel->r.height = IMX258_NATIVE_HEIGHT;
+
+		return 0;
+
+	case V4L2_SEL_TGT_CROP_DEFAULT:
+	case V4L2_SEL_TGT_CROP_BOUNDS:
+		sel->r.left = IMX258_PIXEL_ARRAY_LEFT;
+		sel->r.top = IMX258_PIXEL_ARRAY_TOP;
+		sel->r.width = IMX258_PIXEL_ARRAY_WIDTH;
+		sel->r.height = IMX258_PIXEL_ARRAY_HEIGHT;
+
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 /* Start streaming */
 static int imx258_start_streaming(struct imx258 *imx258)
 {
@@ -1170,6 +1259,7 @@ static const struct v4l2_subdev_pad_ops imx258_pad_ops = {
 	.get_fmt = imx258_get_pad_format,
 	.set_fmt = imx258_set_pad_format,
 	.enum_frame_size = imx258_enum_frame_size,
+	.get_selection = imx258_get_selection,
 };
 
 static const struct v4l2_subdev_ops imx258_subdev_ops = {
-- 
2.25.1

