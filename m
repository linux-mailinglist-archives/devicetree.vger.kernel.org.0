Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E042F4F3431
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 15:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239389AbiDEJxo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 05:53:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244565AbiDEJl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 05:41:28 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF83BBE1B
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 02:27:10 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id m18so10409835plx.3
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 02:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W8IY+K7ipydB43YdWcn0LCQnxSiGzpiMtNQlPCELZV8=;
        b=aEJr1eKmE9GxiWjz85LefgI5tANXpA9ae7tFs29KQftpdUNi96HAtQgd2kHRQ811Hf
         08TLZl/9bG8RaTgmgrDylNgd0HnVTFvmw70FKR2SkYfsPE4JAiLQLulx//AeQQNDI1Vu
         8tsSEUDI3HhSUJ9Y2W1LewEM/7pipUP/5GcDjSvixtOErn3JCogg+DOUEVvtUqYJ/NRR
         H2wISB0bkwwRd8GziMFkNl9LNZRDXpbvRjklU6i7hGNKFMLo0hDGFupvh3lNCgMvIoAz
         635updBI2ASdEZsLpPPLYXGlXIlLf8ySpyusNMwQcjrYxF/15g8dIfzZte7hgPFuH8fb
         b7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W8IY+K7ipydB43YdWcn0LCQnxSiGzpiMtNQlPCELZV8=;
        b=CPlUZI/wEtqqsyGkCzW09rxEBhLZEDieD9PpxDH94Zw+ciSN4735yTXfqL1Tsp+Vfi
         nZs3aMa9mco1Z7Qa0UYL5+/c3HgFWTjQRNo+PCC8i1QkhMFTCe3fAmZ8AdQhpPGb7+Oq
         DAiLB285nnV1mezyH05EVomHN6Gn5tX6eE7vqEqrVtTLETfrbyrO+LuKuVvrTZ9adrUx
         vPhZDG6/4tyC2xEpzRFbITP+8lTyoEdq6wM8U/q3qVFfA9jQyN3sscQXfXuUtDchiPGb
         mCzH4u0veMDqqS+bW44TFcQuj5kCjQcbvchcg33MaNlqAuKbi1st3G3uMpCKo34gqbZ0
         nMKg==
X-Gm-Message-State: AOAM530Ss8pXHwwX7o9UPjfvxjs/XDQEDR50vWD8kC5ZBS7gHPlITcjM
        bNw9Bujf6ro5BllVv1DRAADZQQ==
X-Google-Smtp-Source: ABdhPJz9w2hEdCGXtD1D3Ufpza7Spoddrs8iRimcY0bI3IJDP0pNv2VBD4Wd9iSwg1e3YFVFKQ0esw==
X-Received: by 2002:a17:90a:734a:b0:1ca:8240:9e48 with SMTP id j10-20020a17090a734a00b001ca82409e48mr2957090pjs.174.1649150830085;
        Tue, 05 Apr 2022 02:27:10 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id b4-20020aa78704000000b004fe0ce6d6e1sm5824291pfo.32.2022.04.05.02.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 02:27:09 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     davem@davemloft.net, michal.simek@xilinx.com,
        radhey.shyam.pandey@xilinx.com
Cc:     andrew@lunn.ch, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzk+dt@kernel.org, linux@armlinux.org.uk,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>,
        Robert Hancock <robert.hancock@calian.com>
Subject: [PATCH v8 net-next 4/4] net: axiemac: use a phandle to reference pcs_phy
Date:   Tue,  5 Apr 2022 17:19:29 +0800
Message-Id: <20220405091929.670951-5-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405091929.670951-1-andy.chiu@sifive.com>
References: <20220405091929.670951-1-andy.chiu@sifive.com>
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

