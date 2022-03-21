Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B0474E2C33
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 16:27:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350180AbiCUP2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 11:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350192AbiCUP2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 11:28:49 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F26E3167F85
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 08:27:22 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id s11so15684978pfu.13
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 08:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aR/xL3zhW/jH9L6b+OfqzbjvxqecSpBKEGwgvd3h444=;
        b=lH8GJ/0ITLjgsPwiCQ6m++4BZpdTkeHbewIci+fnfUB4Ttc+XdgZyxrTWkqsc5QMeT
         u2vgdBL1cakiJdNplQd0Kw3YmnvNQthBpiLpVBNz4lVLMEazT1xQIRQvN2scQpiaERzr
         gUFoRVt3WzJROOIg/8tCF9WxXORzKEFB6AM2KC3Wmx81BDdfNWFrhVXFzKyKLsgRGtrY
         i528zSVfpqYB8g5SeRQKNlWdqiQlKRR9w3EzzJUD9RQgOC51NjmGZ9I/7U927eGSBAQ7
         u3nbDQsjnE4MMiPFzQDEh/G/sCRRDjrMTqLc6S4c3IAhzprKemyHduben8+4dsx+Qwv+
         0wqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aR/xL3zhW/jH9L6b+OfqzbjvxqecSpBKEGwgvd3h444=;
        b=Sj5Cuv/mrUVXLz9aEeNVpcWy5BiBcMbqweePSaRT9iY7EWTbtCrDjiaQ4UnG4nBl11
         rSXCiRW0PahKBbmjCMJN5bwRhteK7T59AnLp7aJAQ+nLFmFS6/k6/Vc/xQ/SyBLIGhqL
         k667pjfI2oDhSnM/OpBdHy9gRXJbt1/twWk57CGbjLNnsLUkKae5YiqNEraapGitQhLt
         5+kIO5MHv7zXwbAqyi5UhEZozwNGsVgCVSipxZEgCdJ+VP/I31nnezYQkY95FXadP9wJ
         nccPYrPzG2Dq/Or68WxwbFP2wJ8d/hYDVuLbAjiQPF6ObrxqKT5seV8kQ+C1PPuXkgPT
         JKig==
X-Gm-Message-State: AOAM531OoNDbBoA77Z4BIvOGqdDp/zZyn2ObUmtoD2A9vjKYn+2sKbCi
        6V4mInQguG4pTkOStY35uNTo4A==
X-Google-Smtp-Source: ABdhPJwXnpH427HdELYj+gt2y/0ZBHzRctKDjrOqm4wj5kGZ3eWi+xzr1/sD4t/JiXdq6pwymBcJWw==
X-Received: by 2002:a65:5b43:0:b0:382:1f25:eaef with SMTP id y3-20020a655b43000000b003821f25eaefmr15334098pgr.590.1647876442442;
        Mon, 21 Mar 2022 08:27:22 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id i15-20020a63b30f000000b003803aee35a2sm15342644pgf.31.2022.03.21.08.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 08:27:22 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     radhey.shyam.pandey@xilinx.com, robert.hancock@calian.com,
        michal.simek@xilinx.com
Cc:     davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, andrew@lunn.ch,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v4 3/4] dt-bindings: net: xilinx_axienet: add pcs-handle attribute
Date:   Mon, 21 Mar 2022 23:25:14 +0800
Message-Id: <20220321152515.287119-3-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220321152515.287119-1-andy.chiu@sifive.com>
References: <20220321152515.287119-1-andy.chiu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the new pcs-handle attribute to support connecting to an
external PHY in SGMII or 1000Base-X modes through the internal PCS/PMA
PHY.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
---
 Documentation/devicetree/bindings/net/xilinx_axienet.txt | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
index b8e4894bc634..ba720a2ea5fc 100644
--- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
+++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
@@ -26,7 +26,8 @@ Required properties:
 		  specified, the TX/RX DMA interrupts should be on that node
 		  instead, and only the Ethernet core interrupt is optionally
 		  specified here.
-- phy-handle	: Should point to the external phy device.
+- phy-handle	: Should point to the external phy device if exists. Pointing
+		  this to the PCS/PMA PHY is deprecated and should be avoided.
 		  See ethernet.txt file in the same directory.
 - xlnx,rxmem	: Set to allocated memory buffer for Rx/Tx in the hardware
 
@@ -68,6 +69,11 @@ Optional properties:
 		  required through the core's MDIO interface (i.e. always,
 		  unless the PHY is accessed through a different bus).
 
+ - pcs-handle: 	  Phandle to the internal PCS/PMA PHY in SGMII or 1000Base-X
+		  modes, where "pcs-handle" should be preferably used to point
+		  to the PCS/PMA PHY, and "phy-handle" should point to an
+		  external PHY if exists.
+
 Example:
 	axi_ethernet_eth: ethernet@40c00000 {
 		compatible = "xlnx,axi-ethernet-1.00.a";
-- 
2.34.1

