Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F22C4E580C
	for <lists+devicetree@lfdr.de>; Wed, 23 Mar 2022 19:02:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343929AbiCWSEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 14:04:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343944AbiCWSEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 14:04:13 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 677E9888F9
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 11:02:43 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id x2so2272080plm.7
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 11:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=orl2DqP7YtUtU1F53uUuvJSoGofFC8TzKIF9FwAKJ10=;
        b=kWDLbEhWVULPKdQdIk5ef3SAbPmlhN8ZuF5/xMSMXITbMq+U6hdRBoRwiHqUjvzkGv
         ieN7g+gdE+0/BN8NlMV4Ud61oXfK1pEJPLQGG0ELZaeOKeOPUJfouRIQrOyny3e5HYBZ
         RM5/b2VZZyFrk8zUO4LCevFjmQRMgvTIMOxR2cn+nfDJ969L86STNg5kkrWE4W6dbXv+
         KIn72EmGqF8BdASAOeaqWICi8jRK4vLPMW+jPscF5vaXdxbUxEtWCJ/sPc6OqnLo0h64
         IXF9AJwWjgBuTMtzdsuUPPb/Mf7MbacrxiQjUh5zCc192fsuHk0ufabdUCEsaaKVjWM5
         CYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=orl2DqP7YtUtU1F53uUuvJSoGofFC8TzKIF9FwAKJ10=;
        b=SqT2KnjjWnLDdElpcbfhp1fURZnzhSNKitS7ExpZ3DFp99AEtggD+IUgmHTLdYmjBf
         66Xl+dHqcg+1PirsSHzunX09Vzk7PzjnwYumh6gnn013FwUJLcaQWpme6LVjgDYLVS9a
         oHUQ2LzFkO2+rwr6Rpty8G+rMU2OI12bSr+bS3vOFIP9eQNYJBZzsX6lzftS0tbSjcUF
         FV75yse8ubABU2Yz/SsS4giFFzy0opTS+HlT3HvkbkuZWiiecEN1U3B1CHQNaV6Zr1j2
         cIqhFeozNmyJDuIZsRvMBYmgpc2Rf3LTAAdFFxuBdfE0BTu+pERA+ekCIo4bT/fMDGUb
         i2sw==
X-Gm-Message-State: AOAM5317s0X+u9sUYwNf3JvNHep+/8TaPiYdSnrR9wRQfyPj48qYXoIQ
        Dpl/qFARf4dcpr5AnHAcV24P0Q==
X-Google-Smtp-Source: ABdhPJyBxJsYn93AHwvkMAs4VeT7lQvIzVS/H5iMNRXoLppcZ+AZCPHumZn57ug/x0xj8nCxaHNn+A==
X-Received: by 2002:a17:90b:3904:b0:1c6:c1f8:cbd8 with SMTP id ob4-20020a17090b390400b001c6c1f8cbd8mr1013884pjb.53.1648058562916;
        Wed, 23 Mar 2022 11:02:42 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id l19-20020a17090aec1300b001c7a31ba88csm1265870pjy.1.2022.03.23.11.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 11:02:42 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     radhey.shyam.pandey@xilinx.com, robert.hancock@calian.com,
        michal.simek@xilinx.com
Cc:     davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, andrew@lunn.ch,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v5 net 4/4] net: axiemac: use a phandle to reference pcs_phy
Date:   Thu, 24 Mar 2022 02:00:22 +0800
Message-Id: <20220323180022.864567-5-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323180022.864567-1-andy.chiu@sifive.com>
References: <20220323180022.864567-1-andy.chiu@sifive.com>
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
index a4783f95b979..6749d0eebc13 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -2067,9 +2067,16 @@ static int axienet_probe(struct platform_device *pdev)
 
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

