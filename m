Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E80C652C8D9
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 02:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231633AbiESAow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 20:44:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232184AbiESAov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 20:44:51 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040B7B4A4
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 17:44:47 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0FE3581E79;
        Thu, 19 May 2022 02:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1652921084;
        bh=dZlOJI931DEjQLjfeAS6aKY1K7jH2ESJJCmpOIH03+s=;
        h=From:To:Cc:Subject:Date:From;
        b=Epz5s1xXjbv1Izy4TArHGZupxEtbE5yBiadpAH3qkRm1CaKc3VVzol9lGDHlDidNl
         qWxlKDBu3+vu+Qko9hmWgun/d371NCiUly0ShbT1ZvRbgY5C3/XoZuzvuJg+8HodiI
         gr/B4uOc10FTjnn3rtPcpav7R68t6mH2UiC97MwEqdxbOHsOXdLJIMkKYD8KyRsMzG
         Yu2Xq0JZoMnmTm3gdEXC+vn7eMmP2dAiiFauyfX9RDZNpvm+WS8J9SderfhdseLGps
         qpsPFW0N1OF3kPBsLhjn1GzJZ3GVxpAUqh1RaSM0lgnmEcIKZpsPQBlHvOKXLhMbu4
         ZcXiXNMKsQJMw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, martyn.welch@collabora.com,
        Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
        Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: lcdif: Add compatible for i.MX8MP
Date:   Thu, 19 May 2022 02:44:30 +0200
Message-Id: <20220519004431.320942-1-marex@denx.de>
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
V2: No change
V3: No change
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 900a56cae80e6..876015a44a1e6 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -20,6 +20,7 @@ properties:
           - fsl,imx23-lcdif
           - fsl,imx28-lcdif
           - fsl,imx6sx-lcdif
+          - fsl,imx8mp-lcdif
       - items:
           - enum:
               - fsl,imx6sl-lcdif
-- 
2.35.1

