Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3B0B4E2C31
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 16:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350172AbiCUP2o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 11:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350179AbiCUP2n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 11:28:43 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C944A166662
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 08:27:17 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id q1-20020a17090a4f8100b001c6575ae105so202029pjh.0
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 08:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WOMAaXlQRUlLiSNkBnquJYnNiE2xzRYHVaIsswt04t4=;
        b=Ow8PFHJOnBRVZo6R522dIh1n1CERy36l6DYFUrIenFfOKv9J6szwTNXfFZW0uoKaSJ
         GWzqvIcnRwErw5ePdblMZTEI/Ta10Rvx9ygiqiDYIwqPVYaFr7Lcr5TH220j/XwaPnll
         /zXnfl617UsemB/o2RBnGV+BFYSvo1OwGdcXv96qFJZ+SS+C27ayqWW3EAPBbUhA0Hj8
         CEqEpITrw2OGezLi8MNgLvp9oMiCuEqWnnp0u/Z9hWqZq/MnYvzdjmkmZedphyAQEyAt
         On/p235wMu+nH2BLGkjTxwVJJr/wQBPrudXlo0BZXItPiqRGGJgAuPJd0OzXH0WfciwT
         I/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WOMAaXlQRUlLiSNkBnquJYnNiE2xzRYHVaIsswt04t4=;
        b=8SSJAvXwETNfjtjCEnxIuDZAwGeQ6W+wy1+pUjeKASxVaxPqUnHQUOo+OZpnHFI95K
         51JL55p9lsuNc98/pptHrcZp/FvQ3j8qFhqTcKZxSMDWCz640JmtHDUDX0o+v+8IRlyY
         GEiiqbRcG+j7QPU0rB1/Zf6msCdTT442x9ot5dmr6A54IT3IfXoDUf91QQZy5VxiJpeo
         uwyEVogj3CXIf8m+eghJJ765eEFe+AkuE4XNbS08loqzWNSmBWu55FuXN30cB7+yw6dQ
         K3f8zXOe4dXtUO50qIoK/iiQ/hXn+HtG3HueJj/33y/t4U5XLWfOeDbomRHz4gKXYFyi
         YGBQ==
X-Gm-Message-State: AOAM532lsGfyBHjpzNnth/y8sxJRFkhkD2IQYktfoqmcqkNOgxk07uKZ
        5Xikn3Aw0XsKv5UYp3kTehWVLg==
X-Google-Smtp-Source: ABdhPJywiENEymUJRhKHBOhusQLS235M2useu9biRbGUM6lKPMYabnvqEdDPw3P8M2t5blbcLCqYpA==
X-Received: by 2002:a17:90a:fb4e:b0:1bc:8227:edd9 with SMTP id iq14-20020a17090afb4e00b001bc8227edd9mr26549567pjb.56.1647876437340;
        Mon, 21 Mar 2022 08:27:17 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id i15-20020a63b30f000000b003803aee35a2sm15342644pgf.31.2022.03.21.08.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 08:27:17 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     radhey.shyam.pandey@xilinx.com, robert.hancock@calian.com,
        michal.simek@xilinx.com
Cc:     davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, andrew@lunn.ch,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v4 2/4] net: axienet: factor out phy_node in struct axienet_local
Date:   Mon, 21 Mar 2022 23:25:13 +0800
Message-Id: <20220321152515.287119-2-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220321152515.287119-1-andy.chiu@sifive.com>
References: <20220321152515.287119-1-andy.chiu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

the struct member `phy_node` of struct axienet_local is not used by the
driver anymore after initialization. It might be a remnent of old code
and could be removed.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h      |  2 --
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 13 +++++--------
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index 0f9c88dd1a4a..d5c1e5c4a508 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
@@ -433,8 +433,6 @@ struct axienet_local {
 	struct net_device *ndev;
 	struct device *dev;
 
-	struct device_node *phy_node;
-
 	struct phylink *phylink;
 	struct phylink_config phylink_config;
 
diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 5d41b8de840a..496a9227e760 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -2071,19 +2071,21 @@ static int axienet_probe(struct platform_device *pdev)
 
 	if (lp->phy_mode == PHY_INTERFACE_MODE_SGMII ||
 	    lp->phy_mode == PHY_INTERFACE_MODE_1000BASEX) {
-		lp->phy_node = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
-		if (!lp->phy_node) {
+		np = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
+		if (!np) {
 			dev_err(&pdev->dev, "phy-handle required for 1000BaseX/SGMII\n");
 			ret = -EINVAL;
 			goto cleanup_mdio;
 		}
-		lp->pcs_phy = of_mdio_find_device(lp->phy_node);
+		lp->pcs_phy = of_mdio_find_device(np);
 		if (!lp->pcs_phy) {
 			ret = -EPROBE_DEFER;
+			of_node_put(np);
 			goto cleanup_mdio;
 		}
 		lp->pcs.ops = &axienet_pcs_ops;
 		lp->pcs.poll = true;
+		of_node_put(np);
 	}
 
 	lp->phylink_config.dev = &ndev->dev;
@@ -2124,8 +2126,6 @@ static int axienet_probe(struct platform_device *pdev)
 		put_device(&lp->pcs_phy->dev);
 	if (lp->mii_bus)
 		axienet_mdio_teardown(lp);
-	of_node_put(lp->phy_node);
-
 cleanup_clk:
 	clk_bulk_disable_unprepare(XAE_NUM_MISC_CLOCKS, lp->misc_clks);
 	clk_disable_unprepare(lp->axi_clk);
@@ -2154,9 +2154,6 @@ static int axienet_remove(struct platform_device *pdev)
 	clk_bulk_disable_unprepare(XAE_NUM_MISC_CLOCKS, lp->misc_clks);
 	clk_disable_unprepare(lp->axi_clk);
 
-	of_node_put(lp->phy_node);
-	lp->phy_node = NULL;
-
 	free_netdev(ndev);
 
 	return 0;
-- 
2.34.1

