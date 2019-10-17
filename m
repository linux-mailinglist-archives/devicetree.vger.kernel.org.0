Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13B5ADAEF6
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:00:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439756AbfJQOAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:00:54 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:38372 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437401AbfJQOAy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:00:54 -0400
Received: by mail-pl1-f201.google.com with SMTP id g7so1472807plo.5
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=ZtxS2Vg5dy9sdeqWSW4v3GMIuu7neueM+a0/0finMLQ=;
        b=M6nU9KLEjXfvAKGGIcTXI6zJp5ma5N1gkNMHB3hbGpFV61JejCigl7E+o/dhIf83tT
         j0vlBK7A2lKWCYAlynxa+bA4bVRyB7E8ulDDGQ2l4r3iSw/eIKHnhmHb664mmihZ6hoP
         SBt9wZ19QKMPhxDsksVnx2dPqZcIXslPF+HjQ21P+sgn2IFXHMwUGXnauHA26gNVrPMK
         9TvsBfV2hLW6H0t1m5H2khoawd+BpK0E/GxNZ+w0CB75R4y441lFXdh7yytbXxUwaxXI
         V3WNRa/tS/NQiGv96/m6ipIt70b014erxEkTEtwMuQlaWOAB4uhhXTl/i95S7C1ktZlf
         DI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=ZtxS2Vg5dy9sdeqWSW4v3GMIuu7neueM+a0/0finMLQ=;
        b=pLiC4q+kjGUvxo9GEXGsrnchPfvhvvzynIZLyyD04dCdImr0NhZIRWRV/LKmvQZ20Y
         Yxyrkd2FPuq5hmaFJEeq99S/RFACsrOZQL7H20nhkALIzd2idyrCkywEYVn+0L+bXNRz
         NAGtjmSs5QZYKWK3xFioWo25qyyrYCl0i/mafdQI+aGJe8+hJxazuDkmSOtv/13vv/EZ
         IPRjH3Txz4NhyFKFvPRUZ0LjdLCVjwwB4nI7hnjMnnFBhHyHilhjIzOqra4yw77gfMJ6
         xSZ5fuY+WphUjmZMqI+Rpuv31t7H34rG4RkcZJsedqXzA3mN8tijWbl2AGChuckhAQtd
         mWtw==
X-Gm-Message-State: APjAAAXxTBdzO/6oaIl1M/H3BieRWYTdVxBmq7RY8RSo2Zk4SoW2BHMj
        JORpFq37ZRUQUe+5ZS/R3RzLMd3fE1RW
X-Google-Smtp-Source: APXvYqwLBYAeOAkN4xCiOGFngVLfQJS4wUNwXvRTKtCCPOqhKcppsuSiHc0p+LqI7MBnVxOFEUuJC7vx1Xfb
X-Received: by 2002:a65:6701:: with SMTP id u1mr4348299pgf.368.1571320853382;
 Thu, 17 Oct 2019 07:00:53 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:09 +0800
In-Reply-To: <20191017213539.00-tzungbi@google.com>
Message-Id: <20191017213539.04.Idc3c6e1cd94b70bf010249928d4a93c6c90495b7@changeid>
Mime-Version: 1.0
References: <20191017213539.00-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 04/10] platform/chrome: cros_ec: add common commands for EC codec
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com,
        Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the following common commands:
- GET_CAPABILITIES
- GET_SHM_ADDR
- SET_SHM_ADDR

Acked-by: Benson Leung <bleung@chromium.org>
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
2.23.0.700.g56cf767bdb-goog

