Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91EB6CC83A
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:58:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726753AbfJEF6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:58:54 -0400
Received: from mail-qt1-f202.google.com ([209.85.160.202]:43081 "EHLO
        mail-qt1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:58:54 -0400
Received: by mail-qt1-f202.google.com with SMTP id j5so8959863qtn.10
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=NeC00R2HDPjugyY089WdATWGGggY9LDPrJpjGM7g9N0=;
        b=gQcVUJ+XpqurKBASnZl+Mwj5bZMVoRMdX5B6KjbbhnrQJscx/JqIIoB045wqSc36BU
         5jg9Pr8zuIvWPWim7wW1zai7arWV8cJ8241rjAOiokot5W+TY1BV02dnQIrGuf0GTkdP
         gBQ3mkXQw5BJojsYPJ2DawQsUehAJFqBTpF2K8ldQSZsdpWLDLGsSnZpaSXL5J4X1Pu4
         Eh9f+PgX2EnJpKzwXCpyBqu7VbuQ+0oyhdUgxU6wtGT3jMj4ximqEQO+MYgKZgLwHr1f
         DmsKfXdZlcccVfHN+Pbyax+3wwWBBHK2g4kJLNWIN21Elr21/esoHgWvMT9nfPMbhwN5
         /J2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=NeC00R2HDPjugyY089WdATWGGggY9LDPrJpjGM7g9N0=;
        b=mhy1rZqU4YVEfmO6NnJ1Dsa30K9nEtSjGRMpJkk3pIxeV0NK3w0nayXqsnyQ63LyWa
         ScKkEr4hjhlQdm3W4GMSOqEyHDglEUDEgHZV1tAcw2O60RJwfE3rlAlH/0HMjoP4GLeE
         0mr5uiG+CuvSefaj/GEY7IgrnruWH2J+bxgcJEtj3z/sXyBeW1mXBWIj8e3wxEGORGc2
         xcmULeRhMAkC2qWRzZcyyOGbHfa3CskbaUemNiJ1GnGuQTBFrE5VN+4x3yxNCFVdbW1B
         xnbsQuvoVZ206qAmf4PROidNghyhuGmCjy9BaAymXxEWpALl9/OTF17kkWZFyykgDFOP
         2Yog==
X-Gm-Message-State: APjAAAXMzazVi2dNrnsKXC5dGHPbExHVUZiXPPv4B8d9pbDLQ9RAoZAb
        JvSyejf5a/LtCkKceLF28m66D5Ip2Pod
X-Google-Smtp-Source: APXvYqxWeSW1A2QUEGeWYqnxp/i3scGMYhcDvxbpndqqbVhBiuL+kV3G4ctRS9IJDexwFucU9VzAUnBb1/08
X-Received: by 2002:ac8:474c:: with SMTP id k12mr20289760qtp.319.1570255132978;
 Fri, 04 Oct 2019 22:58:52 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:02 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.4.Idc3c6e1cd94b70bf010249928d4a93c6c90495b7@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 04/10] platform/chrome: cros_ec: add common commands for EC codec
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

