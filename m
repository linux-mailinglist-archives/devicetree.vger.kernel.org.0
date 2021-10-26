Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14C0343B990
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 20:28:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236936AbhJZSad (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 14:30:33 -0400
Received: from mout-p-202.mailbox.org ([80.241.56.172]:60964 "EHLO
        mout-p-202.mailbox.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236071AbhJZSac (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 14:30:32 -0400
X-Greylist: delayed 7042 seconds by postgrey-1.27 at vger.kernel.org; Tue, 26 Oct 2021 14:30:32 EDT
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4Hf0gW0Z9fzQkjH;
        Tue, 26 Oct 2021 20:28:07 +0200 (CEST)
Authentication-Results: spamfilter01.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635272885;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=AZ7CvNRkNKSZRoioIP12odIg8mncuskljJovSNkajjY=;
        b=hM0uB/RxVQUkW+8hELuC72BRLCpspj5OMgptIaHb63QKFAiv1eLhlHQ3kpShDqcy1jFxa6
        0+b7Unw5Md6sGQx7lH4CsGvrHSzi521Zlspw46fbDBRfGce0vdJODc6LzN1HHeu7KqGI2i
        Hr7U+xusbZ++WM6/nCXgDEvOoegYnIr4bYPVPcQ03EctEspvWZ/xju0GhbhVF88XvMPoS/
        DMOT5j9ESlDAoJKmpuwPZdWWlZa5TULpqcon2KSmuAKPyk1uHOXjSKOtnCydUoI89Yk9mR
        Cdk9cOdgJ6Rs6bIe01t5hMfI2EwtQdlEXj7oTZM04imFcRDwcCSuUplAZf7lYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:message-id:date:date
        :subject:subject:from:from:received; s=mail20150812; t=
        1635272884; bh=IqOzMaEIcRsCLB8HfuR5pnAHFnk0pnusfSJHR6k3R8c=; b=q
        F9JqanHWTutwGdGOaGWFdSoBgHN3GEu1FI33QIvw/XOYMKQ4a2m2zR3GaRk+48q2
        JL0IBeyAjV2KH10pZyLxKdeqdOF/eM7rCKg8fQ0H5PjV/XQazPGHwCICvHgo+3NR
        LWu5gAqAFacOQHywd3ROS642NeZzubYYsmXMEyCPIthEyh8YY2WPEsOYCRa9rENY
        EYC0meZ4kFWuNnth2ZxgeOhhRV0MiDjB8XmZ96zpsoSCizdzSRQDxLj1OWLlut2L
        haJXMxOihIW2ZviYiOuSiGWEiT6pO2y4+Z0rmawpHeaZs2f9YpVa0j1ay8tibu59
        T6GGgF8/yD6IrIZk4eD1Q==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: [PATCH v2 1/1] ASoC: meson: t9015: Add missing AVDD-supply property
Date:   Tue, 26 Oct 2021 20:27:54 +0200
Message-Id: <20211026182754.900688-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1A666130F
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
do not match any of the regexes: 'pinctrl-[0-9]+'"

Fixes: 5c36abcd2621 ("ASoC: meson: add t9015 internal codec binding documentation")
Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Thanks all for their review. Here is v2 with the following changes:
v2:
* Separated from other meson DT patches (2/4 - 4/4)
* Adjusted recipients
* Added missing property in example
* Adjusted commit message subject
* Added Reviewed-by: Jerome Brunet tag

 Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
index c7613ea728d4..db7b04da0b39 100644
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
 
@@ -56,4 +61,5 @@ examples:
         clocks = <&clkc CLKID_AUDIO_CODEC>;
         clock-names = "pclk";
         resets = <&reset RESET_AUDIO_CODEC>;
+        AVDD-supply = <&vddao_1v8>;
     };
-- 
2.33.1

