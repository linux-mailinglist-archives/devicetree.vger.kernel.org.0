Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 578AE69957F
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 14:16:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbjBPNQU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 08:16:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbjBPNQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 08:16:16 -0500
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F96B53554
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1676553373; x=1708089373;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=DL5Q1SD6gefZMi2w6bHvNhOIfkmdJdtrS+ULofmUJaM=;
  b=G0IFbBrT0aCdvqkcwZ3Lajt+NTGbcgoHRUpL+BOO/b3nM0vcmQKoZOV+
   LSgMMWz9oM15SBr73teD3E4SkGuPEaZ3upjiuqVduNKfJLZ33nHOz/YyO
   avl/MJ72vLt3POT+PV324NcXsd4xIRoY9Z2uov+oshCm4DVtdMl5W5O6s
   jD6InXP0QMM5T9wftqfhbRaW0isQGWcPFLGLVcpN2h/3bHrguhomAbuvM
   TZEY6MFm8NL1OoOo50yI1goDD2CoT5WiA4TvkJRmrQz+N7Vo4lFwmNeaw
   4pSDewRIEtoI+149pve7mVGIp+HX/C2B60l/e+30b8X4WSN78audQlG6+
   A==;
X-IronPort-AV: E=Sophos;i="5.97,302,1669100400"; 
   d="scan'208";a="212326806"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Feb 2023 06:16:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 06:16:12 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.16 via Frontend
 Transport; Thu, 16 Feb 2023 06:16:11 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Conor Dooley <conor@kernel.org>, <soc@kernel.org>
CC:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        Hal Feng <hal.feng@starfivetech.com>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v1] dt-bindings: riscv: correct starfive visionfive 2 compatibles
Date:   Thu, 16 Feb 2023 13:15:12 +0000
Message-ID: <20230216131511.3327943-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Using "va" and "vb" doesn't match what's written on the board, or the
communications from StarFive.
Switching to using the silkscreened version number will ease confusion &
the risk of another spin of the board containing a "conflicting" version
identifier.
As the binding has not made it into mainline yet, take the opportunity
to "correct" things.

Suggested-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Link: https://lore.kernel.org/linux-riscv/Y+4AxDSDLyL1WAqh@wendy/
Fixes: 97b7ed072784 ("dt-bindings: riscv: Add StarFive JH7110 SoC and VisionFive 2 board")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Arnd,

If this is okay with the dt folk, could you please send this to Linus
in the merge window?
The dts for this binding hasn't landed yet so this is a standalone
"fix" on top of my earlier dt for v6.3 PR.

Thanks,
Conor.
---
 Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
index 60c7c03fcdce..cc4d92f0a1bf 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -26,8 +26,8 @@ properties:
 
       - items:
           - enum:
-              - starfive,visionfive-2-va
-              - starfive,visionfive-2-vb
+              - starfive,visionfive-2-v1.2a
+              - starfive,visionfive-2-v1.3b
           - const: starfive,jh7110
 
 additionalProperties: true
-- 
2.39.0

