Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 775D864FDC7
	for <lists+devicetree@lfdr.de>; Sun, 18 Dec 2022 06:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbiLRFS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Dec 2022 00:18:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230321AbiLRFSZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Dec 2022 00:18:25 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A50640A
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 21:18:22 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E418184E98;
        Sun, 18 Dec 2022 06:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671340700;
        bh=m6Q8DgieU01b/+7CvH1MI63IPs+BL79y7J2XbTh9XBQ=;
        h=From:To:Cc:Subject:Date:From;
        b=LncvXg3hu42oit+e5UcFDUhqVcptuJSwXewVUHczbIv5phmJrrn6DJAej3FMx7nrI
         Ami4BD4fzMQoZ2DQVp6SzYoP6hUmqXey0QjImzSi9S6XzTtp7N1Blqdgej2E6obaNr
         Llb+TQM7/FOL53OnBRv3CHU538uCvaUJWlq3KNDvmJHird18dZmRvo21XOkRHr1zFs
         XLlO04as4JEU9IZ3x5dVZBMpGGHkbdBbor7SzBkJ6WvRguzpUkho79kXkGRkdamRWM
         6zs3zDbNsLK8auPSUTYT5UDJv4jDv5ESejBNenY3heu1iS9jcWM+Tz/R3Dr4VLsA92
         xvMZvnm/1nbeg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Plus eDM SBC
Date:   Sun, 18 Dec 2022 06:17:59 +0100
Message-Id: <20221218051800.495932-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible for Data Modul i.MX8M Plus eDM SBC board.
This is an evaluation board for various custom display units.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Denys Drozdov <denys.drozdov@toradex.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Yang <leoyang.li@nxp.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 88a92dac655bf..170ba3a54b65c 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -931,6 +931,7 @@ properties:
       - description: i.MX8MP based Boards
         items:
           - enum:
+              - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
-- 
2.35.1

