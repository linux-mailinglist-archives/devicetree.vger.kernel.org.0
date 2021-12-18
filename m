Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA34479B4F
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:25:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233414AbhLROZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:25:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233412AbhLROZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:25:11 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A64FC06173E
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:25:10 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4JGSmd619vzQl4q;
        Sat, 18 Dec 2021 15:25:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639837504;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=4JqT8IhtmC32jWTRrRPC1aHkPla/SvCjwUq+HPQfzAg=;
        b=tMDwMwcvhno5O8rJ6uTOHJFmiDhNeeKBiWnFIRu1Tu8BNyvLsL6qJc9yYwD5AnusC+aRHB
        GzFad1e/kHrgLgxA8seA2oGT7VucoGqdI9UR3zBovSFgxeyY5C36P87w8R0cbUymQpLqCj
        3P5KVTDYrtxIYgGAnfQlBbNI12OGYS0BG9LUeLdvnwqAAVN42JaLNaLFGbVSlIYd+N4CSI
        0D1/RZ0Sf2tL2SpBpR/fgAg80frt+5ZQ9+1wUxHqZowAhq4eDlYAaX7KIZW+NJHla4u7R1
        QxmF4D80KqEDD5ZpEIh7O0KVGiE71hKs/glVQIBez2d8w6In1rvUYMptP2/WCw==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] ASoC: dt-bindings: Use name-prefix schema
Date:   Sat, 18 Dec 2021 15:24:49 +0100
Message-Id: <20211218142451.15010-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

name-prefix.txt does not exist anymore, just reference the schema instead.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 .../devicetree/bindings/sound/simple-audio-amplifier.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
index 26379377a7ac..1f0327474744 100644
--- a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
@@ -9,6 +9,9 @@ title: Simple Audio Amplifier Device Tree Bindings
 maintainers:
   - Jerome Brunet <jbrunet@baylibre.com>
 
+allOf:
+  - $ref: name-prefix.yaml#
+
 properties:
   compatible:
     enum:
@@ -22,10 +25,7 @@ properties:
     description: >
       power supply for the device
 
-  sound-name-prefix:
-    $ref: /schemas/types.yaml#/definitions/string
-    description: >
-      See ./name-prefix.txt
+  sound-name-prefix: pass
 
 required:
   - compatible
-- 
2.34.1

