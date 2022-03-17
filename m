Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B20A4DC285
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 10:21:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231771AbiCQJWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 05:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbiCQJWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 05:22:40 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B9AA75619
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 02:21:24 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id t22so3987678plo.0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 02:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+Cu9q4M48WuniSzSJKyR3nQzFIdOnY4pJDs3ydaA55M=;
        b=nSkDP9HRWaR4DUmUl5uNLIjgwaPfY9Z7VpYVUSVPQNnHljSy4Db7vb8Dv4BnAwOKB6
         Io97wqEDx7IK9vZnLqd/WBGoYIdcYMTSN1K+h1Q5hA0UcGt88vk3B+RHiHl5YYsI6ZF0
         dVBYfZ2PKOyi2fOEA/LUzn4FaO8HniPcVC3gZgCE6HJlxEO37HrW1y5kHEbmjFNoRN2f
         JgMmbtHq8S28oaVG1EbX7Uk64vpcwmropXDeGoGnrx209Mwxcq7RLVmw1PAW9me5tNsv
         nrCLgXb3tXU6s7SsXw3VoxssoJL3C6IGi0dH4ntvrkafgYMSSBbelzCeL8u+u5h/flOt
         ptMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+Cu9q4M48WuniSzSJKyR3nQzFIdOnY4pJDs3ydaA55M=;
        b=R4T1s5oYQ6ly7vzDvT333D4jakz5H60lXszej1Iuiezf5Ko1ociFL2A6k5uYF8FUw2
         CPwmJJa4b9si8A0zZXHULOjzKrCzQTl6juFWHA45GSADj/HE1shxqFfN1Z/eCnCtjO3v
         Ag2gUEH13GPedkn/rm9cPqkJLYWF09pfE2kZNVSX7D9hLF2Ga2HELUMzYx/BVqoJ2GoV
         K7cfPj8pyxZ3u2nqVY6oOiIsVqyWDyavnNbD0HHkAE/NsL35mIMRhaB9/VHjOYSvFCh2
         5air+29Vx0WZ9+R89GVgVOlnXWkH4xXABZ2LVYXv9KuSgqCV99kV8NNIJY0H8N31MoBb
         dJNA==
X-Gm-Message-State: AOAM533npoLALJdvMHX8tZB+EnGDAgn7mzTKDInbpurzIDu9jKbz7nYj
        ZtQqwomd0Jg00U1X6gtKI1nS/g==
X-Google-Smtp-Source: ABdhPJwubUxQGb7jzZz0XI+VbbW2B9aN8Ew5X5B7WqdjKGjbYgV+X2/cgUZ1ph1lFZQ2k88Fl7ecyw==
X-Received: by 2002:a17:90a:ee94:b0:1c6:4580:1e5 with SMTP id i20-20020a17090aee9400b001c6458001e5mr4252801pjz.47.1647508883480;
        Thu, 17 Mar 2022 02:21:23 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id x9-20020a056a00188900b004f7454e4f53sm6309056pfh.37.2022.03.17.02.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 02:21:23 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     davem@davemloft.net, kuba@kernel.org, michal.simek@xilinx.com,
        linux@armlinux.org.uk, robert.hancock@calian.com, andrew@lunn.ch,
        netdev@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v2 2/2] net: axiemac: use a phandle to reference pcs_phy
Date:   Thu, 17 Mar 2022 17:19:26 +0800
Message-Id: <20220317091926.86765-2-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317091926.86765-1-andy.chiu@sifive.com>
References: <20220317091926.86765-1-andy.chiu@sifive.com>
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

In some SGMII use cases where both an external PHY and the internal
PCS/PMA PHY need to be configured, we should explicitly use a phandle
"pcs-phy" to get the reference to the PCS/PMA PHY. Otherwise, the driver
would use "phy-handle" in the DT as the reference to both external and
the internal PCS/PMA PHY.

In other cases where the core is connected to a SFP cage, we could
fallback, pointing phy-handle to the intenal PCS/PMA PHY, and let the
driver connect to the SFP module, if exist, via phylink.

Fixes: 1a02556086fc (net: axienet: Properly handle PCS/PMA PHY for 1000BaseX mode)
Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 6fd5157f0a6d..17de81cc0ca5 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -2078,7 +2078,13 @@ static int axienet_probe(struct platform_device *pdev)
 			ret = -EINVAL;
 			goto cleanup_mdio;
 		}
-		lp->pcs_phy = of_mdio_find_device(lp->phy_node);
+		np = of_parse_phandle(pdev->dev.of_node, "pcs-handle", 0);
+		if (np) {
+			lp->pcs_phy = of_mdio_find_device(np);
+			of_node_put(np);
+		} else {
+			lp->pcs_phy = of_mdio_find_device(lp->phy_node);
+		}
 		if (!lp->pcs_phy) {
 			ret = -EPROBE_DEFER;
 			goto cleanup_mdio;
-- 
2.34.1

