Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8059A638B3B
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:34:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiKYNeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiKYNeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:34:24 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 605B6275D6
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:23 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id vp12so9088677ejc.8
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fFIOPDyTc3WgcCBDBFYcy39ll9ab7heHYBY4uq+GTRE=;
        b=FPAa1Odkw2BwkZGZXVo+NJI19fQy5iwDJCpykLkAbyNz8hqrWLEnqZ24+kdmNzRM4+
         wluHoRpBfEkxixbCpDrW6U+2PftcGXJPP7mF8U5WAKyW6MkLMiL4OnQxuIwiz0LRbH3u
         2/iYw70LKdxuTKE5N6t3TAeZWZcMUIHzxnI4Ae/VjNi4EkdIuK3OeHHJYpSk0il/i6IY
         2ofLXktzKfEi7CMpK/Bkg8YmYmLtAHWd5d8KuAv1J5WWYZ7WVzo1F0xVbdxYQpLxD8uf
         1yk6uh4iyRKCU35wwW4FlWK4fiko2Ib8y0qz8OW+UscwJ9s/BgdKLdP4RxXF6wKv8NF7
         HjcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFIOPDyTc3WgcCBDBFYcy39ll9ab7heHYBY4uq+GTRE=;
        b=toDVUc4Pg7nG5QSvwaipRPEKoNL2lJjrEWVAsBsE+3SxL1xAVPwjfyZ6RX8bqIfyoH
         ypAxxspZfahKwWrkC5chx+X0XgKK8bwVJNr6S3RVIeZk9WytuYltxKv5dn5jY5QzHfWx
         cmlR4EV3Fl6nZ5tpNyu0jusBHBacB/Ea/Ix1gpM0kIHtvn3OzCvvDE6WYuB8GiqJcsTZ
         4uKjBQMXyHd4a7b8k5WKvQgufoqIeaBRZI+hMpLMhR8yC02MIrjpiqpMhCKQ6FE1HQB5
         EZPli/3mhPRHaRkrQK91n0bOPYqPQHnZASxo+fFp+Q0uLJotlopHX1kZouz4RfWC4rpE
         ylvg==
X-Gm-Message-State: ANoB5pkvoPmaoZpBMSmT+iy1sN0c8v0WBKS36xPrVSSWtDhr7ScMVLIz
        Qal9JYsZGCarC3NUVvwuUfLOBw==
X-Google-Smtp-Source: AA0mqf6LDxdRRnpvFDV6r0IWsrTEpKqVHqYDdmNgTNMDC95NpanpQanhT7rNgmiN/6jc8VRr4Aj46A==
X-Received: by 2002:a17:906:a387:b0:78d:946e:f65d with SMTP id k7-20020a170906a38700b0078d946ef65dmr32242697ejz.365.1669383261882;
        Fri, 25 Nov 2022 05:34:21 -0800 (PST)
Received: from melexis ([2a02:2378:1085:b41d:1fad:f315:d8eb:738b])
        by smtp.gmail.com with ESMTPSA id o5-20020a170906768500b007ad96726c42sm1578944ejm.91.2022.11.25.05.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 05:34:21 -0800 (PST)
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
Subject: [PATCH v3 1/8] media: uapi: ctrls: Add Time of Flight class controls
Date:   Fri, 25 Nov 2022 15:34:04 +0200
Message-Id: <8819951fe1bb25501ab88e00bcf8e76734e97663.1669381013.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1669381013.git.vkh@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define Time of Flight class controls.
Also add most common TOF controls:
 - phase sequence
 - time integration
 - frequency modulation

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 include/uapi/linux/v4l2-controls.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index d27e255ed33b..a9ecfaa4252c 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -68,6 +68,7 @@
 #define V4L2_CTRL_CLASS_DETECT		0x00a30000	/* Detection controls */
 #define V4L2_CTRL_CLASS_CODEC_STATELESS 0x00a40000	/* Stateless codecs controls */
 #define V4L2_CTRL_CLASS_COLORIMETRY	0x00a50000	/* Colorimetry controls */
+#define V4L2_CTRL_CLASS_TOF		0x00a60000	/* Time of light camera controls */
 
 /* User-class control IDs */
 
@@ -2782,6 +2783,13 @@ struct v4l2_ctrl_vp9_compressed_hdr {
 	struct v4l2_vp9_mv_probs mv;
 };
 
+#define V4L2_CID_TOF_CLASS_BASE		(V4L2_CTRL_CLASS_TOF | 0x900)
+#define V4L2_CID_TOF_CLASS		(V4L2_CTRL_CLASS_TOF | 1)
+
+#define V4L2_CID_TOF_PHASE_SEQ		(V4L2_CID_TOF_CLASS_BASE + 0)
+#define V4L2_CID_TOF_FMOD		(V4L2_CID_TOF_CLASS_BASE + 1)
+#define V4L2_CID_TOF_TINT		(V4L2_CID_TOF_CLASS_BASE + 2)
+
 /* MPEG-compression definitions kept for backwards compatibility */
 #ifndef __KERNEL__
 #define V4L2_CTRL_CLASS_MPEG            V4L2_CTRL_CLASS_CODEC
-- 
BR,
Volodymyr Kharuk

