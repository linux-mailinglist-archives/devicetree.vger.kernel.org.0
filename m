Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93CC94DD500
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 08:03:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232846AbiCRHE2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 03:04:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232875AbiCRHE1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 03:04:27 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD822261DF0
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 00:03:06 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d19so8732233pfv.7
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 00:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EJwMJwv/LNdQj8IBL2zSNYRuWHBHs9x8bD4JQud15n8=;
        b=hgmBBEFze9U4x2Jleiysufoa9jEu2iYKl4O8c5wJp6c06DMjEMk9Ke+0NFk6dGWIZY
         BY/jsVvg7xXKsUjjgfrOIVa20FYG/zd5j/7/1MxZarq1KwFZvEY465nbNl7IixaEGh4/
         QhJGLLl9xFVdDvDvMMf4b+PrE9SwKXldGumfTwDgAQ+yWMLLwV9798VDxVPKLGxTxe96
         ESJ7LJs4Ro29vxA0j670t6IaLz6iQvMjzdmQpM/kUS52r2SCqGKp9EBV2/Udp0P/T920
         oX+VsC72dlfpE2UVXX+O2eza0l1yiO9luvczx7WXw3/dtKRMmErYDZY+TG4aG21hqkV1
         gACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EJwMJwv/LNdQj8IBL2zSNYRuWHBHs9x8bD4JQud15n8=;
        b=7USkivByZl1xO1xVm5dKuYKdqGrs3Q5xrWGvS+ksS4ZPJUMfADM4no0gHY5rYZedoU
         nKtMmq4NoPQnnx6zkcpXeNx3TX0iwZtHO2Gf0OdSCWvuluUeUZXtHq1CVd5F8TW6nBX8
         sGM2ciii4jD+z+Td4tUonXgETOPr8vHESPF/qKdyFUCXG25yOiJh05TUv6tngxeb1zyj
         8pdrY5Zzt1gSp2NKy5YCWZ+HPO0WA1AR1uT3o9uVHh2/crDZIg/8nSsqNVlhxbVMrPuP
         N/p2UfMq6Tt6BiM6S/KHklCWqQ6fAeISgmZFXZVnjd2OMzDRU+jbcBQXZYFZgLQ1eGhC
         4a1w==
X-Gm-Message-State: AOAM533kXxXeR2W4vBKO4UP7EZkP4NHTO9GNaM9okCkrRinO3Q3ABz+7
        X8CDHkrx+hJgML0n/v0dxg6nFQ==
X-Google-Smtp-Source: ABdhPJzXuInIuxZ3FHUivaqC7RF5QXO1DCWaLtVncNFWNK1h+NDVw7dbJycCBtdz4eN5Ni4mZHFzug==
X-Received: by 2002:a63:2042:0:b0:381:7f41:3bab with SMTP id r2-20020a632042000000b003817f413babmr6705201pgm.421.1647586986118;
        Fri, 18 Mar 2022 00:03:06 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id 68-20020a621647000000b004fa763ef1easm130630pfw.125.2022.03.18.00.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 00:03:05 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     radhey.shyam.pandey@xilinx.com, robert.hancock@calian.com,
        michal.simek@xilinx.com
Cc:     davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, andrew@lunn.ch,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v3 1/2] dt-bindings: net: xilinx_axienet: add pcs-handle attribute
Date:   Fri, 18 Mar 2022 15:00:38 +0800
Message-Id: <20220318070039.108948-1-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
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

Document the new pcs-handle attribute to support connecting to an
external PHY in SGMII or 1000Base-X modes through the internal PCS/PMA
PHY.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
---
 Documentation/devicetree/bindings/net/xilinx_axienet.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
index b8e4894bc634..a2fa3bef0901 100644
--- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
+++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
@@ -68,6 +68,11 @@ Optional properties:
 		  required through the core's MDIO interface (i.e. always,
 		  unless the PHY is accessed through a different bus).
 
+ - pcs-handle: 	  Phandle to the internal PCS/PMA PHY in SGMII or 1000Base-X
+		  modes, where "pcs-handle" should be preferably used to point
+		  to the PCS/PMA PHY, and "phy-handle" should point to an
+		  external PHY if exits.
+
 Example:
 	axi_ethernet_eth: ethernet@40c00000 {
 		compatible = "xlnx,axi-ethernet-1.00.a";
-- 
2.34.1

