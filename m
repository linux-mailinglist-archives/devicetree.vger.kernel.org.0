Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A5D252FD8A
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244322AbiEUPGe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:06:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243649AbiEUPGc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:06:32 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C8230F5B
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:06:26 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 30CDA832C3;
        Sat, 21 May 2022 17:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1653145584;
        bh=f7JUj1ExKCQgfdYIQSdnGMpEQflum9npEjGZ5T/DxaE=;
        h=From:To:Cc:Subject:Date:From;
        b=bQd9EwoDQMSwi6tHtoRLtJYj4XXRG4wKp3GXT1yuTqMiQteie8rigw5NTzILQ8cPY
         MvfDkxHE5J7iYW+ww5ct2nRux1dtNcuzlwQEReOAr1GRaMoFbPmjky26GaZrYXYfuC
         eoDYjxIOzLUtONT7CA9kexNErStb5f272OH/ESQ0Jwg4GV6O3l8ksLrAteSGnxnR+j
         rBsGM4XmOR2K7AdNTBPEm22+d1Iv6h2rh/3+DVCSJYrayYlqj9i8HI9vPt9je1mc3f
         yN7Gnc0g8WZ/jCxA76ot5ysJv139PtlsQbZlrFhjdpImq9zvhIz4qO9y9cN6FmGeor
         P2Zpj1Ow05CBg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus DHCOM and PDK2
Date:   Sat, 21 May 2022 17:06:09 +0200
Message-Id: <20220521150610.93484-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible string for DH electronics i.MX8M Plus DHCOM and PDK2
into YAML DT binding document. This system is a general purpose SoM and
evaluation board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index ef524378d449b..adbceceae9726 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -914,6 +914,8 @@ properties:
       - description: i.MX8MP based Boards
         items:
           - enum:
+              - dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
+              - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
-- 
2.35.1

