Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA6AE6668D9
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 03:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235881AbjALCYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 21:24:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232981AbjALCYt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 21:24:49 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D5034565B
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 18:24:48 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id b9-20020a17090a7ac900b00226ef160dcaso17544946pjl.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 18:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1/rux+dB2ue+u77r+Lmx539KLyGVCKrU+T8EBWwu5M=;
        b=BCgXNyeKTVBT9UE6QAv6NmVnff6UTk9WyIeZsC/z2ZVmo1faxKQ3YA206RrErs6MF3
         XZA+R7YDuKksSYOCsjmYPJqFeVWi6Mw1IL2gYKnYI3MKtl7hj1m3e9pnWVB8TpEdy0y8
         zPmtwfGm863DRYUHZpZM6f649LY/TGdJC6Cyg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1/rux+dB2ue+u77r+Lmx539KLyGVCKrU+T8EBWwu5M=;
        b=A/d06w2LoGEXpKlv65RYQbK1FyNvu/YpxKxhYLdGz3xobCa04/LVk0/ZZ2zgyklyFm
         AWfqugAEM0E+Uxc+vajIqEMkgn6Ocll2B5Vn8pzW8K+OUiMoJ2/gcwActFylMYSjJHbJ
         FCjQeBJyiwbvLQlpgB0OAquTbW20nmO038m5y3Us2arxunvonNZjOkDUY+B+PrLy9CNR
         KDdEWqIlGl6yVA79MMUmLxiYLl6JJwWcRpfdtPKzqvJ6+PoiCYQFYcfJXordjeW4+0Lc
         1hS3EB1+p1Nt3ENAc5VdrMRoR5m+rQejthuul2aAnSqvkbDLCPlE4YfDA3DtdNiY//8E
         OI4w==
X-Gm-Message-State: AFqh2koMjQGFQw7WOpn62wJ+JCb0mUZ4sZtjpFRAR3hWWpZHX+/I8zTK
        d790KFZcoeV62rC/ucSOB+KdWw==
X-Google-Smtp-Source: AMrXdXvECWA8coKk4wsGAHUYpVCwg7e0sEcYrN8RFbpskoFvlfaqSiO9qS48kVhqHzDEYmq4zRN54w==
X-Received: by 2002:a17:903:32d1:b0:191:3b7b:3c2c with SMTP id i17-20020a17090332d100b001913b7b3c2cmr6720108plr.22.1673490288056;
        Wed, 11 Jan 2023 18:24:48 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id a1-20020a1709027e4100b00193020e8a90sm10759135pln.294.2023.01.11.18.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 18:24:47 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v4 3/8] mmc: sdhci-pxav2: add register workaround for PXA168 silicon bug
Date:   Wed, 11 Jan 2023 18:24:11 -0800
Message-Id: <20230112022416.8474-4-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112022416.8474-1-doug@schmorgal.com>
References: <20230112022416.8474-1-doug@schmorgal.com>
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
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index 5707d597ecae..5e01dab94426 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -80,6 +80,15 @@ static void pxav2_reset(struct sdhci_host *host, u8 mask)
 	}
 }
 
+static u16 pxav1_readw(struct sdhci_host *host, int reg)
+{
+	/* Workaround for data abort exception on SDH2 and SDH4 on PXA168 */
+	if (reg == SDHCI_HOST_VERSION)
+		return readl(host->ioaddr + SDHCI_HOST_VERSION - 2) >> 16;
+
+	return readw(host->ioaddr + reg);
+}
+
 static void pxav2_mmc_set_bus_width(struct sdhci_host *host, int width)
 {
 	u8 ctrl;
@@ -107,6 +116,7 @@ struct sdhci_pxa_variant {
 };
 
 static const struct sdhci_ops pxav1_sdhci_ops = {
+	.read_w        = pxav1_readw,
 	.set_clock     = sdhci_set_clock,
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_bus_width = pxav2_mmc_set_bus_width,
-- 
2.34.1

