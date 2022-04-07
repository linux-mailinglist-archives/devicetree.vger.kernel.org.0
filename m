Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB3F04F87F9
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 21:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbiDGTX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 15:23:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiDGTX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 15:23:59 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06471267C12
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 12:21:58 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6722F83CF3;
        Thu,  7 Apr 2022 21:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649359316;
        bh=ehU18/MdtRAR4T3rAgjsTaEje+IDkKG89jU4ZK/oG1w=;
        h=From:To:Cc:Subject:Date:From;
        b=ob8LkvueWhlPtoF3rRaYX6YGCeqOJ7+Tf4pHYhy/LoAQicHvG/yPao27Q4fh6nAmU
         UmT9N/zyiUv8PGhQ8FwMR+LTo0Mtm9nohkrHqeKyIia+7oLn1xEzvt8C6IHzObkDbf
         OMcjS4Boi4pbd/iHkmjN47a8PU0SgmvtDk8ItKIb4Bc4eUFYoC8rysOxgVnWfpbPXc
         YVt6rK41lP8zx8ssfWcppqyn1hxj+veZGtO0SBMjnuB7KQd1yL8zxNoxs8o1cQOref
         YbFibJOEOIFHhmu+yZ5C5nm7tgESO8KlsjsOiWEDLkQD5w6rsJ4dPnx3KtbFtRfeKm
         D64imLBGYGcPA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Add i.MX53 based Menlo board comment
Date:   Thu,  7 Apr 2022 21:21:41 +0200
Message-Id: <20220407192141.179845-1-marex@denx.de>
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

Add comment regarding the i.MX53 based Menlo board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 03b8d8cf2c6b4..8a7ed7782e99f 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -172,7 +172,7 @@ properties:
               - karo,tx53                     # Ka-Ro electronics TX53 module
               - kiebackpeter,imx53-ddc        # K+P imx53 DDC
               - kiebackpeter,imx53-hsc        # K+P imx53 HSC
-              - menlo,m53menlo
+              - menlo,m53menlo                # i.MX53 Menlo board
               - voipac,imx53-dmm-668          # Voipac i.MX53 X53-DMM-668
           - const: fsl,imx53
 
-- 
2.35.1

