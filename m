Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 048C247E326
	for <lists+devicetree@lfdr.de>; Thu, 23 Dec 2021 13:24:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348195AbhLWMYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Dec 2021 07:24:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239495AbhLWMYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Dec 2021 07:24:54 -0500
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E95B1C061401
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 04:24:53 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4JKTsc0526zQkmF;
        Thu, 23 Dec 2021 13:24:52 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1640262290;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=cT0+wkDSDPtvc62/fafJm4zxOwD0FjNk79FqTIHSZUc=;
        b=EdkT3Ai/3oRON67p9O6FnP8hcQRhdlF903+JNWGXDyBk3YMd4EJZt54Z9yt2Oxd0tg0LDc
        Pv8hQlv6w054RDAKsdmVdMMXIQbdRuyaGEKHL1DNYhbC1g/Pv4SBQfLS3nF4gXRxiEqfBr
        5m5Aomp/c68ekiSJDaLBvpnTcOD19c5ZZCDHiQrU6soHU8KahUdqUYknF1PPsv4c3w6iZo
        0n+01YE7CDOdsDJHDhGhef7mFgfCkkcds6p6lRdsS0LeOHBmJ6e3ZBzYYOjXqOrrJZ4qRM
        pCl+1EiBAA512Px/HqdsYkmNTrcWcNflAJ4eznRqQq/wnjsE1m8GPLkT+6jeow==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 1/3] dt-bindings: display: meson-dw-hdmi: add missing sound-name-prefix property
Date:   Thu, 23 Dec 2021 13:24:32 +0100
Message-Id: <20211223122434.39378-2-alexander.stein@mailbox.org>
In-Reply-To: <20211223122434.39378-1-alexander.stein@mailbox.org>
References: <20211223122434.39378-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is used in meson-gx and meson-g12. Add the property to the binding.
This fixes the dtschema warning:
hdmi-tx@c883a000: 'sound-name-prefix' does not match any of the
regexes: 'pinctrl-[0-9]+'

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 .../devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml   | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
index cf5a208f2f10..343598c9f473 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
@@ -10,6 +10,9 @@ title: Amlogic specific extensions to the Synopsys Designware HDMI Controller
 maintainers:
   - Neil Armstrong <narmstrong@baylibre.com>
 
+allOf:
+  - $ref: /schemas/sound/name-prefix.yaml#
+
 description: |
   The Amlogic Meson Synopsys Designware Integration is composed of
   - A Synopsys DesignWare HDMI Controller IP
@@ -99,6 +102,8 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  sound-name-prefix: true
+
 required:
   - compatible
   - reg
-- 
2.34.1

