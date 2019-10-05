Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4224ECC8DA
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 10:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727458AbfJEIzo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 04:55:44 -0400
Received: from mail-qt1-f201.google.com ([209.85.160.201]:47369 "EHLO
        mail-qt1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfJEIzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 04:55:44 -0400
Received: by mail-qt1-f201.google.com with SMTP id p56so9302395qtj.14
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 01:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=NeC00R2HDPjugyY089WdATWGGggY9LDPrJpjGM7g9N0=;
        b=HA63YnvTlCHwLR7RikE43au83U2kH0GFPU4sNivHnLgJxQnb2MWeb8nQH/z8XKV2x1
         pE6ee9AJOeyngJL+haLKq6I/pEGCFuZfkQ1cN+9IpzvGyrtZPVEmN4NASKq/WXalx2rk
         UBjXWrbKCiTu0KQbGCWKP125wZMe+4ubitSrAaLPOd21HriUZchbIB6blzmfpE7GTcKu
         yxVZRHdsj/07u9S5So4z15n4L3miJgt8tbfALGimEvVB8OYwzomQCtgLwYqGR8lA3y54
         g9fmKNSqrQXULvxcyDkyKXEwjVEWKpvYixiBgnNaz+/BJU4pY3l0LInVbWc7SiGBPTHr
         qYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=NeC00R2HDPjugyY089WdATWGGggY9LDPrJpjGM7g9N0=;
        b=PtgylxWS85bcEpZa/bzhrQPeaoqNxpEeKZovnU6We6inif9BcCZEU7BwQZrRJwZ7CT
         KKWf65KmIQ/eeHHlO+JTc05/RdLLOygIsncjHHXobW94vVFMbdjsg8Pr5DG414RpyaAw
         YmQHGMVjf1XRksBdwN+dtgkFnr1pPXGWGLEbsVRGdOPw/dFnUkiN3v6YT+MXYzG3Lzpv
         Lerh5XM44RRpnp6i/adhrdJVKetZXXj/aDs3+rs3oM+LfNJjD15jYyY5snSzM/Au44/U
         Ubi/dh+DKHy3KPFpQhNqU3E5vKpUQldgg/p8JGaIjvpvs0KW7frCuXmoafMVn97TkBaA
         ihAg==
X-Gm-Message-State: APjAAAU7U43Bw+e21QEWqtpSgqT0/+7gxmIqkRFpLqVLbexp8EwNXHJD
        NXjJkqpLWKTu4cdFtQpy6EPPrwFQQywe
X-Google-Smtp-Source: APXvYqxK5HKboiDDViqVqXfWdAQ059eKlyh5b/7riTV8ad0+Uw1jm7/PXCVkjf0fhmm1z3ev3SakuBcq9EHG
X-Received: by 2002:a05:6214:1226:: with SMTP id p6mr18236893qvv.167.1570265743620;
 Sat, 05 Oct 2019 01:55:43 -0700 (PDT)
Date:   Sat,  5 Oct 2019 16:55:03 +0800
In-Reply-To: <20191005085509.187179-1-tzungbi@google.com>
Message-Id: <20191005164320.04.Idc3c6e1cd94b70bf010249928d4a93c6c90495b7@changeid>
Mime-Version: 1.0
References: <20191005085509.187179-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v2 04/10] platform/chrome: cros_ec: add common commands for EC codec
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the following common commands:
- GET_CAPABILITIES
- GET_SHM_ADDR
- SET_SHM_ADDR

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/platform/chrome/cros_ec_trace.c       |  1 +
 .../linux/platform_data/cros_ec_commands.h    | 64 ++++++++++++++++++-
 2 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_trace.c b/drivers/platform/chrome/cros_ec_trace.c
index e73bb6a8b00e..2ea0d4e0d54d 100644
--- a/drivers/platform/chrome/cros_ec_trace.c
+++ b/drivers/platform/chrome/cros_ec_trace.c
@@ -98,6 +98,7 @@
 	TRACE_SYMBOL(EC_CMD_SB_READ_BLOCK), \
 	TRACE_SYMBOL(EC_CMD_SB_WRITE_BLOCK), \
 	TRACE_SYMBOL(EC_CMD_BATTERY_VENDOR_PARAM), \
+	TRACE_SYMBOL(EC_CMD_EC_CODEC), \
 	TRACE_SYMBOL(EC_CMD_EC_CODEC_DMIC), \
 	TRACE_SYMBOL(EC_CMD_EC_CODEC_I2S_RX), \
 	TRACE_SYMBOL(EC_CMD_REBOOT_EC), \
diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 58e460c015ef..3ca0fa9e92a7 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -4466,8 +4466,68 @@ enum mkbp_cec_event {
 
 /*****************************************************************************/
 
+/* Commands for audio codec. */
+#define EC_CMD_EC_CODEC 0x00BC
+
+enum ec_codec_subcmd {
+	EC_CODEC_GET_CAPABILITIES = 0x0,
+	EC_CODEC_GET_SHM_ADDR = 0x1,
+	EC_CODEC_SET_SHM_ADDR = 0x2,
+	EC_CODEC_SUBCMD_COUNT,
+};
+
+enum ec_codec_cap {
+	EC_CODEC_CAP_LAST = 32,
+};
+
+enum ec_codec_shm_id {
+	EC_CODEC_SHM_ID_LAST,
+};
+
+enum ec_codec_shm_type {
+	EC_CODEC_SHM_TYPE_EC_RAM = 0x0,
+	EC_CODEC_SHM_TYPE_SYSTEM_RAM = 0x1,
+};
+
+struct __ec_align1 ec_param_ec_codec_get_shm_addr {
+	uint8_t shm_id;
+	uint8_t reserved[3];
+};
+
+struct __ec_align4 ec_param_ec_codec_set_shm_addr {
+	uint64_t phys_addr;
+	uint32_t len;
+	uint8_t shm_id;
+	uint8_t reserved[3];
+};
+
+struct __ec_align4 ec_param_ec_codec {
+	uint8_t cmd; /* enum ec_codec_subcmd */
+	uint8_t reserved[3];
+
+	union {
+		struct ec_param_ec_codec_get_shm_addr
+				get_shm_addr_param;
+		struct ec_param_ec_codec_set_shm_addr
+				set_shm_addr_param;
+	};
+};
+
+struct __ec_align4 ec_response_ec_codec_get_capabilities {
+	uint32_t capabilities;
+};
+
+struct __ec_align4 ec_response_ec_codec_get_shm_addr {
+	uint64_t phys_addr;
+	uint32_t len;
+	uint8_t type;
+	uint8_t reserved[3];
+};
+
+/*****************************************************************************/
+
 /* Commands for DMIC on audio codec. */
-#define EC_CMD_EC_CODEC_DMIC 0x00BC
+#define EC_CMD_EC_CODEC_DMIC 0x00BD
 
 enum ec_codec_dmic_subcmd {
 	EC_CODEC_DMIC_SET_GAIN = 0x0,
@@ -4500,7 +4560,7 @@ struct __ec_align1 ec_response_ec_codec_dmic_get_gain {
 
 /* Commands for I2S RX on audio codec. */
 
-#define EC_CMD_EC_CODEC_I2S_RX 0x00BD
+#define EC_CMD_EC_CODEC_I2S_RX 0x00BE
 
 enum ec_codec_i2s_rx_subcmd {
 	EC_CODEC_I2S_RX_ENABLE = 0x0,
-- 
2.23.0.581.g78d2f28ef7-goog

