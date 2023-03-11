Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5E906B5C3A
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 14:24:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbjCKNYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 08:24:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbjCKNYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 08:24:52 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14511119974
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:24:51 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id a32so8154091ljr.9
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678541089;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F7N4XcDM0EGKh1CMHgzJCQlyNXmM/HdEL/4Dosq+GKE=;
        b=El8cTa0urcWawWjtTJ9BKaThaq2IIWCOtZfnsdDyEDH6f81kh1Czg7TCUrpLJyz4vN
         hj5oaq12ytbT6XKEAxnAUPyHErAY8kS7uMGd9DutrJnjMXqjQGeZSNQNQqV3wpCYB6tz
         a3KvH37MpxpDaemu3clU1PGhsVT+BU39gI+F0STDT26iyIep5wlZJ0WnQNtYuhcc2MNi
         CW8p+qIRu7Cc3TYsTjiHk9VBqihBiR2/xcun45lvp2osoARlyCyVON/BFeWANl4i6cOg
         2WYXE3zbN6li2lKqn1XR2vnclBVDuqApcWcdUIjzjO+4+qIbVaKbvOH9RTCqTVYqi1Jc
         TBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678541089;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F7N4XcDM0EGKh1CMHgzJCQlyNXmM/HdEL/4Dosq+GKE=;
        b=SjXowH7dgB/6vkY137doSQv1ezSJA24EFlw2jxfdE8ESEgqrzI76zTjJ99lvyWPNLK
         +wHVhKgVTTsKxRqIDyMg3nnBDyDmKAGYvaO1Om+LtEG5tvjlqy5Pgsc8EkdnRLByQDv0
         ok7VOlXvx5Vox1eAebRUriCx3ViQH66BchbcUDPYVpqAq7cAdSxTGtgm2Mkc6FXKmtGG
         PM2hjHvcJSF7ynbKpMBkzQsV0YiQhUMlUaL7OFmuphVYTCvMBFj92umr6lQA3h+gnfS5
         NHhFIGS9q6312VNgKJqnxHPBJ+5Dtnj6EJy7PYMsxIbHrJfNR1korWA9Tvr7SRNe9xf9
         X/9A==
X-Gm-Message-State: AO0yUKXuw0toFj2GCC+W26hTIfNEBpARGpsX4Fc/cYq5KbXVnilrjLvK
        ilCXBLs7YB+TXBrVEleykM7n7KdtX5DPpNqncW4=
X-Google-Smtp-Source: AK7set9/3kYeFYqcvv/E64alsA5EZbO732Kosq202qL9gZkEFZ3cGumMiumXTxvVZTUYuQjSuFUm8Q==
X-Received: by 2002:a2e:720c:0:b0:293:4ba1:a78b with SMTP id n12-20020a2e720c000000b002934ba1a78bmr8724508ljc.25.1678541089098;
        Sat, 11 Mar 2023 05:24:49 -0800 (PST)
Received: from 0002-dw_mmc-add-an-option-to-force-32-bit-accesses-to-64-.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id m2-20020a2e7102000000b002934febffe4sm326194ljc.128.2023.03.11.05.24.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 05:24:48 -0800 (PST)
Message-ID: <640c8120.2e0a0220.360e3.0c71@mx.google.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 15:54:50 +0300
Subject: [PATCH 2/2] dw_mmc: add an option to force 32-bit accesses to 64-bit
 device registers
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

---
 drivers/mmc/host/dw_mmc.c | 125 +++++++++++++++++++++++++++++++++++++-
 drivers/mmc/host/dw_mmc.h |   2 +
 2 files changed, 125 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index 581614196..eee430620 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -2575,6 +2575,119 @@ static void dw_mci_pull_data64(struct dw_mci *host, void *buf, int cnt)
 	}
 }
 
