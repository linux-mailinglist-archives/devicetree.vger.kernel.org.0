Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AED24639F9B
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:45:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbiK1CpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:45:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbiK1CpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:45:03 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BEB311814
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:45:00 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id q71so8730539pgq.8
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIe89DUhig3QJVCJKZqXjKN+60deyyb1lybzcqxylE0=;
        b=U7EKtrv//D6dBt4f9FyQFCVaQ2qVEWb3fRejkrh6QboNccNgXNyA6OgPzJOHhDQPeK
         j+XzVoIkBGH1XiRxUK17OoVAZ4nYtvpz5bTED60PKfwYvJpAEhdtjuFZjZD84+dZAqOx
         QvI0shx4i7bZ/AhQOkF2H/PD/Ooepo5WKxuzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pIe89DUhig3QJVCJKZqXjKN+60deyyb1lybzcqxylE0=;
        b=YdfW80zug8UHVETpUUFDe5rIa2BY9V92shSveGn1oaauyVQr1rZRKQB1zSi3FSmKlM
         /ecu8AXqLTgriw0mIhgY/wDij9VdMBzj+UbYQy6hLoFRdo7uKg4diGojbdEZgQnQ4C0X
         DBCpy1CVTFx3s4gdaSu3vpxZeZqwBHtFXdk3TUz4YP90ejwVtBilFeHml21xckDf9UVI
         f80rZ4EOSMl8IpU3qt3lLwsTfzQzznRxu12XG5ep/6B//UCeOqXG4kyaYWS6TRZzQgYv
         z/t04eIrN3lIdNCBk4WqvZvqcSiDJCgnupJB/G2WkOJACtJZLOzNXKlULPKwMT5LaNYu
         WJ4w==
X-Gm-Message-State: ANoB5pl5RcDlUDIotssJ4sSt0Sm8SyD+7ANl/QG6tno41Ddc0F+/PnlW
        r/BckjZLByRbBEaI2r0XJG/KcA==
X-Google-Smtp-Source: AA0mqf4ZSbm165/6Kx52NdTkA9yUuTOPiKUp9ho6phMuoMGFoyT/bQaB95CDSWf4/mJz6m2t9rI2jg==
X-Received: by 2002:a63:a0b:0:b0:46f:53cb:65b5 with SMTP id 11-20020a630a0b000000b0046f53cb65b5mr24726610pgk.507.1669603499800;
        Sun, 27 Nov 2022 18:44:59 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:44:59 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 7/8] mmc: sdhci-pxav2: add optional pinctrl for SDIO IRQ workaround
Date:   Sun, 27 Nov 2022 18:44:06 -0800
Message-Id: <20221128024407.224393-8-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128024407.224393-1-doug@schmorgal.com>
References: <20221128024407.224393-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PXA168 errata recommends that the CMD signal should be detached from
the SD bus while performing the dummy CMD0 to restart the clock.
Implement this using pinctrl states.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 0b9b2e4b2153..6b30f70675e2 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -22,6 +22,7 @@
 #include <linux/of_device.h>
 #include <linux/mmc/sdio.h>
 #include <linux/mmc/mmc.h>
+#include <linux/pinctrl/consumer.h>
 
 #include "sdhci.h"
 #include "sdhci-pltfm.h"
@@ -46,6 +47,9 @@
 struct sdhci_pxav2_host {
 	struct clk *clk_core;
 	void (*orig_post_req)(struct mmc_host *mmc, struct mmc_request *mrq, int err);
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pins_default;
+	struct pinctrl_state *pins_cmd_gpio;
 };
 
 static void pxav2_reset(struct sdhci_host *host, u8 mask)
@@ -118,11 +122,19 @@ static void pxav1_post_req(struct mmc_host *mmc, struct mmc_request *mrq, int er
 		/* Clock is now stopped, so restart it by sending a dummy CMD0. */
 		pxav2_host = sdhci_pltfm_priv(sdhci_priv(host));
 
+		/* Set CMD as high output rather than MMC function while we do CMD0 */
+		if (pxav2_host->pinctrl && pxav2_host->pins_cmd_gpio)
+			pinctrl_select_state(pxav2_host->pinctrl, pxav2_host->pins_cmd_gpio);
+
 		dummy_cmd.opcode = MMC_GO_IDLE_STATE;
 		dummy_cmd.arg = 0;
 		dummy_cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_NONE | MMC_CMD_BC;
 
 		mmc_wait_for_cmd(host->mmc, &dummy_cmd, 0);
+
+		/* Set as MMC function after dummy command is complete */
+		if (pxav2_host->pinctrl && pxav2_host->pins_default)
+			pinctrl_select_state(pxav2_host->pinctrl, pxav2_host->pins_default);
 	}
 
 	/* Pass onto SDHCI host driver now */
@@ -288,6 +300,21 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 		host->ops = &pxav1_sdhci_ops;
 		pxav2_host->orig_post_req = host->mmc_host_ops.post_req;
 		host->mmc_host_ops.post_req = pxav1_post_req;
+
+		/* Set up optional pinctrl for PXA168 SDIO IRQ fix */
+		pxav2_host->pinctrl = devm_pinctrl_get(&pdev->dev);
+		if (!IS_ERR(pxav2_host->pinctrl)) {
+			pxav2_host->pins_cmd_gpio = pinctrl_lookup_state(pxav2_host->pinctrl,
+									 "state_cmd_gpio");
+			if (IS_ERR(pxav2_host->pins_cmd_gpio))
+				pxav2_host->pins_cmd_gpio = NULL;
+			pxav2_host->pins_default = pinctrl_lookup_state(pxav2_host->pinctrl,
+									"default");
+			if (IS_ERR(pxav2_host->pins_default))
+				pxav2_host->pins_default = NULL;
+		} else {
+			pxav2_host->pinctrl = NULL;
+		}
 	} else {
 		host->ops = &pxav2_sdhci_ops;
 	}
-- 
2.34.1

