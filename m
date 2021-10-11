Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47900428A0E
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:46:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235614AbhJKJsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235721AbhJKJse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:48:34 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6E4CC061570
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:34 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id k7so54033658wrd.13
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ECgEwlXcpssO++nHCyquDoyB9qW01hH4M38EB8NYkkY=;
        b=R+7Mpt/F2HQNX3j2rNDLOMlT5TszLdlHzB4IH3H2rlrj1a3DSKVp49lQAyFEmWbi34
         B+hQHuaUMGc4U0LOH7fgedYAlYC2+5+V3nr7rXzk5eie4WuX8kbflbGxj5+F/Sqqvu5K
         ijNqfgzfyXzwkHLeZr9RFThjSjXRcFmGVUrile9I7jtYVqQ+4tbNxugqED17RpElPe1O
         KzwsknGu5hRsH2mJA5xoz/JZH4xC+wXhrX1M3L5KuxJd5K41bZ0xRCmTtcqSSP5lnfxU
         B7vkIUVfQLZkmsNiYtJbCssmEQaXdmJtqYrt+Rk78AWGx/cty8zLhOfI2+4rW4632iNH
         DyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ECgEwlXcpssO++nHCyquDoyB9qW01hH4M38EB8NYkkY=;
        b=rPaYUoT9NR/Z4LX0oejs2B5eMOa5126zbc7NwXllFczudAXoLM+sAr6CbM3LpqxYRm
         p0/2ehljcwfo2/O4axB24bAST9kWorT3TqCjm7e86gpd5a1RK/Q8ZmILx9+AlYHvrRZz
         kIQLB/BHs2IiBeV58g5Z2v2bQ+bY0yl6xU2rHgBr74ER1jXdqsIx12+rOhm/fHl71BmF
         JVDStQ86JsVfmSR2sZAWVVbz0Gd2S/znks0lIQwKWMRkSxbV8VyndbjaCnw937lW4hKC
         lMfV6AVAbzFSkxJUNvUd+IpbLdeUcsXibwKaIsHxPRSxyFGQU/rttsNoGi9DDMvGKM3i
         sJIg==
X-Gm-Message-State: AOAM533rTgv7fuHO6eTvwBJJC+BUt951CaRf8axtxWEO8x/tIsdNBPUA
        IW2vCrW6sOfIeOitgqGLwV/xpQ==
X-Google-Smtp-Source: ABdhPJyiykaX8/mJvfNy6VAyISszSO4nUPy+jx60J7YonpcHjnXZZJSpV0y9SzkVqveZlwuuVgnJfQ==
X-Received: by 2002:a1c:496:: with SMTP id 144mr19967435wme.60.1633945593527;
        Mon, 11 Oct 2021 02:46:33 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:46:33 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 4/7] video/hdmi: Add audio_infoframe packing for DP
Date:   Mon, 11 Oct 2021 11:46:21 +0200
Message-Id: <20211011094624.3416029-5-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Similar to HDMI, DP uses audio infoframes as well which are structured
very similar to the HDMI ones.

This patch adds a helper function to pack the HDMI audio infoframe for
DP, called hdmi_audio_infoframe_pack_for_dp().
hdmi_audio_infoframe_pack_only() is split into two parts. One of them
packs the payload only and can be used for HDMI and DP.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v1 -> v2:
    - Create a define for HB2.
    - Use struct dp_sdp to pass data in a better way.

 drivers/video/hdmi.c        | 83 ++++++++++++++++++++++++++++---------
 include/drm/drm_dp_helper.h |  2 +
 include/linux/hdmi.h        |  7 +++-
 3 files changed, 72 insertions(+), 20 deletions(-)

diff --git a/drivers/video/hdmi.c b/drivers/video/hdmi.c
index 947be761dfa4..63e74d9fd210 100644
--- a/drivers/video/hdmi.c
+++ b/drivers/video/hdmi.c
@@ -21,6 +21,7 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <drm/drm_dp_helper.h>
 #include <linux/bitops.h>
 #include <linux/bug.h>
 #include <linux/errno.h>
