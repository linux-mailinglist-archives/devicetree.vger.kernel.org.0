Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99DE4638B3D
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:34:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbiKYNe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:34:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiKYNe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:34:28 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8391727B25
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:26 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id i10so10382830ejg.6
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQimocVbkovuSGK+MOrP75h8liEMFidg1MG7ruClhA4=;
        b=I7/kMfSLAab+z9jIIi7R7tuS+VX8bojaUIudbDk6gubOkaheEsdonKbFS3uO7blv5V
         BF4E18lMzPnDsY1dp0IwNJFcyUC8ZKOUPET9EImkVsqSf78xyIIrq/oXatz1Rrmh8iia
         74MbvPPh7VaRaedZoHHKbp2ifBDBA9QRZPxrcgjg4SfxztG9JOAH4p11uClnA4Sz8+Gy
         4BeOGm8BBPsBE2Ynww22b3CaYHpxRKQXnw62I2uKo6BdxI1PONbY/YY/80ue2P76VYj6
         w7hhQqnrXh6IwgEEibqou/lIP1WxFoh/SzTshvg2l9ePAVWN8aPgtvBGwM/2B5HMXu+w
         QqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nQimocVbkovuSGK+MOrP75h8liEMFidg1MG7ruClhA4=;
        b=pJyGDlMzf+Tzcr95nkIFCtlz2i8yv7b66Qt2vUDHDiwJynxTvTBfVbW/P6OhTJBgUj
         TxFjg6GXCm73K6rP+13txgp2RCrSLXO41Qc7qRExMGRdlWDLtmz3IOKF6+zUycdsnJLS
         sTOQ6s4EeVYg+2hoGQSu3NX/vnlNVE+BMo4S2751m7J85JUMs2pvepL0eBmzni5Wh2ij
         80zM9rcWS51HfxI2ry9No+k6Bmbn7w6kB3D628wyk11Jt6alswpO/GaWquCnN5le5d/1
         A5B2Etvjv2QEuKt5kWpQVJriR8BzRLlGv9KZ242Mdhbs0FLBa7/0J5+zRrmw1rgP4DlS
         /KRQ==
X-Gm-Message-State: ANoB5pkf6Sfa53VOEo4MFk+V/yVa97W3nOTqmgOuHDPqoEEAwY7G9Ps3
        VgUHaBe7Y4wLCe2JvYRPpnK8lg==
X-Google-Smtp-Source: AA0mqf7g+Kk+7tkyhyqbK5yI9SsEPkU9QKnQOhEaPM8C4zJvarCX5omIolZ8F8xJDoGNM80VP1tt0Q==
X-Received: by 2002:a17:907:11c5:b0:7b1:316c:38f7 with SMTP id va5-20020a17090711c500b007b1316c38f7mr32930371ejb.387.1669383265089;
        Fri, 25 Nov 2022 05:34:25 -0800 (PST)
Received: from melexis ([2a02:2378:1085:b41d:1fad:f315:d8eb:738b])
        by smtp.gmail.com with ESMTPSA id kx20-20020a170907775400b00788c622fa2csm1556683ejc.135.2022.11.25.05.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 05:34:24 -0800 (PST)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     <linux-media@vger.kernel.org>
Cc:     Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
        Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v3 2/8] media: v4l: ctrls: Fill V4L2_CID_TOF_CLASS controls
Date:   Fri, 25 Nov 2022 15:34:05 +0200
Message-Id: <d3fb74f580865c972877047f95cb65b65e773837.1669381013.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1669381013.git.vkh@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define names, flags and types of TOF controls. *dims* is driver specific.
It also means, that it is not possible to use new_std for arrays.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-defs.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
index 564fedee2c88..1135d33c1baa 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
@@ -1196,6 +1196,13 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_COLORIMETRY_CLASS:	return "Colorimetry Controls";
 	case V4L2_CID_COLORIMETRY_HDR10_CLL_INFO:		return "HDR10 Content Light Info";
 	case V4L2_CID_COLORIMETRY_HDR10_MASTERING_DISPLAY:	return "HDR10 Mastering Display";
+
+	/* Time of light camera controls */
+	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
+	case V4L2_CID_TOF_CLASS:	return "Time of light Camera Controls";
+	case V4L2_CID_TOF_PHASE_SEQ:	return "TOF phase sequence";
+	case V4L2_CID_TOF_FMOD:		return "TOF frequency modulation";
+	case V4L2_CID_TOF_TINT:		return "TOF time integration";
 	default:
 		return NULL;
 	}
@@ -1403,6 +1410,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_DETECT_CLASS:
 	case V4L2_CID_CODEC_STATELESS_CLASS:
 	case V4L2_CID_COLORIMETRY_CLASS:
+	case V4L2_CID_TOF_CLASS:
 		*type = V4L2_CTRL_TYPE_CTRL_CLASS;
 		/* You can neither read nor write these */
 		*flags |= V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_WRITE_ONLY;
@@ -1541,6 +1549,18 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_COLORIMETRY_HDR10_MASTERING_DISPLAY:
 		*type = V4L2_CTRL_TYPE_HDR10_MASTERING_DISPLAY;
 		break;
+	case V4L2_CID_TOF_PHASE_SEQ:
+		*type = V4L2_CTRL_TYPE_U16;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
+		break;
+	case V4L2_CID_TOF_FMOD:
+		*type = V4L2_CTRL_TYPE_U8;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
+		break;
+	case V4L2_CID_TOF_TINT:
+		*type = V4L2_CTRL_TYPE_U16;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
+		break;
 	default:
 		*type = V4L2_CTRL_TYPE_INTEGER;
 		break;
-- 
BR,
Volodymyr Kharuk

