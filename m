Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E62F479B64
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbhLROei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:34:38 -0500
Received: from mout-p-102.mailbox.org ([80.241.56.152]:19796 "EHLO
        mout-p-102.mailbox.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231841AbhLROei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:34:38 -0500
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4JGSzd2Vc6zQl4q;
        Sat, 18 Dec 2021 15:34:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639838075;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=nXB+08+k7M9poCYOa2pdqxCM6ES+Bb3wI7MNLLV8K24=;
        b=CUpKVtUXP2RuOXvLx4vEDJu/i7f/IzhyDKNPtHxv/toXjyNDyFIuCrgueB0GTaiFFuGHf1
        vAZdzIh6dR/zfs2vsDaIEUliAHEvalQRRrJ3RhWdrxzkfw6xhp03NYHFiSVpfD8Ou1doXL
        9cs6ikjxTrNO4/MoWXkaSbyP+qxxVPo0ruJdNArHKMzJ823EM0sZTeDYE5+2IlZNfs5vVi
        ujekC6Q+TxTh5hO1rWQdJJGgVk0E1RVk6oVgCEsbgwmS+hVaEj8B9gWNUT8tX+X2La8Ga0
        XQFEPSQ5NxQj0EcTIhjM6x1W9sOk40iTMgKlYHYK81/ZI7vpme0jaJGqEaZB8g==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] ASoC: meson: g12a: add missing sound-name-prefix property
Date:   Sat, 18 Dec 2021 15:34:23 +0100
Message-Id: <20211218143423.18768-3-alexander.stein@mailbox.org>
In-Reply-To: <20211218143423.18768-1-alexander.stein@mailbox.org>
References: <20211218143423.18768-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is used in meson-sm1 and meson-g12 .dtsi. Add the property to
the binding.
This fixes the dtschema warning:
audio-controller@740: 'sound-name-prefix' does not match any of the
regexes: 'pinctrl-[0-9]+'

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
All users have set this to "TOACODEC", but I am not sure if this value is
mandatory, so I opted to not set a pattern for this property.

Changes in v2:
* Fix 'pass' -> 'true'

.../devicetree/bindings/sound/amlogic,g12a-toacodec.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,g12a-toacodec.yaml b/Documentation/devicetree/bindings/sound/amlogic,g12a-toacodec.yaml
index 3c3891d17238..77469a45bb7a 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,g12a-toacodec.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,g12a-toacodec.yaml
@@ -9,6 +9,9 @@ title: Amlogic G12a Internal DAC Control Glue
 maintainers:
   - Jerome Brunet <jbrunet@baylibre.com>
 
+allOf:
+  - $ref: name-prefix.yaml#
+
 properties:
   $nodename:
     pattern: "^audio-controller@.*"
@@ -31,6 +34,8 @@ properties:
   resets:
     maxItems: 1
 
+  sound-name-prefix: true
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
2.34.1

