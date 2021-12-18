Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19066479B63
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231841AbhLROej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:34:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233227AbhLROei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:34:38 -0500
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99DE3C061574
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:34:38 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4JGSzc0TN4zQk2F;
        Sat, 18 Dec 2021 15:34:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639838074;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=7OTdoESR2p8GE80V8OYcNegfAIeScHkGiDPJVOeK0IA=;
        b=yCA5SANB8xFhdH9fiH11K75qkRjarhUgs/2QKkKKk/gWEMsJwG7w/iGk6BgBlvnvQ7tPGh
        jYoR27ibxCdGVEhp+dP87+qr6MF7502VNrYemN4zJj6s1eH1vINBjvmLI71EqkRFJuz043
        C9hFVKMmmyq2f0IueVzPz5Jlok8gjI85N1LIHydxuuELKK3gN6ksq4K2Z/zTsUY1fTo+x0
        wgIxGGErUj0pUh3Qg6LX29nU1A/3bkCd9/LyX02ggKPITY7IAUgD3x3CQ45mJ6KfL7EDMp
        TGjn9/xw82t4ZHrl5PsKkQ1nbYD1Zima9FxjV6dRrAm0JbITOtSvfqcKjhR0gg==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] ASoC: dt-bindings: Use name-prefix schema
Date:   Sat, 18 Dec 2021 15:34:21 +0100
Message-Id: <20211218143423.18768-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

name-prefix.txt does not exist anymore, just reference the schema instead.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Changes in v2:
* Fix 'pass' -> 'true'

.../devicetree/bindings/sound/simple-audio-amplifier.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
index 26379377a7ac..8327846356d3 100644
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
+  sound-name-prefix: true
 
 required:
   - compatible
-- 
2.34.1

