Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE906639F99
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:45:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiK1CpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:45:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229719AbiK1CpC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:45:02 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96B3E11837
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:58 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id g10so8858969plo.11
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAE47eBAg1zliqPXDBtjPfc/gbVCKlkaCMZMJOx3UtA=;
        b=Mcukg01r6BSASGzup2hRroyoV2Bln5z9dmakGQN80Yvkx5RRZi0RyVylIuoGuJ2wdK
         pPMzhmz+Y6ZvrfxSXRtFQ7qs5J9PBzG6+1RzCLUHIaCxbr8jgLTfmVfkJWEm4GjEW5r0
         wwq6e4nxSgtW3vv7S97ougUsbjaqwl6hAPsVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAE47eBAg1zliqPXDBtjPfc/gbVCKlkaCMZMJOx3UtA=;
        b=HfAjwbyraHLJ39SttqqquU4m2EWGJ7BTNA0kEvJnd89zm1Q0frm/LJh/cCL1dPKVMA
         FJAOjPASPVlLuG2D3zFdjD2uUdqvqcyU0ecaCZ6/TWYk4PZZjDGvcL31vkbtzCMV0Wvs
         ec3+j1m5HUOXsBwLGOOWPRx5CAm5UDcWviILvk56kLfXIjmLFTWYU35QkuSpknXLZK53
         FLNg7Nr7q+3PoOlig/OWps/2Cv2nEY6zgSk4n14COADiZ++oVAd95pk+XAd1Q7S2d/Sl
         5JXOnBCVRwARvRpRuGSy9sDTZypusSww9yYAJccMEbz8PvQ0dq6LMlcfN5olqzSJUkGH
         Mq8A==
X-Gm-Message-State: ANoB5pk+aSZROhmYh5LByOWkL343OHLn+dRqmt7/Oc3KkMBBv/MjIzvg
        4OzWaIWC9E83BAp7CqD98B6wgg==
X-Google-Smtp-Source: AA0mqf6BqBjStzJSKEnPF54A0SyhqjGHHoM2Vx688ni7V9KA8qq7WuTubYRDuVTSj7pf6DBKtyIcFA==
X-Received: by 2002:a17:90a:c298:b0:218:a32f:9612 with SMTP id f24-20020a17090ac29800b00218a32f9612mr40450704pjt.155.1669603497397;
        Sun, 27 Nov 2022 18:44:57 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:44:57 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 6/8] mmc: sdhci-pxav2: add SDIO card IRQ workaround for PXA168 V1 controller
Date:   Sun, 27 Nov 2022 18:44:05 -0800
Message-Id: <20221128024407.224393-7-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128024407.224393-1-doug@schmorgal.com>
References: <20221128024407.224393-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PXA168 has a documented silicon bug that causes SDIO card IRQs to be
missed. Implement the first half of the suggested workaround, which
involves resetting the data port logic and issuing a dummy CMD0 to
restart the clock.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 36 ++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 4996d72c6d23..0b9b2e4b2153 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -20,6 +20,8 @@
 #include <linux/slab.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/mmc/sdio.h>
+#include <linux/mmc/mmc.h>
 
 #include "sdhci.h"
 #include "sdhci-pltfm.h"
@@ -43,6 +45,7 @@
 
 struct sdhci_pxav2_host {
 	struct clk *clk_core;
+	void (*orig_post_req)(struct mmc_host *mmc, struct mmc_request *mrq, int err);
 };
 
 static void pxav2_reset(struct sdhci_host *host, u8 mask)
@@ -96,6 +99,37 @@ static inline u16 pxav1_readw(struct sdhci_host *host, int reg)
 	return readw(host->ioaddr + reg);
 }
 
+static void pxav1_post_req(struct mmc_host *mmc, struct mmc_request *mrq, int err)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pxav2_host *pxav2_host;
+	struct mmc_command dummy_cmd = {};
+	u16 tmp;
+
+	/* If this is an SDIO command, perform errata workaround for silicon bug. */
+	if (!err && mrq->cmd && !mrq->cmd->error &&
+	    (mrq->cmd->opcode == SD_IO_RW_DIRECT ||
+	    mrq->cmd->opcode == SD_IO_RW_EXTENDED)) {
+		/* Reset data port */
+		tmp = readw(host->ioaddr + SDHCI_TIMEOUT_CONTROL);
+		tmp |= 0x400;
+		writew(tmp, host->ioaddr + SDHCI_TIMEOUT_CONTROL);
+
+		/* Clock is now stopped, so restart it by sending a dummy CMD0. */
+		pxav2_host = sdhci_pltfm_priv(sdhci_priv(host));
+
+		dummy_cmd.opcode = MMC_GO_IDLE_STATE;
+		dummy_cmd.arg = 0;
+		dummy_cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_NONE | MMC_CMD_BC;
+
+		mmc_wait_for_cmd(host->mmc, &dummy_cmd, 0);
+	}
+
+	/* Pass onto SDHCI host driver now */
+	if (pxav2_host->orig_post_req)
+		pxav2_host->orig_post_req(mmc, mrq, err);
+}
+
 static void pxav2_mmc_set_bus_width(struct sdhci_host *host, int width)
 {
 	u8 ctrl;
@@ -252,6 +286,8 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 	if (match && of_device_is_compatible(dev->of_node, "mrvl,pxav1-mmc")) {
 		host->quirks |= SDHCI_QUIRK_NO_BUSY_IRQ | SDHCI_QUIRK_32BIT_DMA_SIZE;
 		host->ops = &pxav1_sdhci_ops;
+		pxav2_host->orig_post_req = host->mmc_host_ops.post_req;
+		host->mmc_host_ops.post_req = pxav1_post_req;
 	} else {
 		host->ops = &pxav2_sdhci_ops;
 	}
-- 
2.34.1

