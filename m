Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E445F46E1AA
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 05:46:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbhLIEtp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 23:49:45 -0500
Received: from marcansoft.com ([212.63.210.85]:57294 "EHLO mail.marcansoft.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229496AbhLIEto (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 23:49:44 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id C73DF41EA2;
        Thu,  9 Dec 2021 04:46:08 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Sven Peter <sven@svenpeter.dev>, Rob Herring <robh+dt@kernel.org>
Cc:     Hector Martin <marcan@marcan.st>,
        Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: power: apple,pmgr-pwrstate: Add apple,min-ps prop
Date:   Thu,  9 Dec 2021 13:44:59 +0900
Message-Id: <20211209044501.67028-2-marcan@marcan.st>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211209044501.67028-1-marcan@marcan.st>
References: <20211209044501.67028-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A few devices (DCP/DCPEXT) need to have the minimum power state for
auto-PM configured. Add a property that allows the DT to specify this
value.

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 .../devicetree/bindings/power/apple,pmgr-pwrstate.yaml    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
index 5056d08b8261..19a194980142 100644
--- a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
+++ b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
@@ -61,6 +61,14 @@ properties:
       Forces this power domain to always be powered up.
     type: boolean
 
+  apple,min-state:
+    description:
+      Specifies the minimum power state for auto-PM.
+      0 = power gated, 4 = clock gated, 15 = on.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+
 required:
   - compatible
   - reg
-- 
2.33.0

