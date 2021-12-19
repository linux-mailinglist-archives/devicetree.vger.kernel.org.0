Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7372147A010
	for <lists+devicetree@lfdr.de>; Sun, 19 Dec 2021 10:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232462AbhLSJmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Dec 2021 04:42:14 -0500
Received: from mout-p-101.mailbox.org ([80.241.56.151]:39658 "EHLO
        mout-p-101.mailbox.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbhLSJmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Dec 2021 04:42:14 -0500
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JGyRn0yDMzQkBg;
        Sun, 19 Dec 2021 10:42:13 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639906931;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=JYClmCPmgU22mez6OtiRbEzfn+G531E844dI/UyFy18=;
        b=H8l0gfPD8wmEAfiOoDld7ktbtJ+xKqz2lAyblKqsdG7bPR5ZmwaX8gc2wsAmyx04v8MaxK
        F5OG4xpWUrh3bkK36XxyXmbDCTX5kGbd3LR7pT+EDzzrVWxQnEy7ct2aeLXSzUYJTdUyev
        NPS/pkTEo188RVJLb/a1SVo4iI0MCm6U2dBGsQrGcJ1tDANNOExlU6RuGCYFI1JcJzHHsI
        XBlnuJ9OufK/HH9UC9QnF/faTxkh1B3m6VhgvnVoGk0Pgx1I0nnJGXdOY2uvFF/JzWScm6
        p19qQhxdwnrBcAwFhdYNu/yozF9qE2X7LeYXNDS7kK2GfKKCk9ey9pMfkCglpA==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/1] dt-bindings: display: meson-vpu: Add missing amlogic,canvas property
Date:   Sun, 19 Dec 2021 10:41:55 +0100
Message-Id: <20211219094155.177206-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property was already mentioned in the old textual bindings
amlogic,meson-vpu.txt, but got dropped during conversion.
Adding it back similar to amlogic,gx-vdec.yaml.

Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to yaml")
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Changes in v2:
* Do not linebreak Fixes tag
* Make amlogic,canvas mandatory as it was in textual binding already
* Add amlogic,canvas to example

 .../devicetree/bindings/display/amlogic,meson-vpu.yaml      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
index 851cb0781217..047fd69e0377 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
@@ -78,6 +78,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  amlogic,canvas:
+    description: should point to a canvas provider node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   power-domains:
     maxItems: 1
     description: phandle to the associated power domain
@@ -106,6 +110,7 @@ required:
   - port@1
   - "#address-cells"
   - "#size-cells"
+  - amlogic,canvas
 
 additionalProperties: false
 
@@ -118,6 +123,7 @@ examples:
         interrupts = <3>;
         #address-cells = <1>;
         #size-cells = <0>;
+        amlogic,canvas = <&canvas>;
 
         /* CVBS VDAC output port */
         port@0 {
-- 
2.34.1

