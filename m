Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A5866B5FBA
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 19:22:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230162AbjCKSWq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 13:22:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230408AbjCKSWl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 13:22:41 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 666626C19A
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:22:13 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id y15so1243259lfa.7
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678558930;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JmnRhaQGnYcC7TxoQ5v3x/8cn+va4CZCsQk0t4OobFo=;
        b=AC/ukQeKMxdHZ23v4i30womGZipKE037WploWizG2cfUdyu+vantRxIkIllPUBol3i
         4lg5Jabqf4EI9pzKAVFO8+9Ksmgxs6IpEJjxf6bnfcFb375hp6eIdhN2xwF+LW/F5gL+
         Tjxy5707MCgfbc4cDapWQX3W5F1VoDs69fvwTu6r0BD3oJjmnqXSKMn19PAJMpXTsqwv
         Yp0dQ81J1i0XE8zWQVk7aLejLFR6fdJni1b5p9aM+pPs1vzgc3Iq0PvGBsVAYDQXN36D
         +Bupigzlr/hwUG+pSv0axQHXkA5rgGw70ACG7t6irDC5hu0dw0Bh4mXmutNI7wcDgr1i
         qhfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678558930;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JmnRhaQGnYcC7TxoQ5v3x/8cn+va4CZCsQk0t4OobFo=;
        b=Ft7QgvuRwJfyxvytfX7cdQhB7hYkW8EYmBtNhIHn5Mie0fyonnISlVD/vGJ3BQTkkv
         E0x+ZZVr5T2LhTzln/GFn/YwefTAeQFayOpUl2Ta1GVfvEGXwPFcefeZlOECXbiSMOiS
         bYdC2fwKixw0f9YQuA8T7GWgvVFP31897UioKf49l5FbtR7glFkOBH8HDiHfn0hSfgAR
         Hn3CmHglRSXEOQEE4TsX2gAaRe6FZ00xrbX7UO5LsaxemSy3q0iH28eHQgdtvN02Az7x
         e6zXmwHD44H/UYvlebDADs6eQFJoo/QZkN/9rdXzXENnA7VRvICkU5gk8AaiXh97CICw
         r6Ow==
X-Gm-Message-State: AO0yUKUCkCKZR6/x139oag5nFaElpjuivujhLf6zVafNobMj7PncJzot
        iwopewg0hxIuja/YtpMOK0AlF12j4h/JdCSixK4=
X-Google-Smtp-Source: AK7set8NCBI9nVwle9lo/NB8RqSKuKW3MFp0Hm3dpf5/cUBkLaFc7URl21CR0VciFmAmLns4/5gKtQ==
X-Received: by 2002:ac2:550c:0:b0:4db:379c:ae15 with SMTP id j12-20020ac2550c000000b004db379cae15mr8735849lfk.57.1678558929772;
        Sat, 11 Mar 2023 10:22:09 -0800 (PST)
Received: from 0002-mmc-dw_mmc-add-an-option-to-force-32-bit-access-to-6.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id h1-20020a2ea481000000b0029353caa593sm415909lji.5.2023.03.11.10.22.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 10:22:09 -0800 (PST)
Message-Id: <1678558770.495747-2-sleirsgoevy@gmail.com>
In-Reply-To: <1678558770.495747-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 21:15:38 +0300
Subject: [PATCH v2 2/2] mmc: dw_mmc: add an option to force 32-bit access to
 64-bit FIFO
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

Some Samsung Exynos boards using the arm64 architecture have DW MMC
controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
systems the 64-bit FIFO registers must be accessed in two 32-bit halves.
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


