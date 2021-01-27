Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FA3C3055EA
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 09:38:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231169AbhA0Ih6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 03:37:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231455AbhA0Ifs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 03:35:48 -0500
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AAB2C061794
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 00:32:41 -0800 (PST)
Received: by mail-qk1-x749.google.com with SMTP id 70so934913qkh.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 00:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=RaHwNMHy6Q38UiSowCFhrFgySXI51I5XcIPwGHCFzHA=;
        b=gt9CAJsB4pywidn35l9GS7kegoCleTTUcDZQcAThNVCvSLsL96zDlM02lHQsGfKQ4c
         nsHoKonjbw5h9LIEPq4EboL2a1/SsfYSAUu/BUE/cwZnBWXda+GTE9VNTxAl1MQ9ztOQ
         6gc8/U7UN3d21+aj9xiGZGioe1yftTZmpYLKQN9YWg+z/TRqfPjgCc+2macCjkKVx28A
         qHAjRc8Qs0f8MmcSNqAu9+fZnYQ5UW0EQT8ibFMEem5CnFSMe5v62wxmy9417Kk0613z
         8zigCiHr9ge6GEe+D6moVsmhYHXFMeVM4b0IJnK/ECA6/6A/j6higCoRvB91xZxYNpkB
         lwgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=RaHwNMHy6Q38UiSowCFhrFgySXI51I5XcIPwGHCFzHA=;
        b=RcelpnENP6vgGE+Drv33Li9SN8pOJITlGYa54Rb+IvurS/rmR52pJ/5TC2sUH+GRtl
         rn+nbtVd8QaEXlq6MYCWJ/AGtcfgZ6wg2i+hsJQ+0b3B6yE51vNbhx28S44MCarhg53q
         Dn+A+29vOvm/U8R8qVWiDUhhLzRf3Z20I/TsvzDaQvXQX7Totmds75ULtyfH9CXZw4HK
         FGZD6GEWo0o/VCbYHkKSdQ3g8l3D7bnnpaDquYmlw/quaRWa+UB2oFE0RVlqnpCeKFn1
         NMuFaFRu8n6kq5zmtPV71s8f88DujiiRFfboZ9V8UTKaS6TjqwI91oOxUr6BDyZxUtDD
         MDpw==
X-Gm-Message-State: AOAM533J//JHK0NzQgCFB9HDvWob+9Tl43QZraj0d7t/1MrWCPvRTftF
        Zy+7O71J++uB6xgG4ld9LaC9JZJQygYD
X-Google-Smtp-Source: ABdhPJxPwHBmIFY24IEnCMNSrpm1zBwNilXq7JcimT+k2/ombKudG+h8PD0tqcATpEqofEfIQ5a7TWoIaljj
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:d17d:c7bb:69a2:7e2f])
 (user=tzungbi job=sendgmr) by 2002:ad4:4cd0:: with SMTP id
 i16mr2727580qvz.49.1611736360511; Wed, 27 Jan 2021 00:32:40 -0800 (PST)
Date:   Wed, 27 Jan 2021 16:31:36 +0800
In-Reply-To: <20210127083136.3745652-1-tzungbi@google.com>
Message-Id: <20210127083136.3745652-5-tzungbi@google.com>
Mime-Version: 1.0
References: <20210127083136.3745652-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
Subject: [PATCH v3 4/4] remoteproc/mediatek: support L1TCM
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, mathieu.poirier@linaro.org,
        devicetree@vger.kernel.org, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

L1TCM is a high performance memory region in MT8192 SCP.

Reads L1TCM memory region from DTS to determine if the machine supports.
Loads L1TCM memory region to SCP sys if the firmware provides.

Starts from MT8192 SCP, the firmware contains physical addresses for
each memory region, for instance:

Program Headers:
  Type   Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
  LOAD   0xXXXXXX 0xXXXXXXXX 0x10500000 0xXXXXX 0xXXXXX XXX 0xXXXX
  LOAD   0xXXXXXX 0xXXXXXXXX 0x10700000 0xXXXXX 0xXXXXX XXX 0xXXXX
  LOAD   0xXXXXXX 0xXXXXXXXX 0x50000000 0xXXXXX 0xXXXXX XXX 0xXXXX

Kernel driver can use the "PhysAddr" (i.e. da in the da_to_va callbacks)
to know the ELF segment belongs to which region.

To backward compatible to MT8183 SCP, separates the da_to_va callbacks
for new and legacy version.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/remoteproc/mtk_common.h |  5 +++
 drivers/remoteproc/mtk_scp.c    | 56 +++++++++++++++++++++++++++++++--
 2 files changed, 59 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
