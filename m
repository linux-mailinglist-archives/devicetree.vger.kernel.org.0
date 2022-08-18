Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DECA598342
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244681AbiHRMmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244545AbiHRMmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:00 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9294BAE234
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:59 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id 81so1407754pfz.10
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=RXFOtvFRD5YKSZ6sC0Fzo+VdopmgN9mxLOnSnbFWSr0=;
        b=XZ+xD4aeH2mrBj33yopHvrVUX59L/4rqp+EbpnNyjBZY7I14wJtQITdLCazZG/iILQ
         aWi1nWO5OR7/ncOo4OjyhcYqBcpDtuP8rZrxBjIY3DKSP2AD2xqY7TMVGKSVpf/fqGO/
         h/uB+OwDPynoyz6sPjDRf1y6jSvOJuBmwBhBEa9zyXWFIx1CKMrEOifk5wQfOWH229Vt
         c3J/e9Zp6UuDLYBQFEv+35KIzpWGVqMp6aczjKBTgdn7vcpim1F3u7Q1aXpPG2iSGD/c
         8WYgThIMe4oJKMxvz5IxCna856riVd7FfpyXK6US6x3ANL6i6a2qTdyZWKDKIgCaAt0D
         tOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=RXFOtvFRD5YKSZ6sC0Fzo+VdopmgN9mxLOnSnbFWSr0=;
        b=BimD7DGgIMLYfDwndCDypv8fTHvW3IFDBCuwbgCSBFbyBQyPOpwbxax4qmrHO0IPqg
         +hKljKF6ogPsdRbW4ozUfPAeOX9Jqw2rcwdcb/pR6kJ2yaClktuHMoTVxw7v4usyIZBm
         97SU+Ps+jESm9TRo0LCutrHNGEBBYI5g6QIUYm54BMO/KS+uhbAiSmBCKVVFIuazN3Iq
         46WQR+iyPh85GiAakNGgwkNHw+Nq4fYZhbo6/4IYXAH3f7CmzGu2VCF3bPHlpfXMSaWv
         nJ6hoEmM3ABeNEGdAH1BlA+ajLb0D8/FO8r7B9w/TMiKQfTP8vkbNpbHMpWhl53tB0w3
         5rYQ==
X-Gm-Message-State: ACgBeo2qGogMXS72G1fQs/zW7gTZUVW5ktYl7bAlgCyoTfEecJyhffcj
        xX3y44LLFEyGTe4FnM+XhJWT+A==
X-Google-Smtp-Source: AA6agR7oYDWk2fLCc0cQ5CUZeDzDpgm3+1qCFzYbsZRDPjvazXqSWrO0LhRVwDlIgPmqIM6F791iZg==
X-Received: by 2002:a63:5d4e:0:b0:41d:dcc3:aa85 with SMTP id o14-20020a635d4e000000b0041ddcc3aa85mr2316191pgm.324.1660826519031;
        Thu, 18 Aug 2022 05:41:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:58 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jianqun Xu <jay.xu@rock-chips.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 05/19] soc: rockchip: io-domain: Add RV1126 IO domains
Date:   Thu, 18 Aug 2022 18:11:18 +0530
Message-Id: <20220818124132.125304-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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
Changes for v3, v2:
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

