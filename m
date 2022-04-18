Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A360B505A1E
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 16:37:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344477AbiDROkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 10:40:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346345AbiDROju (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 10:39:50 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C113B57C
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 06:25:14 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 619BA81DE9;
        Mon, 18 Apr 2022 15:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1650288311;
        bh=FKbZTjanczc0WwSe/mhokkUSJHj28l417xPyfy+nymM=;
        h=From:To:Cc:Subject:Date:From;
        b=nRiTyU7lFKCoysZxsICHzsKQMcuUY0dg+zZ7rM5lcSbMnbrwPHFGQNTaNJnAlYNjs
         Phtse4BFQuhkAGQmFsNWdnUpcKtv9QFrWMzX/yEOwOuhLJDBk8AyUb4Pp8ZAyBVgrf
         wi1vliz0/MrQesIHCSrbmuHGKnEFDfdMmAwFCI13jegkL5nSUkT1NFQCVmvXVf9j2s
         NG2UEt0Whsl9mWenY1v/kcc5okVV6TJO9IXaMlHiklE1j1Y/mZ8sAwYaWIYI9QgYwU
         rVliIRRFjyEU60jKg2JT4yieVC/39uWSAfBRhT9LLdCiJryd+Ttg7IGEk4EhpU0V+a
         kMZG86jkxlyGQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin based Menlo board
Date:   Mon, 18 Apr 2022 15:24:56 +0200
Message-Id: <20220418132457.15849-1-marex@denx.de>
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

Add DT compatible string for board based on the Toradex Verdin iMX8M
Mini SoM, the MX8Menlo. The board is a compatible replacement for
i.MX53 M53Menlo and features USB, multiple UARTs, ethernet, LEDs,
SD and eMMC.

Acked-by: Peng Fan <peng.fan@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Fabio Estevam <festevam@denx.de>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: - Expand comment with Verdin SoM note
V3: - Add RB by Fabio
V4: - Add AB by Peng
V5: - Add AB from Rob
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b6cc341153624..4f5837071062d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -819,6 +819,7 @@ properties:
               - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
               - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
               - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
+              - menlo,mx8menlo            # i.MX8MM Menlo board with Verdin SoM
               - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
               - toradex,verdin-imx8mm-nonwifi  # Verdin iMX8M Mini Modules without Wi-Fi / BT
               - toradex,verdin-imx8mm-wifi  # Verdin iMX8M Mini Wi-Fi / BT Modules
-- 
2.35.1

