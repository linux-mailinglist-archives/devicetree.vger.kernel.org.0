Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57DD44E96C3
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 14:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238464AbiC1MhE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 08:37:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242562AbiC1MhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 08:37:01 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D59B14EA20
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 05:35:19 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id l4-20020a17090a49c400b001c6840df4a3so15411974pjm.0
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 05:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=orl2DqP7YtUtU1F53uUuvJSoGofFC8TzKIF9FwAKJ10=;
        b=NwzcJhDM/I0kCSs0hELt6K++w6ieVIwXZqKcJtDbxBpfpA5yc6WPPUeeYM8y//4SYm
         hCHWj4r/FPqKwXt8XLoi1+ZmDQYE1sKar1ijnDn98I6kVKc7gEUEVuo7ACek518FJxsf
         1Vr6BfyoOOH/BO554wT5Qe9TKH+gmTDuhtEj1/OjtNdfPpC7gJdp7G5csYmhMMUBxgGa
         o/dntzX49cPuTDAzKS7rCUzKd22OOIlaMKtFjvDeTvzbOShjCemb47Ph/gVU9v8Gw5cJ
         2SHIySYvfEd31owc702Bz0irCcelVFA65eExIUjBJY6pCrfpfhYIdkz2oTT1OB5dAMvD
         K0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=orl2DqP7YtUtU1F53uUuvJSoGofFC8TzKIF9FwAKJ10=;
        b=C3B7Lj5qtfCjaW2eUslvqcAwG2td5PkIfil8B+Iiy+4mp7rO6Avlt0cgUIpfeqgIC7
         uwsmE9dnSdfeJuLV8ibUhRh+tz10KT/ovvGVBPoE1AAtJt+EYBKGwl7EKv4btwqrY7xw
         oamXvO+ibcl91I3z2KeiyjphISEC9uO1A86j0Dsgwb/ucPSdCwa49ju668oCxr1Flzni
         h3Fc1ZYy+5sCNEKGfcVRZAr+LxYhJZqZrsiaws3G0M5A0J4SiHbahXr/5blMU8HgMjS0
         L+HYF9dFGCFJ3eNFnVeDt9nzWqAwHdSqi4TD6WUDNnFJZznBDRQCGIGO4a7/jLj+L4Du
         R30Q==
X-Gm-Message-State: AOAM530cbGTAZ6Fpi1Lw61ymcr5nIuWyhcu/M9ZNG6tSdgwtn8QP7hyj
        0tdI6IdR7oNw96kQyfCm58nyYA==
X-Google-Smtp-Source: ABdhPJzQaDIuZvGVl4nLRN3j8QOeP3DvFmVsae2HgKMZLsLGelAgpGf/c2uxbq4oqEV5tIsnDMqQUA==
X-Received: by 2002:a17:902:f544:b0:153:bb8a:9374 with SMTP id h4-20020a170902f54400b00153bb8a9374mr26450419plf.154.1648470919407;
        Mon, 28 Mar 2022 05:35:19 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id h12-20020a056a00170c00b004fab8f3244esm16314597pfc.28.2022.03.28.05.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 05:35:19 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     radhey.shyam.pandey@xilinx.com, robert.hancock@calian.com,
        michal.simek@xilinx.com, andrew@lunn.ch
Cc:     davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org,
        Andy Chiu <andy.chiu@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH v6 net 4/4] net: axiemac: use a phandle to reference pcs_phy
Date:   Mon, 28 Mar 2022 20:32:38 +0800
Message-Id: <20220328123238.2569322-5-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328123238.2569322-1-andy.chiu@sifive.com>
References: <20220328123238.2569322-1-andy.chiu@sifive.com>
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

