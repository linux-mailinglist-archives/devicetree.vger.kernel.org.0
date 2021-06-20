Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E197E3AE107
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 00:50:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbhFTWws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Jun 2021 18:52:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbhFTWws (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Jun 2021 18:52:48 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18B9DC061574
        for <devicetree@vger.kernel.org>; Sun, 20 Jun 2021 15:50:35 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 76485800BF;
        Mon, 21 Jun 2021 00:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1624229431;
        bh=54iuHq+Gd9ekHgB14szE6rOUIHp2nLKDaxBcHPBtP8E=;
        h=From:To:Cc:Subject:Date:From;
        b=anXkGoRtb8oMXk1bcYZGz6Io2CiijurQM0aswZJc75DuQ/6wwTH/O8uvV6919/u3n
         QOdMJyGUH47eySxdsh4yVD54E12Akh2E6fhuRUxVKbUZKAcApnvLQKEyTzmx9ilNF5
         EtKqJyWSfcKGFR3y+bVtQmlFVGiGqJ3sTz3TrF+W4zC91G9H/64UdHS9+eq2a+q+3K
         t2dvlqokTGSu8Kwdvb7TjI5dCuxCj46IrE/BNrOsK+3RoMpG5rzXY0oLPaSACyfCAn
         VmQrU9d9UEKucGXBql8Aprs31kX8T4GvkszHWVcJJ/nK3UCW7unIjV1BuQRnMcQDZv
         9k02En8scH2Zg==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MN
Date:   Mon, 21 Jun 2021 00:50:28 +0200
Message-Id: <20210620225028.189637-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NXP's i.MX8MN has an LCDIF as well.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index a4c3064c778c..900a56cae80e 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -27,6 +27,7 @@ properties:
               - fsl,imx6ul-lcdif
               - fsl,imx7d-lcdif
               - fsl,imx8mm-lcdif
+              - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
 
-- 
2.30.2