index 204691138677..61901f5efa05 100644
--- a/drivers/remoteproc/mtk_common.h
+++ b/drivers/remoteproc/mtk_common.h
@@ -77,6 +77,7 @@ struct mtk_scp_of_data {
 	void (*scp_reset_assert)(struct mtk_scp *scp);
 	void (*scp_reset_deassert)(struct mtk_scp *scp);
 	void (*scp_stop)(struct mtk_scp *scp);
+	void *(*scp_da_to_va)(struct mtk_scp *scp, u64 da, size_t len);
 
 	u32 host_to_scp_reg;
 	u32 host_to_scp_int_bit;
@@ -91,6 +92,10 @@ struct mtk_scp {
 	void __iomem *reg_base;
 	void __iomem *sram_base;
 	size_t sram_size;
+	phys_addr_t sram_phys;
+	void __iomem *l1tcm_base;
+	size_t l1tcm_size;
+	phys_addr_t l1tcm_phys;
 
 	const struct mtk_scp_of_data *data;
 
diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 05b157689121..ce727598c41c 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -463,9 +463,8 @@ static int scp_start(struct rproc *rproc)
 	return ret;
 }
 
-static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
+static void *mt8183_scp_da_to_va(struct mtk_scp *scp, u64 da, size_t len)
 {
-	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
 	int offset;
 
 	if (da < scp->sram_size) {
@@ -481,6 +480,42 @@ static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
 	return NULL;
 }
 
+static void *mt8192_scp_da_to_va(struct mtk_scp *scp, u64 da, size_t len)
+{
+	int offset;
+
+	if (da >= scp->sram_phys &&
+	    (da + len) <= scp->sram_phys + scp->sram_size) {
+		offset = da - scp->sram_phys;
+		return (void __force *)scp->sram_base + offset;
+	}
+
+	/* optional memory region */
+	if (scp->l1tcm_size &&
+	    da >= scp->l1tcm_phys &&
+	    (da + len) <= scp->l1tcm_phys + scp->l1tcm_size) {
+		offset = da - scp->l1tcm_phys;
+		return (void __force *)scp->l1tcm_base + offset;
+	}
+
+	/* optional memory region */
+	if (scp->dram_size &&
+	    da >= scp->dma_addr &&
+	    (da + len) <= scp->dma_addr + scp->dram_size) {
+		offset = da - scp->dma_addr;
+		return scp->cpu_addr + offset;
+	}
+
+	return NULL;
+}
+
+static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+
+	return scp->data->scp_da_to_va(scp, da, len);
+}
+
 static void mt8183_scp_stop(struct mtk_scp *scp)
 {
 	/* Disable SCP watchdog */
@@ -719,6 +754,21 @@ static int scp_probe(struct platform_device *pdev)
 		goto free_rproc;
 	}
 	scp->sram_size = resource_size(res);
+	scp->sram_phys = res->start;
+
+	/* l1tcm is an optional memory region */
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "l1tcm");
+	scp->l1tcm_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR((__force void *)scp->l1tcm_base)) {
+		ret = PTR_ERR((__force void *)scp->l1tcm_base);
+		if (ret != -EINVAL) {
+			dev_err(dev, "Failed to map l1tcm memory\n");
+			goto free_rproc;
+		}
+	} else {
+		scp->l1tcm_size = resource_size(res);
+		scp->l1tcm_phys = res->start;
+	}
 
 	mutex_init(&scp->send_lock);
 	for (i = 0; i < SCP_IPI_MAX; i++)
@@ -807,6 +857,7 @@ static const struct mtk_scp_of_data mt8183_of_data = {
 	.scp_reset_assert = mt8183_scp_reset_assert,
 	.scp_reset_deassert = mt8183_scp_reset_deassert,
 	.scp_stop = mt8183_scp_stop,
+	.scp_da_to_va = mt8183_scp_da_to_va,
 	.host_to_scp_reg = MT8183_HOST_TO_SCP,
 	.host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
 	.ipi_buf_offset = 0x7bdb0,
@@ -818,6 +869,7 @@ static const struct mtk_scp_of_data mt8192_of_data = {
 	.scp_reset_assert = mt8192_scp_reset_assert,
 	.scp_reset_deassert = mt8192_scp_reset_deassert,
 	.scp_stop = mt8192_scp_stop,
+	.scp_da_to_va = mt8192_scp_da_to_va,
 	.host_to_scp_reg = MT8192_GIPC_IN_SET,
 	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
 };
-- 
2.30.0.280.ga3ce27912f-goog

