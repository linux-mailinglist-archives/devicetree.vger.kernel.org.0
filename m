Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32162479B50
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:25:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233403AbhLROZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:25:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233411AbhLROZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:25:11 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A759C06173F
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:25:10 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JGSmg2WMBzQlMN;
        Sat, 18 Dec 2021 15:25:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639837505;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=XF9vQjylQsXIaoxe2xV57DPHnmDDChvv1OAmnlTSlAM=;
        b=SrZRa4EFPNZtE5k8EMDMIYbfeTdQhyFmB1NKZax7Dw+r8Xu9Y9AERvNWxrXmHVPbxJ+UDY
        bsbGSU0f8UWchBkPXCvy5h77alqvNckvQhL7n0PQr1ZqYPM+ugiDzPjWZwBuyW9DJ89f0i
        TbgXPWK583RoV8oRMtICYfXAcQyKzVnjahqxmFQo1v9tx97j8LJ0wDuO/hOP9QCYuRfB5o
        65XIrFH/po5T55DjUOb4HwbH8klo0dfZddkXY7/suOvytTmVasIApF5RLou4/3VbURUhF1
        eJf7y3oXUcmY+sB8wRpBcahpHn9BVH3BnGIRpWbVlFBN3hx8yp5z9slIiHXfWg==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 3/3] ASoC: meson: g12a: add missing sound-name-prefix property
Date:   Sat, 18 Dec 2021 15:24:51 +0100
Message-Id: <20211218142451.15010-3-alexander.stein@mailbox.org>
In-Reply-To: <20211218142451.15010-1-alexander.stein@mailbox.org>
References: <20211218142451.15010-1-alexander.stein@mailbox.org>
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

 .../devicetree/bindings/sound/amlogic,g12a-toacodec.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,g12a-toacodec.yaml b/Documentation/devicetree/bindings/sound/amlogic,g12a-toacodec.yaml
index 3c3891d17238..28c082b07c3e 100644
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
 
+  sound-name-prefix: pass
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
2.34.1

