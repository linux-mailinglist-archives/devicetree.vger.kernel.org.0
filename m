Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5780D55EB2C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 19:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230258AbiF1Rmx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 13:42:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232070AbiF1RmS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 13:42:18 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 667E03467B
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 10:42:17 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 12E4C83EF2;
        Tue, 28 Jun 2022 19:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1656438135;
        bh=GdzzuhTccWlOIPXTBTWrvqZ4GspFVJW/iDo8X/X0mjE=;
        h=From:To:Cc:Subject:Date:From;
        b=vfLkC6mExi9ng9YTHk87LHweD2AWBICSZIKJ+NHonqC8jtpq+yWCoIQ2ELtSWY1QV
         IDb6BsBG+GkLmy6y9Rs7mdCpoUBVP/WqrMeVVrBFcoY04JgRwR5CGASECTbGXW5HMv
         waQ0UhtldioHvAeHIgD20JzKHnTPo6usjuaYTMuHVSwGmyXE6qMw+2VQeEm9qvwUOj
         MpM6rDxbdXvHhDxpc4EV01pfIpZxXfLqaKW29wcGeVg7/R+WXA6pg1fvjX6gk9x6Tr
         KtjHlz86ZAKH/Mc1GR3DVqV1BueyQ3E4HNvCEmdNe1DzfTrVzYwfdfrV7B65oBBib8
         fbbIL4V5wEznA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Rob Herring <robh@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
        Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org
Subject: [PATCH v7 1/2] dt-bindings: lcdif: Add compatible for i.MX8MP
Date:   Tue, 28 Jun 2022 19:41:51 +0200
Message-Id: <20220628174152.167284-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
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

Acked-by: Rob Herring <robh@kernel.org>
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
V4: No change
V5: Add AB from Rob
V6: No change
V7: No change
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

