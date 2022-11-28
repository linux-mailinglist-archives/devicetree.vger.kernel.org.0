Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65047639F91
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:44:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbiK1Cox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:44:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbiK1Cov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:44:51 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6661147E
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:50 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id a22-20020a17090a6d9600b0021896eb5554so12616699pjk.1
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h52LC2fcwXDHkqty7e4d/orwaU1LTOLaC2O9W0blfKw=;
        b=dUil7Im7K9hDFEl6/RqJQ3C1or9z9wnS+K+BCw8nkXpcE7Rz5toyfAsfBGwJTAxbbz
         dhrVb2nyvwnatHp/t1Xd9kgtKVZkHOhImPyo2l5lA38sO0S2+AG1UduIbKxTdk/u6gzh
         ps7eAoOz4t4A9lTyFQ1jrnVWF2Bkl2RAo4/Yo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h52LC2fcwXDHkqty7e4d/orwaU1LTOLaC2O9W0blfKw=;
        b=E+c9676IW7TV1jAFvbSyVwDt8pVfjNyh+0SQBC0hZRtLn4LEh6THecWsgK7A8/zQ8r
         /sM4tnAuvL9mHJwOR9Ej8pFC7r4jcD2kzbct5WmvZTCBs2hPKzuIktm2EAZx4YsSevJm
         hXuC0iZ7oO8e+6jgZAbCod5Avs1zoqxaqWsWlXe5wz9x050eXK7hVAhxZXeWjeaasRmr
         po73BBbG8f4aA4uYqIC1m/ji+eS4jg1tM1C8DwzYhDMmEug3XU+ySGO0A2RBkka59Bnk
         v//9pxzJGR2ozHF4fJgEtyDUcs/IHLstcQ5+K0d9mbvacfgyNCH5FjMjRMhXqOTB/8eT
         prPg==
X-Gm-Message-State: ANoB5pmgC8mM48jsob8oxd24w9M1OeRXpF4H5O1YSRh7FQ0Nz8+sOv8l
        ZvMN6CphKaE5UtgNki0oO4tlhg==
X-Google-Smtp-Source: AA0mqf6jSTk+LA+IeG/Mo4dhpMkPCsh+cCqAcVq9KbtzplY2gFQRos89PHoCPbLa+dhO6dckTa0kgg==
X-Received: by 2002:a17:90a:7003:b0:212:f169:140e with SMTP id f3-20020a17090a700300b00212f169140emr50593366pjk.215.1669603489882;
        Sun, 27 Nov 2022 18:44:49 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:44:49 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 3/8] mmc: sdhci-pxav2: add register workaround for PXA168 silicon bug
Date:   Sun, 27 Nov 2022 18:44:02 -0800
Message-Id: <20221128024407.224393-4-doug@schmorgal.com>
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

The PXA168 has a documented silicon bug that results in a data abort
exception when accessing the SDHCI_HOST_VERSION register on SDH2 and
SDH4 through a 16-bit read. Implement the workaround described in the
errata, which performs a 32-bit read from a lower address instead. This
is safe to use on all four SDH peripherals.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 2f9fa0ecbddd..d76131b8986b 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -80,6 +80,18 @@ static void pxav2_reset(struct sdhci_host *host, u8 mask)
 	}
 }
 
+static inline u16 pxav1_readw(struct sdhci_host *host, int reg)
+{
+	u32 temp;
+	/* Workaround for data abort exception on SDH2 and SDH4 on PXA168 */
+	if (reg == SDHCI_HOST_VERSION) {
+		temp = readl(host->ioaddr + SDHCI_HOST_VERSION - 2) >> 16;
+		return temp & 0xffff;
+	}
+
+	return readw(host->ioaddr + reg);
+}
+
 static void pxav2_mmc_set_bus_width(struct sdhci_host *host, int width)
 {
 	u8 ctrl;
@@ -102,6 +114,7 @@ static void pxav2_mmc_set_bus_width(struct sdhci_host *host, int width)
 }
 
 static const struct sdhci_ops pxav1_sdhci_ops = {
+	.read_w        = pxav1_readw,
 	.set_clock     = sdhci_set_clock,
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_bus_width = pxav2_mmc_set_bus_width,
-- 
2.34.1

