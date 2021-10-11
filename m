Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B706C428A08
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235588AbhJKJsg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:48:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235714AbhJKJse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:48:34 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40729C061768
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:34 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id t2so54181015wrb.8
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qeDnF7/0L+8b2rsbo3X+Y/DSsOq81VJxq7sH0PX/jgg=;
        b=tpMOIdGryFo1QjiBcb62qTrgRhnPEdQCHHiiPzoeNs9b4KuW4Aqt4HPekNwSHQLYcf
         AXSmtYzqLDFUvjnktArYfNRsrz/NFDWtp01w6diZ8uNpc/v08optqgv7gw4MIK3zCLtl
         cvob0ZXJVhQczg/+uDjXdm4H61HrB8ideu4MjR+8Mjv3C+DEVdj7HM9+eiOa3g2tLw2Q
         YFaWK2hWMvvbHBpHjUfvoOUT3sBm5PFjfuk9B/JkxQkSJlyg0CIpPxZm2b4QlaZete8p
         g5df52gSEWy7Wz4zjekcIfFtTrXTxX9NkKX9+0qjn4RKmsFjDBOqwzv46PtN8mw6n2xy
         3kQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qeDnF7/0L+8b2rsbo3X+Y/DSsOq81VJxq7sH0PX/jgg=;
        b=7dN5p8w0L+1g+L6RgG+h8T2c24WWYspkXZcq7N6yn/XXmQSSLjFvRfjqxCbfAh+4hS
         6p6CIEyuCy6xqXD5qgIRutezfh1/1xFZ9R6jNiCCPViLpeMfknqVVKHR7HCsIGCwmLdZ
         Am3W5DwUECFf+8IaZNwqSck2PRy8xWDeTLUd9h0gsGvlZrA/BjcgCnY+Ap2HPQTEG9Lv
         +9TALIKz6Jngi0inso/urlOSTWnPnnVVQDx0sWf+IIM+FES8aFaul7tqV93UzT5cpbnn
         MJfB8fapvYfjD79qj0GKbHTk8t4UmVDJF+x5b5Ne27/gZTJQDyJBH0QhOCfR1TxP3Lka
         kNVQ==
X-Gm-Message-State: AOAM530oWwbn5xXQ503dL3VgdmSK9i7xwCv1KmqFluZCShwBPJXDU0OI
        Zw/Pf00Wtv7FUV9JqHSTWJbuxw==
X-Google-Smtp-Source: ABdhPJwgS6TG+8TotyLRqb3ziVReox2oJ1Z5bPjobcSaB38Y1fdmvoaxDKzu2Sd/pIdIGFJLH4WQ5g==
X-Received: by 2002:a1c:1b90:: with SMTP id b138mr19886387wmb.160.1633945592564;
        Mon, 11 Oct 2021 02:46:32 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:46:32 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 3/7] drm/edid: Add cea_sad helpers for freq/length
Date:   Mon, 11 Oct 2021 11:46:20 +0200
Message-Id: <20211011094624.3416029-4-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds two helper functions that extract the frequency and word
length from a struct cea_sad.

For these helper functions new defines are added that help translate the
'freq' and 'byte2' fields into real numbers.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v2 -> v3:
    - Add DRM_ prefix to the CEA_SAD defines.
    
    Changes v1 -> v2:
    - Use const struct pointers.
    - Add a check whether the format is actually uncompressed or not.

 drivers/gpu/drm/drm_edid.c | 74 ++++++++++++++++++++++++++++++++++++++
 include/drm/drm_edid.h     | 18 ++++++++--
 2 files changed, 90 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 6325877c5fd6..c134803e18db 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4666,6 +4666,80 @@ int drm_edid_to_speaker_allocation(struct edid *edid, u8 **sadb)
 }
 EXPORT_SYMBOL(drm_edid_to_speaker_allocation);
 
