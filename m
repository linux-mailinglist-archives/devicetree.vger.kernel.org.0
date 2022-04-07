Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1AE74F7CC7
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 12:30:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237683AbiDGKcm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 06:32:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244263AbiDGKcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 06:32:32 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A18739161
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 03:30:29 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 672878309E;
        Thu,  7 Apr 2022 12:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649327427;
        bh=wKaSOVMfBXk7LVywQAIXVp9+bsEotQwz0GMnZnKdIg4=;
        h=From:To:Cc:Subject:Date:From;
        b=P5bUmAL/bFiza2SbLLU9gVaTzyV1Ap0RD/KRANPZE02Zb7Jmji7iMncxO+gHrbxcy
         Vw8PoH76O9zIBkiHDy5qUTMelX7o0jBDo2wIc9Hj29VJV6xRJ/pj5Lw0PycE4+hOdh
         9jrmJQDoPnaIgO26HgbSjvWlSNjK9tmQ+CL+l/6gKDLwmPewZD4mN/0hbFrKEipYK8
         UzwWmjqXzCeputkalM7j3M5b9vQwVkwAbDi1Sg1sBfuQkh+E4xJbYSBR3xgMrppYyd
         ju2VTQsO+AAiUEh3MKwlCXkvdgwfBsO5PK5nLePLqC5NM1K5WQ/2IZW2vmbn+18UDq
         9kgABnBbVClhw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Anson Huang <Anson.Huang@nxp.com>,
        Fabio Estevam <festevam@denx.de>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: nvmem: snvs-lpgpr: Add i.MX8M compatible strings
Date:   Thu,  7 Apr 2022 12:30:16 +0200
Message-Id: <20220407103016.16543-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible strings for i.MX8M(Q), i.MX8M Mini, i.MX8M Nano, i.MX8M Plus.
All these SoCs have the SNVS LPGPR registers and they are at the same offset
as on i.MX7D.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Anson Huang <Anson.Huang@nxp.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Oleksij Rempel <linux@rempel-privat.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml b/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
index c819f0e903209..e374aa7891ae7 100644
--- a/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
+++ b/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
@@ -15,6 +15,10 @@ properties:
       - fsl,imx6q-snvs-lpgpr
       - fsl,imx6ul-snvs-lpgpr
       - fsl,imx7d-snvs-lpgpr
+      - fsl,imx8mm-snvs-lpgpr
+      - fsl,imx8mn-snvs-lpgpr
+      - fsl,imx8mp-snvs-lpgpr
+      - fsl,imx8mq-snvs-lpgpr
 
 required:
   - compatible
-- 
2.35.1

