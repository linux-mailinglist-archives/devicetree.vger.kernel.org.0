Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5451158602D
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232268AbiGaRr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:47:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232158AbiGaRr6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:47:58 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4FB3B4A9
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id d7so4776022pgc.13
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=DtHl8Tfdbid4Ip0K1rvhxAAb055JKxUwgFqvF7A2pZw=;
        b=FrIgIbjZWlhx84pjqV0am4wg7VbAPLSm1lET64x1Ks3OeeK0C8lfnVT54f/ooeIRqa
         yJM17T5F7aN/AsCTUkDJxoMVu01QbTXKh8Xpyy0RXSfMrzNz6fxX3jsdsJ3rU+ij2sGl
         YLayh1UZHD3cYAR7sSYglNBOnv3lDGnJNSGuUyp0rnVyJLgZFDP1nxpPkvixlS66PzCX
         2mgmYo9MboqSDpTbwb97YWm9vFtyObKqN3wJzcW5AFmC6MiR5/QZQW1Bt9feQclQAJu+
         cCmG/t6dQ2xs47Bwzm3eVY2aw8jOsBm4Q2SJenBbv6OmznaWWr6uS2rcfO65qJKEvSgV
         qqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=DtHl8Tfdbid4Ip0K1rvhxAAb055JKxUwgFqvF7A2pZw=;
        b=YJXMUe+1gVB7dv8b4bdC702h+3b6dfJM697EmiUrrxx8q/FIrBDdVO2guCj/hSdL7h
         tzpuHjc3MhwnOa+UtjbJxnLRU3fBcs2pNPBetNZgPpzby7V2bdYROm7HJy+Bn1dw6uzX
         8cabmGk7p/FbvjnuzDtDkdCR83rBjC56RdCQah1YE9GSqI1mjBi1tByAecFN4yeqTynZ
         7m1ha09zZr6jQl7ZHQhGpJQzj9mwBH/50ORK4ASMWYG/EHKOct7gJu2QFnkII/kQwgm6
         TjnDfxGaptGVNz5hemeGN3/4YhNKEIIfh8PCtusPjPylT6tMpmCE5tmWZ6PlZkv9X9Gv
         b1Dw==
X-Gm-Message-State: AJIora/b/1OPLz81ZBs5zBMpANXDma6s+EBi6YZQwgjs3k+fqNwF9RS3
        /ABLZEpIRGOyQHro6S0nf4IPSw==
X-Google-Smtp-Source: AGRyM1ub8ANS59rvz/sZljT7HwORhT1DV48eiTbTUQy4m3j+sQyYYdJz5ubHgjGKzs9ZC8QgHOHHfw==
X-Received: by 2002:a63:8c47:0:b0:40d:2d4:e3a2 with SMTP id q7-20020a638c47000000b0040d02d4e3a2mr10751105pgn.2.1659289677284;
        Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jianqun Xu <jay.xu@rock-chips.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 05/20] soc: rockchip: io-domain: Add RV1126 IO domains
Date:   Sun, 31 Jul 2022 23:17:11 +0530
Message-Id: <20220731174726.72631-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
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
Changes for v2:
- none

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

