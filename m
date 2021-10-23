Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 221D243858F
	for <lists+devicetree@lfdr.de>; Sat, 23 Oct 2021 23:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229989AbhJWVvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Oct 2021 17:51:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbhJWVvk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Oct 2021 17:51:40 -0400
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01AACC061714
        for <devicetree@vger.kernel.org>; Sat, 23 Oct 2021 14:49:20 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4HcFH30z4ZzQjw7;
        Sat, 23 Oct 2021 23:49:19 +0200 (CEST)
Authentication-Results: hefe.heinlein-support.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635025756;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=FkzSrBO6NvwHuWP3Puq9S9mHcBwMLBrJwZrwEeSR/HA=;
        b=nNS3T1tpZNW7oZdsKkNtnznhoqxKev85kHza2HfnUsjL5cdyFo+4hbnpSlx7JJ2OVVk6jp
        d7mme0EINY0FgTINr+UcsFkniFjMQEIYbCFO+mtEp3FaqOOd9OLTxU7bxxZA9nXc1Eqiq3
        RaBV/lTpOCRQqJtLF9oJANlhP0rvvSc5AF0C3yETs6EodNQ2codtrUie3DNW2/66sDd6/I
        nI9bxVSYNzTH4+7+8Lkeurt5BUnXBpwprgRW4h60wZV8rLr2WRkxkVsVDqVvgYIAdPFgBL
        x7uLKnFH7eQtAdtr/10i2C1wGo3twL45TpLHcPg9pERH7J8t23MDM/5j96iYHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:message-id:date:date
        :subject:subject:from:from:received; s=mail20150812; t=
        1635025755; bh=9VkjI/kjIOtOnniE0C+7T76MF5zxMccBXB9K4gEQ+sM=; b=k
        Tn+vSV+sv17lBW7Y9+NQkem+zQNo67gEcOGISQQmagnCQ5Q6ijgFGAobjCneiMnr
        xcIbZME0JRwoVx3Yl3U1QurYTlvLblHespiPv05THe3bCTWZ1CU4u1PzIrABheRq
        YT6vipsArt+xB3Jm3rdOnPi71vK7PM/EZrA3Q+c/pH66OQzKh9KpxbwR4N7gPbR9
        3Zjb7MFM5FSPwotLTqMloUbH+8B5STU7mVugeB3prGHlW4FTCX75qLh49rT/slXe
        Uavwoc5d9dpOa7SaEM9ozsPdNa9gf1l9JUPyAoW+P8EFm/R1sGyJ1X+eKva1y2zr
        h+/MXUczmPwI5RTXgV5NA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: sound: amlogic: t9015: Add missing AVDD-supply property
Date:   Sat, 23 Oct 2021 23:48:53 +0200
Message-Id: <20211023214856.30097-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D281665A
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
do not match any of the regexes: 'pinctrl-[0-9]+'"

Fixes: 5c36abcd2621 ("ASoC: meson: add t9015 internal codec binding documentation")
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
I am aware that adding required properties to bindings is frowned upon. But in
this case it seems acceptable for the following reasons:
* AVDD-supply was used from the very first driver commit
* All DT (g12 and gxl) using t9015 controller provide AVDD-supply
  already
But I'm ok to not add it to required properties as well. The driver uses
it nevertheless though.

 Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
index c7613ea728d4..5f4e25ab5af6 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
@@ -34,6 +34,10 @@ properties:
   resets:
     maxItems: 1
 
+  AVDD-supply:
+    description:
+      Analogue power supply.
+
 required:
   - "#sound-dai-cells"
   - compatible
@@ -41,6 +45,7 @@ required:
   - clocks
   - clock-names
   - resets
+  - AVDD-supply
 
 additionalProperties: false
 
-- 
2.33.1

