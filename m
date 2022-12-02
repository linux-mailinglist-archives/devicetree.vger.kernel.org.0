Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9AEA63FE91
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 04:13:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231382AbiLBDNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 22:13:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231281AbiLBDNy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 22:13:54 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA3F9A1C30
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 19:13:52 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id r18so3314305pgr.12
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 19:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tv1e03FO2qF987UL3rYSZkGVDWpL3dr4bIgnamkaz8k=;
        b=JV2o44TcICEeavKcKwTz5icwfqQZhgGRMR59dYqZw6edW2hmyWYnto69rzN58YgSCl
         YZ62t32NCd8NWbOCcRo+JJ1OVyWgaYyR7dUcc2X2d9aud1Z3KdnfVY5jdO6Hh1jgavP3
         gQmn1d5BFULs30vR6Eo1cCyDnWFnV+bBJSDdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tv1e03FO2qF987UL3rYSZkGVDWpL3dr4bIgnamkaz8k=;
        b=FfGPboHDd96rmPhEW+fWTzAStU5bOT3isHqCzegdFXmYwC4Z7XMA+ZNjQz57TNPG18
         ODTN/RImaiAiXJmoKl2R0tFZSFjeit+wB7w1b96/elh0qFBydii64j3HY6sOLfs1TtOb
         FeY9cHnIwoW6QmLehwYM8ZMIl1oJlMp+io/GDfKxQCeVsUbpkJEW2R78FL/OMEBiDE2c
         qDnsZWWFtR39Phye+3C6TwGcRSmHQWTSRfX7ykNYOr+dqcWuWjoAUrvxkuWGiMGB2Pb3
         aJtRTOF11Lvq3O0SyCVdp5oP1bDHW5Xef7kpYshm0jTPjDXhn74rFKRdhGlKtBxiT7jq
         fy0g==
X-Gm-Message-State: ANoB5pm9YwUgmyC1lkUZIZwrwfBBf0v3oZzxtX8IDWwKgEa0vIG8bv/X
        qRBJmrS8S/sdulA+mDQNP4Yuig==
X-Google-Smtp-Source: AA0mqf42Fi4K0GcfUowvvBL6IInOEw16/UgSJiR9E4D+8vzj/BiS6MQ9Yoo27zFnj4kwNRAn2Bq8DQ==
X-Received: by 2002:a63:4f48:0:b0:477:4451:cf5 with SMTP id p8-20020a634f48000000b0047744510cf5mr43112803pgl.391.1669950832251;
        Thu, 01 Dec 2022 19:13:52 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id jx24-20020a17090b46d800b00213202d77d9sm3708410pjb.43.2022.12.01.19.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 19:13:51 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 1/8] mmc: sdhci-pxav2: add initial support for PXA168 V1 controller
Date:   Thu,  1 Dec 2022 19:13:23 -0800
Message-Id: <20221202031330.94130-2-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221202031330.94130-1-doug@schmorgal.com>
References: <20221202031330.94130-1-doug@schmorgal.com>
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

Add a new compatible string for the version 1 controller used in the
PXA168, along with necessary quirks. Use a separate ops struct in
preparation for a silicon bug workaround only necessary on V1.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/sdhci-pxav2.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-pxav2.c b/drivers/mmc/host/sdhci-pxav2.c
index f18906b5575f..2f9fa0ecbddd 100644
--- a/drivers/mmc/host/sdhci-pxav2.c
+++ b/drivers/mmc/host/sdhci-pxav2.c
@@ -101,6 +101,14 @@ static void pxav2_mmc_set_bus_width(struct sdhci_host *host, int width)
 	writeb(ctrl, host->ioaddr + SDHCI_HOST_CONTROL);
 }
 
+static const struct sdhci_ops pxav1_sdhci_ops = {
+	.set_clock     = sdhci_set_clock,
+	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
+	.set_bus_width = pxav2_mmc_set_bus_width,
+	.reset         = pxav2_reset,
+	.set_uhs_signaling = sdhci_set_uhs_signaling,
+};
+
 static const struct sdhci_ops pxav2_sdhci_ops = {
 	.set_clock     = sdhci_set_clock,
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
@@ -114,6 +122,9 @@ static const struct of_device_id sdhci_pxav2_of_match[] = {
 	{
 		.compatible = "mrvl,pxav2-mmc",
 	},
+	{
+		.compatible = "mrvl,pxav1-mmc",
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, sdhci_pxav2_of_match);
@@ -208,7 +219,12 @@ static int sdhci_pxav2_probe(struct platform_device *pdev)
 			host->mmc->pm_caps |= pdata->pm_caps;
 	}
 
-	host->ops = &pxav2_sdhci_ops;
+	if (match && of_device_is_compatible(dev->of_node, "mrvl,pxav1-mmc")) {
+		host->quirks |= SDHCI_QUIRK_NO_BUSY_IRQ | SDHCI_QUIRK_32BIT_DMA_SIZE;
+		host->ops = &pxav1_sdhci_ops;
+	} else {
+		host->ops = &pxav2_sdhci_ops;
+	}
 
 	ret = sdhci_add_host(host);
 	if (ret)
-- 
2.34.1

