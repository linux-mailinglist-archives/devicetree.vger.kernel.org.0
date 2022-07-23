Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0625B57F162
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233302AbiGWUoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGWUoT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:44:19 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F57B1B795
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:19 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id bk6-20020a17090b080600b001f2138a2a7bso8574607pjb.1
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0JYQHhkMBvJ54BnDj2DKX+8l1TYnz+gpKI3PN4wmfDQ=;
        b=v2E3nNGM2y1pGKkwxe8O29Kl/nsdVaQjCOKxwOL95dsKTeA2SJJj9GrV0DlE5YyUY4
         ZpRnmeHzPCjvFOgGHEU3YHRhRm6eZdJ9HSC4LTDz/lpSyiFApm+4nvypziOPD1+R1fKj
         /yNLFnzKNBGpTFM4T3P0feRsMQ/Imddav3cU/m65MQi0+jYNJsGYUwemHn3fKnQxWlUu
         wSKkKR/qoTEGoiGM0km1sv8A1GlVokHJIod/b7r8mIlz+C7a1lVN3+hXedp/iKLSCWtD
         Q5hJ4jNN+Qgc33GXKN1/niu7BpYzcNa7JDoCSzO/eBKlvUPoeyudN0HxzjVhtYnHCZda
         +GhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0JYQHhkMBvJ54BnDj2DKX+8l1TYnz+gpKI3PN4wmfDQ=;
        b=psalZhPOCSF2ttNxgAMHgWV9YpAuCCeSFfQqkMDIf060k6/IyGztZvGU6A8y2SHf8P
         wsA+DwYoN3RDLe8RDft+BsF1Op38ZrpMissn2RGPGVDlB1owgzyNAEtVBjMXSvqasvGn
         vPDXPCwFYMcHmOqcPQ2MPoXdOEjUHUakr3LwByYvXFbalwtChQmaTrUQVs2O/OqGqA2z
         lCfkiJtyKtFVCnB4q3VPLDc8TNR9RQfB9TkgsE3aL5G9I23AdYPMIfYa9mUeB16Wii8/
         A3KC5DV1o4UiYtrSTKoeRLrsuW8ID0BZG4EcQfZKayChHao3C0r6yyKMbhjLcuwEEuBn
         AXsg==
X-Gm-Message-State: AJIora+9VkOWRBPY/MAlndlElC25Qju4ESomou85JKHyGVEoyQulpPLf
        d1AlOhpP91KwmT2a7UrqlHk4Lg==
X-Google-Smtp-Source: AGRyM1sGe/YuF2G1ZykcVfuYkCukeJuL1dDJ7wz1R0rzQGKqNZYb7QZu37z3YlzWV+NPfxQShPBssA==
X-Received: by 2002:a17:90b:2241:b0:1f0:2fa5:184f with SMTP id hk1-20020a17090b224100b001f02fa5184fmr24551243pjb.97.1658609058552;
        Sat, 23 Jul 2022 13:44:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:18 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jianqun Xu <jay.xu@rock-chips.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 05/22] soc: rockchip: io-domain: Add RV1126 IO domains
Date:   Sun, 24 Jul 2022 02:13:18 +0530
Message-Id: <20220723204335.750095-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jianqun Xu <jay.xu@rock-chips.com>

Add IO domains support for RV1126 SoC.

Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 drivers/soc/rockchip/io-domain.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 9df513d1219b..6619256c2d11 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -491,6 +491,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rv1108_pmu = {
 	},
 };
 
+static const struct rockchip_iodomain_soc_data soc_data_rv1126_pmu = {
+	.grf_offset = 0x140,
+	.supply_names = {
+		NULL,
+		"vccio1",
+		"vccio2",
+		"vccio3",
+		"vccio4",
+		"vccio5",
+		"vccio6",
+		"vccio7",
+		"pmuio0",
+		"pmuio1",
+	},
+};
+
 static const struct of_device_id rockchip_iodomain_match[] = {
 	{
 		.compatible = "rockchip,px30-io-voltage-domain",
@@ -544,6 +560,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 		.compatible = "rockchip,rv1108-pmu-io-voltage-domain",
 		.data = &soc_data_rv1108_pmu
 	},
+	{
+		.compatible = "rockchip,rv1126-pmu-io-voltage-domain",
+		.data = &soc_data_rv1126_pmu
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_iodomain_match);
-- 
2.25.1

