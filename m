Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD2D12E8398
	for <lists+devicetree@lfdr.de>; Fri,  1 Jan 2021 12:46:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726515AbhAALqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jan 2021 06:46:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbhAALqT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jan 2021 06:46:19 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D986C061573
        for <devicetree@vger.kernel.org>; Fri,  1 Jan 2021 03:45:39 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id o19so48743899lfo.1
        for <devicetree@vger.kernel.org>; Fri, 01 Jan 2021 03:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X1yeAUk6b8gmMiVEP9IT/lqKGsTIem4bh7tOu2Oot/A=;
        b=EiprgCkNWoZTNpZ+M6EjNSn+adRKabT0A7ltqt3Y0x3cfsEV7w+/syWJH56UVYDc4+
         BGbQ+VeogSA8hr5LmrscLylIsLbrPljYWA63rSKzT84r01DjWCJJ4qF0/tBooyGqAI6d
         0vaxla9U3MlzwbvIX61tB7Z/1V16q5XTBE02PVaRXHmH2BJlwG6u1hPAoOiIp9yH1ism
         DWug6ErN86we9xX0iB1QzvqnrIgGAaFiGdVph9+26KZuX+qM/vDH/W4O0bC1n4C9xhRN
         OlBs/IYwNV/pH1kxg7YaEyz3QoG9pCCFCoY86unPqHPHH1E22VKG0ga3eOwRg+GVyAmG
         hmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X1yeAUk6b8gmMiVEP9IT/lqKGsTIem4bh7tOu2Oot/A=;
        b=mDvBYayaREhPd/XFY2x6QqCftJFVXYn8bP8i5rNZYQhM8iT+nWH1UbH5dCzhzLP2xb
         o6J0LstArUnBznQuNv9XBbfKr2oZXt4KREtMC6zLBXBr7ppT5n5dAuVn6rZH8+dRSIeV
         XCaaA8l52f9purG4NXybHZDe5t1MsLfDEkA5Zf3aGB+ebCeQ7AX2iFAINY8GZiIxrXIz
         BJyJyluVYwafW4OFI09OjNYs8O6TwdgwwLgqQEA40IEqzgGHEDubpwALdcpDVIepjbCW
         CNxfWaYd7mLwlmcA7jrH/r7AobTTBxMUDi71YlAlgk/OuZAzutnw7kX3uymbCQEZ4MNf
         92Mw==
X-Gm-Message-State: AOAM532ggf9zU3YRz0q3DzzciJIvsEEVX0mNaPXHfsjoJRtnetneb6NH
        WDatgLsRrvGqQLX2egaQiCaVYjTPr2CxgA==
X-Google-Smtp-Source: ABdhPJz68u9Xdaa14ja4xd+XvtPX65JRDstT/f9I/cqpEA6IAlHMb8YOQa3NTAVIzK6W5EPXTRyoOw==
X-Received: by 2002:a19:fc1b:: with SMTP id a27mr25204221lfi.349.1609501537546;
        Fri, 01 Jan 2021 03:45:37 -0800 (PST)
Received: from localhost.localdomain (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
        by smtp.gmail.com with ESMTPSA id b22sm6487166lfp.233.2021.01.01.03.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jan 2021 03:45:36 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: Augment s6e63m0 bindings
Date:   Fri,  1 Jan 2021 12:45:22 +0100
Message-Id: <20210101114522.1981838-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following problems with the s6e63m0 display
bindings:

- When used on the DSI bus, the panel is listed directly as
  a subnode on the DSI host so the "port" node is not
  compulsory. Remove "port" from required properties.

- The panel contains its own backlight control, so reference
  the backlight common properties and list default-brightness
  and max-brightness as supported but optional properties.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/display/panel/samsung,s6e63m0.yaml    | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
index 1dab80ae1d0a..ea58df49263a 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
@@ -11,6 +11,7 @@ maintainers:
 
 allOf:
   - $ref: panel-common.yaml#
+  - $ref: /schemas/leds/backlight/common.yaml#
 
 properties:
   compatible:
@@ -19,6 +20,8 @@ properties:
   reg: true
   reset-gpios: true
   port: true
+  default-brightness: true
+  max-brightness: true
 
   vdd3-supply:
     description: VDD regulator
@@ -31,7 +34,6 @@ required:
   - reset-gpios
   - vdd3-supply
   - vci-supply
-  - port
 
 unevaluatedProperties: false
 
-- 
2.29.2

