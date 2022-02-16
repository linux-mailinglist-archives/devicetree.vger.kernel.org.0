Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B7C54B89B9
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 14:23:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231916AbiBPNXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 08:23:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:33338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234329AbiBPNXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 08:23:13 -0500
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B9124BC3
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:21:47 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:7534:e0be:5adf:2691])
        by laurent.telenet-ops.be with bizsmtp
        id vpMl2600818GbK101pMla6; Wed, 16 Feb 2022 14:21:45 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1nKKFc-000xtb-P7; Wed, 16 Feb 2022 14:21:44 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1nKKFc-00Cx2V-Af; Wed, 16 Feb 2022 14:21:44 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to shmem property
Date:   Wed, 16 Feb 2022 14:21:43 +0100
Message-Id: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"make dt_binding_check":

    Documentation/devicetree/bindings/firmware/arm,scpi.example.dt.yaml: scpi: shmem: [[2], [1]] is too long

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Exposed by commit 39bd2b6a3783b899 ("dt-bindings: Improve phandle-array
schemas").
---
 Documentation/devicetree/bindings/firmware/arm,scpi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
index 800417a76bda0bd9..3735f221fdf24e0a 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
@@ -51,6 +51,7 @@ properties:
       be any memory reserved for the purpose of this communication between the
       processors.
     minItems: 1
+    maxItems: 2
 
   power-controller:
     type: object
-- 
2.25.1