+/*
+  Some dw_mmc devices have 64-bit FIFOs, but expect them to be
+  accessed using two 32-bit accesses. If such controller is used
+  with a 64-bit kernel, this has to be done explicitly.
+
+  XXX: Is this issue specific to Exynos7?
+*/
+
+static inline uint64_t mci_fifo_readq_32(void __iomem *addr)
+{
+	uint64_t ans;
+	uint32_t proxy[2];
+
+	proxy[0] = mci_fifo_readl(addr);
+	proxy[1] = mci_fifo_readl(addr+4);
+	memcpy(&ans, proxy, 8);
+	return ans;
+}
+
+static inline void mci_fifo_writeq_32(void __iomem *addr, uint64_t value)
+{
+	uint32_t proxy[2];
+
+	memcpy(proxy, &value, 8);
+	mci_fifo_writel(addr, proxy[0]);
+	mci_fifo_writel(addr+4, proxy[1]);
+}
+
+static void dw_mci_push_data64_32(struct dw_mci *host, void *buf, int cnt)
+{
+	struct mmc_data *data = host->data;
+	int init_cnt = cnt;
+
+	/* try and push anything in the part_buf */
+	if (unlikely(host->part_buf_count)) {
+		int len = dw_mci_push_part_bytes(host, buf, cnt);
+
+		buf += len;
+		cnt -= len;
+
+		if (host->part_buf_count == 8) {
+			mci_fifo_writeq_32(host->fifo_reg, host->part_buf);
+			host->part_buf_count = 0;
+		}
+	}
+#ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
+	if (unlikely((unsigned long)buf & 0x7)) {
+		while (cnt >= 8) {
+			u64 aligned_buf[16];
+			int len = min(cnt & -8, (int)sizeof(aligned_buf));
+			int items = len >> 3;
+			int i;
+			/* memcpy from input buffer into aligned buffer */
+			memcpy(aligned_buf, buf, len);
+			buf += len;
+			cnt -= len;
+			/* push data from aligned buffer into fifo */
+			for (i = 0; i < items; ++i)
+				mci_fifo_writeq_32(host->fifo_reg, aligned_buf[i]);
+		}
+	} else
+#endif
+	{
+		u64 *pdata = buf;
+
+		for (; cnt >= 8; cnt -= 8)
+			mci_fifo_writeq_32(host->fifo_reg, *pdata++);
+		buf = pdata;
+	}
+	/* put anything remaining in the part_buf */
+	if (cnt) {
+		dw_mci_set_part_bytes(host, buf, cnt);
+		/* Push data if we have reached the expected data length */
+		if ((data->bytes_xfered + init_cnt) ==
+		    (data->blksz * data->blocks))
+			mci_fifo_writeq_32(host->fifo_reg, host->part_buf);
+	}
+}
+
+static void dw_mci_pull_data64_32(struct dw_mci *host, void *buf, int cnt)
+{
+#ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
+	if (unlikely((unsigned long)buf & 0x7)) {
+		while (cnt >= 8) {
+			/* pull data from fifo into aligned buffer */
+			u64 aligned_buf[16];
+			int len = min(cnt & -8, (int)sizeof(aligned_buf));
+			int items = len >> 3;
+			int i;
+
+			for (i = 0; i < items; ++i)
+				aligned_buf[i] = mci_fifo_readq_32(host->fifo_reg);
+
+			/* memcpy from aligned buffer into output buffer */
+			memcpy(buf, aligned_buf, len);
+			buf += len;
+			cnt -= len;
+		}
+	} else
+#endif
+	{
+		u64 *pdata = buf;
+
+		for (; cnt >= 8; cnt -= 8)
+			*pdata++ = mci_fifo_readq_32(host->fifo_reg);
+		buf = pdata;
+	}
+	if (cnt) {
+		host->part_buf = mci_fifo_readq_32(host->fifo_reg);
+		dw_mci_pull_final_bytes(host, buf, cnt);
+	}
+}
+
 static void dw_mci_pull_data(struct dw_mci *host, void *buf, int cnt)
 {
 	int len;
@@ -3239,6 +3352,9 @@ static struct dw_mci_board *dw_mci_parse_dt(struct dw_mci *host)
 	if (device_property_present(dev, "fifo-watermark-aligned"))
 		host->wm_aligned = true;
 
+	if (device_property_present(dev, "fifo-access-32bit"))
+		host->quirks |= DW_MMC_QUIRK_FIFO64_32;
+
 	if (!device_property_read_u32(dev, "clock-frequency", &clock_frequency))
 		pdata->bus_hz = clock_frequency;
 
@@ -3367,8 +3483,13 @@ int dw_mci_probe(struct dw_mci *host)
 		width = 16;
 		host->data_shift = 1;
 	} else if (i == 2) {
-		host->push_data = dw_mci_push_data64;
-		host->pull_data = dw_mci_pull_data64;
+		if ((host->quirks & DW_MMC_QUIRK_FIFO64_32)) {
+			host->push_data = dw_mci_push_data64_32;
+			host->pull_data = dw_mci_pull_data64_32;
+		} else {
+			host->push_data = dw_mci_push_data64;
+			host->pull_data = dw_mci_pull_data64;
+		}
 		width = 64;
 		host->data_shift = 3;
 	} else {
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index 4ed81f94f..edd642b92 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -280,6 +280,8 @@ struct dw_mci_board {
 
 /* Support for longer data read timeout */
 #define DW_MMC_QUIRK_EXTENDED_TMOUT            BIT(0)
+/* Force 32-bit access to the FIFO */
+#define DW_MMC_QUIRK_FIFO64_32                 BIT(1)
 
 #define DW_MMC_240A		0x240a
 #define DW_MMC_280A		0x280a
-- 
2.38.3


