Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2201770484C
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:57:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231722AbjEPI5W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:57:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230408AbjEPI5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:57:21 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 146522707
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:57:20 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 44B8486065;
        Tue, 16 May 2023 10:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684227438;
        bh=cFOj5bQqxYTB91msvhREKTX9lsohBAfvYP5ytmOZXeE=;
        h=From:To:Cc:Subject:Date:From;
        b=Tg7eXO1MoAA19IN3TDpFcsWHa6YEPyVOba1AnquXenqX8lAsS65FBLqB8KfVAIOTJ
         ZChFGUrMDtIqlhhAd+kjmQkgoJoxxSMGFd6eeAh1mpBcpdnc+jxw2gwF0FEF5qsUJe
         VUPYsBmXb0DvvOHNLJV95vEJiJ7XfqMpxvqTiiqw/x3VtnEF0JiR3/LMM7tt3QG426
         DC7DFNAKKBVhU1imQPmSLMVa2St2lu0l2qcUJNhcNGPoHU5z2jg0qX7DKQpdCqUPV1
         zJRPIc/MuhnDOhj0enT9J0aUi2WA6SwdPaL9n9pCaDfDyhrj9EX76Ur9HLAUt0oXxR
         6Q611P4EHYLKw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: fsl: Fix syntax error
Date:   Tue, 16 May 2023 10:57:13 +0200
Message-Id: <20230516085713.109309-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
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

Fix the following error by replacing tab indent with spaces.
"
Documentation/devicetree/bindings/arm/fsl.yaml:930:46: [error] syntax error: found character '\t' that cannot start any token (syntax)
"

Fixes: d2bf7abfd235 ("dt-bindings: arm: fsl: Add Emtop SoM & Baseboard")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Yang <leoyang.li@nxp.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Stefan Wahren <stefan.wahren@chargebyte.com>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 63f8886dc69a5..b5fc884cfb668 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -927,8 +927,8 @@ properties:
 
       - description: Emtop i.MX8MM based Boards
         items:
-          - const: ees,imx8mm-emtop-baseboard			# i.MX8MM Emtop SoM on i.MX8M Mini Baseboard V1
-          - const: ees,imx8mm-emtop-som			# i.MX8MM Emtop SOM-IMX8MMLPD4 module
+          - const: ees,imx8mm-emtop-baseboard      # i.MX8MM Emtop SoM on i.MX8M Mini Baseboard V1
+          - const: ees,imx8mm-emtop-som            # i.MX8MM Emtop SOM-IMX8MMLPD4 module
           - const: fsl,imx8mm
 
       - description: Engicam i.Core MX8M Mini SoM based boards
-- 
2.39.2

