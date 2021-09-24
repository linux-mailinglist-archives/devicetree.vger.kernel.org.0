Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A766A416D4C
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 10:04:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244521AbhIXIFe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 04:05:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244539AbhIXIEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 04:04:54 -0400
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FA76C061574
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 01:02:54 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:5dd8:9bc4:3752:5710])
        by laurent.telenet-ops.be with bizsmtp
        id xk2s2500U2gynNa01k2sJU; Fri, 24 Sep 2021 10:02:53 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mTgAW-008WUw-6o; Fri, 24 Sep 2021 10:02:52 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mTgAV-007MJd-MA; Fri, 24 Sep 2021 10:02:51 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ASoC: dt-bindings: wlf,wm8978: Fix I2C address in example
Date:   Fri, 24 Sep 2021 10:02:50 +0200
Message-Id: <0409470fbe6bba69ec74a3f30681b5fe93a372ba.1632470464.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the WM8978 datasheet, the address of the device is fixed as
0011010 in 2-wire mode.

Fixes: 5bd5699c494f42a3 ("ASoC: dt-bindings: Add WM8978 Binding")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/sound/wlf,wm8978.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
index 944e5859c962e634..0b80ac3a7106658c 100644
--- a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
@@ -48,10 +48,10 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        codec@0 {
+        codec@1a {
             #sound-dai-cells = <0>;
             compatible = "wlf,wm8978";
-            reg = <0>;
+            reg = <1a>;
         };
     };
 
-- 
2.25.1

