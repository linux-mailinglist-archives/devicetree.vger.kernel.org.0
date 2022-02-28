Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 619124C6032
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 01:46:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230399AbiB1ArV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Feb 2022 19:47:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbiB1ArV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Feb 2022 19:47:21 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B38E73A725
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 16:46:43 -0800 (PST)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id CC234838FD;
        Mon, 28 Feb 2022 01:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1646009201;
        bh=6ucLCp5bAAtjqokyTODJTnHUYRUAgzR7q0kvgQ5ximw=;
        h=From:To:Cc:Subject:Date:From;
        b=VxOI2nWo6RO+XpJNkpXA/8dDuXYFPe8a9CVoW5v29k1JX5894Qjzc8mCZvrEZSUSF
         9++rfiltoJoTIlSOtjglQ6pc0ybpoVT+LiSFHwPUNwbS3TNiCwraH2KikvUVGSSsgP
         QT8ZQqqdZQI4ODKIQ1+UlicrQ3goBrb1HkiUcB15TFUfWmN/lKMY6cBVJF6hu2Mt6J
         xfxbNSa/yYqQ9p0B7GJHapiNYZyGTGxsvENgPgjoE44J34XnjqaEP76TKwVh+hxV19
         C2I3JADEQ9grgUEq5zslAKE6Lal868kAhW+KoKHGBArm//etAyQ61QUkErOMfPByNe
         dSTllAtl/znpA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
        Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org
Subject: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for i.MX8MP
Date:   Mon, 28 Feb 2022 01:45:57 +0100
Message-Id: <20220228004605.367040-1-marex@denx.de>
X-Mailer: git-send-email 2.34.1
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

Add compatible string for i.MX8MP LCDIF variant. This is called LCDIFv3
and is completely different from the LCDIFv3 found in i.MX23 in that it
has a completely scrambled register layout compared to all previous LCDIF
variants. The new LCDIFv3 also supports 36bit address space. However,
except for the complete bit reshuffling, this is still LCDIF and it still
works like one.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robby Cai <robby.cai@nxp.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Stefan Agner <stefan@agner.ch>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 900a56cae80e6..9831ab53a053d 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -28,6 +28,7 @@ properties:
               - fsl,imx7d-lcdif
               - fsl,imx8mm-lcdif
               - fsl,imx8mn-lcdif
+              - fsl,imx8mp-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
 
-- 
2.34.1

