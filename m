Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 454B74EA583
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 04:52:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231283AbiC2Cx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 22:53:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230475AbiC2Cx2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 22:53:28 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AA21247823
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 19:51:45 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id h23-20020a17090a051700b001c9c1dd3acbso1405262pjh.3
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 19:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=69KBe+ckBD8jzX5UKW/PqVU7EuYsFz2uovCcu+cTKLQ=;
        b=kefFOh7P2gvOu1Hknqi60XLM22tTiqKntQAZMGwbSVccbY+/JMQhxjTXt0dS+k8f5G
         XgnKi0+sGKU7d6LiwtAZSFn9f5Yy6tGzqtlN3YYTaNQ3xCfS2aAuojKMdVE3WrUpU1qc
         hq2vJrhyw80omKJNWk5DzHnyfhToZ3jusD3YJjF0nXxT/JFEanwpgnSXzKi5DWOm/SjL
         Dduqwo5CmFJ4K1U+DZk6xrj1gcZb9+YB/gWowo+KiGZ4LlDiPQ73d1q7G21G+B+1CeZt
         kSkWb2mExAIrbO2CDChjwFjdkbhzPL6y6LroFnHBiOc7p4NfvZ86vs3UbOOlPK4P/5YJ
         FQSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=69KBe+ckBD8jzX5UKW/PqVU7EuYsFz2uovCcu+cTKLQ=;
        b=Ihgb3UnFPGX3PSEVKkOobZ8eta6SAxt/QwyCa9bo09SFQnrK6lcssB/Y2JJRMogw2x
         YmsYJiBLBaSdyxqBYx2OI7+WpZ7HV7PDuXavwpV7fyKNT/6b+EPDSxxs8bYO0ply2RXC
         QjsNEJAT9Ux+t8O5g94CHTBCcl+ilryR43U9BK/91dSMTCSrfqT5lliFp9WSoKTJnldn
         TsACG2VAbAkOhbyAVudm8njvs8D91sAhS8f2WfkkMG1yZJpsv2pqnJGPYP80HuNAw7xf
         DafAZVekf2/9rn9su74e8+THsR9/mwoJNoW1JzrZT12P69p5CtGvWSjEwazR1sDe4maP
         gm8g==
X-Gm-Message-State: AOAM532Szh4FXi+CoS/Z4xDZXWB1BmiqjE+tFxydjA7FRfxbCivqlfFC
        P00eC9mqGXS63liDys6wIolW8Q==
X-Google-Smtp-Source: ABdhPJxKYVF9pOi6zG7mM9lIOS9OdD6Ieu8NhEvre5v6UxqyqgYS1pXmw3L8Aa2GzGAtWDrRhLI2Yg==
X-Received: by 2002:a17:90b:224e:b0:1c6:d9ed:576b with SMTP id hk14-20020a17090b224e00b001c6d9ed576bmr2214565pjb.26.1648522304656;
        Mon, 28 Mar 2022 19:51:44 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id f14-20020a63380e000000b0038253c4d5casm14136053pga.36.2022.03.28.19.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 19:51:44 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     kuba@kernel.org, radhey.shyam.pandey@xilinx.com,
        robert.hancock@calian.com, michal.simek@xilinx.com, andrew@lunn.ch
Cc:     davem@davemloft.net, pabeni@redhat.com, robh+dt@kernel.org,
        linux@armlinux.org.uk, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org,
        Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v7 net 4/4] net: axiemac: use a phandle to reference pcs_phy
Date:   Tue, 29 Mar 2022 10:49:21 +0800
Message-Id: <20220329024921.2739338-5-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329024921.2739338-1-andy.chiu@sifive.com>
References: <20220329024921.2739338-1-andy.chiu@sifive.com>
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

In some SGMII use cases where both a fixed link external PHY and the
internal PCS/PMA PHY need to be configured, we should explicitly use a
phandle "pcs-phy" to get the reference to the PCS/PMA PHY. Otherwise, the
driver would use "phy-handle" in the DT as the reference to both the
external and the internal PCS/PMA PHY.

In other cases where the core is connected to a SFP cage, we could still
point phy-handle to the intenal PCS/PMA PHY, and let the driver connect
to the SFP module, if exist, via phylink.

Fixes: 1a02556086fc (net: axienet: Properly handle PCS/PMA PHY for 1000BaseX mode)
Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
Reviewed-by: Robert Hancock <robert.hancock@calian.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 3daef64a85bd..d6fc3f7acdf0 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -2071,9 +2071,16 @@ static int axienet_probe(struct platform_device *pdev)
 
 	if (lp->phy_mode == PHY_INTERFACE_MODE_SGMII ||
 	    lp->phy_mode == PHY_INTERFACE_MODE_1000BASEX) {
-		np = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
+		np = of_parse_phandle(pdev->dev.of_node, "pcs-handle", 0);
 		if (!np) {
-			dev_err(&pdev->dev, "phy-handle required for 1000BaseX/SGMII\n");
+			/* Deprecated: Always use "pcs-handle" for pcs_phy.
+			 * Falling back to "phy-handle" here is only for
+			 * backward compatibility with old device trees.
+			 */
+			np = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
+		}
+		if (!np) {
+			dev_err(&pdev->dev, "pcs-handle (preferred) or phy-handle required for 1000BaseX/SGMII\n");
 			ret = -EINVAL;
 			goto cleanup_mdio;
 		}
-- 
2.34.1

