Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1376AD5FF2
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731389AbfJNKU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:20:59 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:38198 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731119AbfJNKU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:20:59 -0400
Received: by mail-pl1-f201.google.com with SMTP id g7so9836677plo.5
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=TLh1zlLddJfY1tcfiX9PMO1jsoV1ruw1rDn5Rffer8A=;
        b=Rleh7TzNZmFh8cyq+gHWiaQO2joOFPMzRZ0tPkAhT5j0JqpSDvhlBaGaD8ODTcbPeJ
         0rsB1tmsHCmxYL2YLHmqcwlXG953mFv+BNnbckm0ZSazVPNZuVc/7TeQufOU06CEKw1q
         oTOgKR4m6YDvswatHLbRGhXK1zAQUNG8GN6wjIdREAuc45IAQqS5sq23oNTI70K4TOIY
         rdakiARNh9CeaG72/jn5Ii43IvIqqt38uYApPxM08DWScKTM+7OCffbDn6OCKcdzvhLw
         1bbnIP/H/2RhiIc1w3so4RkJ+Pb5WHmjEmWg+aJ5fLbM8Bf6Ms3jITDPqhIuQzb6umV8
         5/AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=TLh1zlLddJfY1tcfiX9PMO1jsoV1ruw1rDn5Rffer8A=;
        b=czc6wa3cp5EQgsd7KIra0Hhzg/ZOFyzEF5AW13baRzAD1BvnZzv5GNKD2lGJK906iz
         dFQCWHwBb5YD8Uzv/1OZ3AgCqvjFs2nmJ/U66nq/h2jGhm3Wk0EJwhyvvog9oEC1p6hz
         ZR5lMcPAeXXy0bBdSMccHShneo6lD9Gja7pSOW/5i6M/hVQ3btRKm3wxT5HCJ5c1QoNo
         6UM3SeR9ZY6kc3yhcVnYnSx9j8fT+9RNArEDqVSzEciULtnfCJkstZIJf7HUloL99pfA
         n1yLl86h+qd4PqUE3Ksa9LFakcoPIKSKNVKRLImwTlntVXueLdvD676EqHm9Gi6PNn3+
         AmiQ==
X-Gm-Message-State: APjAAAUn/4g8pF2Eob2RrCwLixSBtm85Laq1I6Jl+6HO2asafKcpaQ6S
        QKlFoWdvdvqaG16daw4eGATRhlUOEsj8
X-Google-Smtp-Source: APXvYqwlshs8exA240tFvmfw5Hfa4JFHcrmRDH0bla0X83GrSR2knU6EWAOFhn4I/BQVfcV+pGVGPrjIHhZ/
X-Received: by 2002:a63:6301:: with SMTP id x1mr33705963pgb.271.1571048458538;
 Mon, 14 Oct 2019 03:20:58 -0700 (PDT)
Date:   Mon, 14 Oct 2019 18:20:16 +0800
In-Reply-To: <20191014102022.236013-1-tzungbi@google.com>
Message-Id: <20191014180059.04.Idc3c6e1cd94b70bf010249928d4a93c6c90495b7@changeid>
Mime-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v3 04/10] platform/chrome: cros_ec: add common commands for EC codec
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
2.23.0.700.g56cf767bdb-goog

