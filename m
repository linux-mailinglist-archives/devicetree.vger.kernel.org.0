Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A036479B4E
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:25:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233413AbhLROZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:25:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233403AbhLROZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:25:11 -0500
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03F32C061574
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:25:10 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4JGSmf3njJzQjmd;
        Sat, 18 Dec 2021 15:25:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639837504;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=a82+gK2rB6t07imGZfJORXTa3UcfNJMk0KbEGpLUQcA=;
        b=f/PSuR+gs/kW41cdMk5VUKE8nTFGAebH0DRZ9Cy72Xk42fzOjCRF5sHtc/7E8oaGPKhp/h
        cWM1L8KOMXsxyruqRBudhWEYK01dOIGX+5/45SKvb8n1J2EoxnpjUJwrQ59iCTzYKfmUt9
        aksOSjKJ26BBbzXI7wm+6FIZTc2dajt0eFbipCxoXi0PPz7x8LJF6J1c5571eZGNcBRP4J
        yqU4YZtzpY/YKPuZOL5woUfmqf964kPN1N1BxwvyS3uy8IlJITZ5Kjks5N9xp7WDGRi0qA
        SOM7wK15a2ejCNbdljtmPa4uOTwQYC1LUCQWT5qDmIwGo3SmHOTHvK5sT0zf0w==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] ASoC: meson: t9015: add missing sound-name-prefix property
Date:   Sat, 18 Dec 2021 15:24:50 +0100
Message-Id: <20211218142451.15010-2-alexander.stein@mailbox.org>
In-Reply-To: <20211218142451.15010-1-alexander.stein@mailbox.org>
References: <20211218142451.15010-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is used in meson-gxl and meson-g12-common .dtsi. Add the property to
the binding.
This fixes the dtschema warning:
audio-controller@32000: 'sound-name-prefix' does not match any of the
regexes: 'pinctrl-[0-9]+'

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
All users have set this to "ACODEC", but I am not sure if this value is
mandatory, so I opted to not set a pattern for this property.

 Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
index db7b04da0b39..580a3d040abc 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
@@ -9,6 +9,9 @@ title: Amlogic T9015 Internal Audio DAC
 maintainers:
   - Jerome Brunet <jbrunet@baylibre.com>
 
+allOf:
+  - $ref: name-prefix.yaml#
+
 properties:
   $nodename:
     pattern: "^audio-controller@.*"
@@ -38,6 +41,8 @@ properties:
     description:
       Analogue power supply.
 
+  sound-name-prefix: true
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
2.34.1