+/**
+ * drm_cea_sad_get_sample_rate - Extract the sample rate from cea_sad
+ * @sad: Pointer to the cea_sad struct
+ *
+ * Extracts the cea_sad frequency field and returns the sample rate in Hz.
+ *
+ * Return: Sample rate in Hz or a negative errno if parsing failed.
+ */
+int drm_cea_sad_get_sample_rate(const struct cea_sad *sad)
+{
+	switch (sad->freq) {
+	case DRM_CEA_SAD_FREQ_32KHZ:
+		return 32000;
+	case DRM_CEA_SAD_FREQ_44KHZ:
+		return 44100;
+	case DRM_CEA_SAD_FREQ_48KHZ:
+		return 48000;
+	case DRM_CEA_SAD_FREQ_88KHZ:
+		return 88200;
+	case DRM_CEA_SAD_FREQ_96KHZ:
+		return 96000;
+	case DRM_CEA_SAD_FREQ_176KHZ:
+		return 176400;
+	case DRM_CEA_SAD_FREQ_192KHZ:
+		return 192000;
+	default:
+		return -EINVAL;
+	}
+}
+EXPORT_SYMBOL(drm_cea_sad_get_sample_rate);
+
+static bool drm_cea_sad_is_uncompressed(const struct cea_sad *sad)
+{
+	switch (sad->format) {
+	case HDMI_AUDIO_CODING_TYPE_STREAM:
+	case HDMI_AUDIO_CODING_TYPE_PCM:
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * drm_cea_sad_get_uncompressed_word_length - Extract word length
+ * @sad: Pointer to the cea_sad struct
+ *
+ * Extracts the cea_sad byte2 field and returns the word length for an
+ * uncompressed stream.
+ *
+ * Note: This function may only be called for uncompressed audio.
+ *
+ * Return: Word length in bits or a negative errno if parsing failed.
+ */
+int drm_cea_sad_get_uncompressed_word_length(const struct cea_sad *sad)
+{
+	if (!drm_cea_sad_is_uncompressed(sad)) {
+		DRM_WARN("Unable to get the uncompressed word length for a compressed format: %u\n",
+			 sad->format);
+		return -EINVAL;
+	}
+
+	switch (sad->byte2) {
+	case DRM_CEA_SAD_UNCOMPRESSED_WORD_16BIT:
+		return 16;
+	case DRM_CEA_SAD_UNCOMPRESSED_WORD_20BIT:
+		return 20;
+	case DRM_CEA_SAD_UNCOMPRESSED_WORD_24BIT:
+		return 24;
+	default:
+		return -EINVAL;
+	}
+}
+EXPORT_SYMBOL(drm_cea_sad_get_uncompressed_word_length);
+
 /**
  * drm_av_sync_delay - compute the HDMI/DP sink audio-video sync delay
  * @connector: connector associated with the HDMI/DP sink
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index deccfd39e6db..9d75df652b17 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -361,12 +361,24 @@ struct edid {
 
 /* Short Audio Descriptor */
 struct cea_sad {
-	u8 format;
+	u8 format; /* See HDMI_AUDIO_CODING_TYPE_* */
 	u8 channels; /* max number of channels - 1 */
-	u8 freq;
+	u8 freq; /* See CEA_SAD_FREQ_* */
 	u8 byte2; /* meaning depends on format */
 };
 
+#define DRM_CEA_SAD_FREQ_32KHZ  BIT(0)
+#define DRM_CEA_SAD_FREQ_44KHZ  BIT(1)
+#define DRM_CEA_SAD_FREQ_48KHZ  BIT(2)
+#define DRM_CEA_SAD_FREQ_88KHZ  BIT(3)
+#define DRM_CEA_SAD_FREQ_96KHZ  BIT(4)
+#define DRM_CEA_SAD_FREQ_176KHZ BIT(5)
+#define DRM_CEA_SAD_FREQ_192KHZ BIT(6)
+
+#define DRM_CEA_SAD_UNCOMPRESSED_WORD_16BIT BIT(0)
+#define DRM_CEA_SAD_UNCOMPRESSED_WORD_20BIT BIT(1)
+#define DRM_CEA_SAD_UNCOMPRESSED_WORD_24BIT BIT(2)
+
 struct drm_encoder;
 struct drm_connector;
 struct drm_connector_state;
@@ -374,6 +386,8 @@ struct drm_display_mode;
 
 int drm_edid_to_sad(struct edid *edid, struct cea_sad **sads);
 int drm_edid_to_speaker_allocation(struct edid *edid, u8 **sadb);
+int drm_cea_sad_get_sample_rate(const struct cea_sad *sad);
+int drm_cea_sad_get_uncompressed_word_length(const struct cea_sad *sad);
 int drm_av_sync_delay(struct drm_connector *connector,
 		      const struct drm_display_mode *mode);
 
-- 
2.33.0