@@ -381,12 +382,34 @@ static int hdmi_audio_infoframe_check_only(const struct hdmi_audio_infoframe *fr
  *
  * Returns 0 on success or a negative error code on failure.
  */
-int hdmi_audio_infoframe_check(struct hdmi_audio_infoframe *frame)
+int hdmi_audio_infoframe_check(const struct hdmi_audio_infoframe *frame)
 {
 	return hdmi_audio_infoframe_check_only(frame);
 }
 EXPORT_SYMBOL(hdmi_audio_infoframe_check);
 
+static void
+hdmi_audio_infoframe_pack_payload(const struct hdmi_audio_infoframe *frame,
+				  u8 *buffer)
+{
+	u8 channels;
+
+	if (frame->channels >= 2)
+		channels = frame->channels - 1;
+	else
+		channels = 0;
+
+	buffer[0] = ((frame->coding_type & 0xf) << 4) | (channels & 0x7);
+	buffer[1] = ((frame->sample_frequency & 0x7) << 2) |
+		 (frame->sample_size & 0x3);
+	buffer[2] = frame->coding_type_ext & 0x1f;
+	buffer[3] = frame->channel_allocation;
+	buffer[4] = (frame->level_shift_value & 0xf) << 3;
+
+	if (frame->downmix_inhibit)
+		buffer[4] |= BIT(7);
+}
+
 /**
  * hdmi_audio_infoframe_pack_only() - write HDMI audio infoframe to binary buffer
  * @frame: HDMI audio infoframe
@@ -404,7 +427,6 @@ EXPORT_SYMBOL(hdmi_audio_infoframe_check);
 ssize_t hdmi_audio_infoframe_pack_only(const struct hdmi_audio_infoframe *frame,
 				       void *buffer, size_t size)
 {
-	unsigned char channels;
 	u8 *ptr = buffer;
 	size_t length;
 	int ret;
@@ -420,28 +442,13 @@ ssize_t hdmi_audio_infoframe_pack_only(const struct hdmi_audio_infoframe *frame,
 
 	memset(buffer, 0, size);
 
-	if (frame->channels >= 2)
-		channels = frame->channels - 1;
-	else
-		channels = 0;
-
 	ptr[0] = frame->type;
 	ptr[1] = frame->version;
 	ptr[2] = frame->length;
 	ptr[3] = 0; /* checksum */
 
-	/* start infoframe payload */
-	ptr += HDMI_INFOFRAME_HEADER_SIZE;
-
-	ptr[0] = ((frame->coding_type & 0xf) << 4) | (channels & 0x7);
-	ptr[1] = ((frame->sample_frequency & 0x7) << 2) |
-		 (frame->sample_size & 0x3);
-	ptr[2] = frame->coding_type_ext & 0x1f;
-	ptr[3] = frame->channel_allocation;
-	ptr[4] = (frame->level_shift_value & 0xf) << 3;
-
-	if (frame->downmix_inhibit)
-		ptr[4] |= BIT(7);
+	hdmi_audio_infoframe_pack_payload(frame,
+					  ptr + HDMI_INFOFRAME_HEADER_SIZE);
 
 	hdmi_infoframe_set_checksum(buffer, length);
 
@@ -479,6 +486,44 @@ ssize_t hdmi_audio_infoframe_pack(struct hdmi_audio_infoframe *frame,
 }
 EXPORT_SYMBOL(hdmi_audio_infoframe_pack);
 
+/**
+ * hdmi_audio_infoframe_pack_for_dp - Pack a HDMI Audio infoframe for
+ *                                    displayport
+ *
+ * @frame HDMI Audio infoframe
+ * @sdp secondary data packet for display port. This is filled with the
+ * appropriate data
+ * @dp_version Display Port version to be encoded in the header
+ *
+ * Packs a HDMI Audio Infoframe to be sent over Display Port. This function
+ * fills the secondary data packet to be used for Display Port.
+ *
+ * Return: Number of total written bytes or a negative errno on failure.
+ */
+ssize_t
+hdmi_audio_infoframe_pack_for_dp(const struct hdmi_audio_infoframe *frame,
+				 struct dp_sdp *sdp, u8 dp_version)
+{
+	int ret;
+
+	ret = hdmi_audio_infoframe_check(frame);
+	if (ret)
+		return ret;
+
+	memset(sdp->db, 0, sizeof(sdp->db));
+
+	// Secondary-data packet header
+	sdp->sdp_header.HB0 = 0;
+	sdp->sdp_header.HB1 = frame->type;
+	sdp->sdp_header.HB2 = DP_SDP_AUDIO_INFOFRAME_HB2;
+	sdp->sdp_header.HB3 = (dp_version & 0x3f) << 2;
+
+	hdmi_audio_infoframe_pack_payload(frame, sdp->db);
+
+	return frame->length + 4;
+}
+EXPORT_SYMBOL(hdmi_audio_infoframe_pack_for_dp);
+
 /**
  * hdmi_vendor_infoframe_init() - initialize an HDMI vendor infoframe
  * @frame: HDMI vendor infoframe
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 1d5b3dbb6e56..9debbcc34b14 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1524,6 +1524,8 @@ int drm_dp_bw_code_to_link_rate(u8 link_bw);
 #define DP_SDP_VSC_EXT_CEA		0x21 /* DP 1.4 */
 /* 0x80+ CEA-861 infoframe types */
 
+#define DP_SDP_AUDIO_INFOFRAME_HB2	0x1b
+
 /**
  * struct dp_sdp_header - DP secondary data packet header
  * @HB0: Secondary Data Packet ID
diff --git a/include/linux/hdmi.h b/include/linux/hdmi.h
index c8ec982ff498..2f4dcc8d060e 100644
--- a/include/linux/hdmi.h
+++ b/include/linux/hdmi.h
@@ -336,7 +336,12 @@ ssize_t hdmi_audio_infoframe_pack(struct hdmi_audio_infoframe *frame,
 				  void *buffer, size_t size);
 ssize_t hdmi_audio_infoframe_pack_only(const struct hdmi_audio_infoframe *frame,
 				       void *buffer, size_t size);
-int hdmi_audio_infoframe_check(struct hdmi_audio_infoframe *frame);
+int hdmi_audio_infoframe_check(const struct hdmi_audio_infoframe *frame);
+
+struct dp_sdp;
+ssize_t
+hdmi_audio_infoframe_pack_for_dp(const struct hdmi_audio_infoframe *frame,
+				 struct dp_sdp *sdp, u8 dp_version);
 
 enum hdmi_3d_structure {
 	HDMI_3D_STRUCTURE_INVALID = -1,
-- 
2.33.0

