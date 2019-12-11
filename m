Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B260B11A463
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2019 07:19:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727736AbfLKGTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Dec 2019 01:19:44 -0500
Received: from mail-pl1-f195.google.com ([209.85.214.195]:39831 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726687AbfLKGTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Dec 2019 01:19:44 -0500
Received: by mail-pl1-f195.google.com with SMTP id o9so994639plk.6
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2019 22:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/vdhu1Xt9iOedS/Y8YF8BetiFT0tTQ4LeUM36vWZzls=;
        b=JVb+VkabPQpc1d5JUv94Fd3rqHXoQkJurV2AnuXWDyxigkquyeTCTxqAYzFjy9N+Dm
         ZQWD5a0FFJoK+9dAUlknTnV6sPgRWC1+3PHnstZPVCLZZdiKpS612xxtZEqQpCaeI0Ya
         k5Y9ILlV/QAS/hAe8zIKHJSZMN9pVZnMIMbkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/vdhu1Xt9iOedS/Y8YF8BetiFT0tTQ4LeUM36vWZzls=;
        b=bN4yErWczaH2LsrlvwS1KUwQN9OGxUkxuP4/8v/LBT4QdSzQZhi5J4Pg3at/n65EKK
         xj+026e0F+iRd1eUtWqlv8LxWL5y9b+DY78h90lij8cteqfKjCEup4o6NMV9BafC8x3U
         wdqa8o9dedU+SIZgNrduSSRxqCI+lpKqMGSpbixznbEPkGgDV5J1ndjL4C9nWo2uNXF3
         7wPK6mtXRo4J0gcsgSV0vPv7CXm1AuItMNAXW4HAZ1rhw5ffBeVUD8kRfwjg76o/MWUc
         UnmoPQscsW1HkOKrSTUIVmkSBKKOKs5z5QjUyV3ltQsuTzUvz3AsHBADrcVZLgs7jGXQ
         jDDg==
X-Gm-Message-State: APjAAAWgAvHUQDje19nPLCAIycXO474zdkd8m2KCaAiCQytBU0P40ZKE
        ZPAvK3ij2NaarIqqGvcLwI3C1w==
X-Google-Smtp-Source: APXvYqxI5BdqGC+o0XbfbWbIJyNfBExUJT97/YgzDdhNEcLu8lCjJOHwASBUyGlA8wNzDs513PNQCA==
X-Received: by 2002:a17:902:7c0a:: with SMTP id x10mr1557524pll.168.1576045183686;
        Tue, 10 Dec 2019 22:19:43 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id h5sm1225579pfk.30.2019.12.10.22.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2019 22:19:43 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        p.zabel@pengutronix.de,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [PATCH RESEND 1/4] dt-bindings: drm/bridge: analogix-anx7688: Add ANX7688 transmitter binding
Date:   Wed, 11 Dec 2019 14:19:08 +0800
Message-Id: <20191211061911.238393-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
In-Reply-To: <20191211061911.238393-1-hsinyi@chromium.org>
References: <20191211061911.238393-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Boichat <drinkcat@chromium.org>

Add support for analogix,anx7688

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
Change from RFC to v1:
- txt to yaml
---
 .../bindings/display/bridge/anx7688.yaml      | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7688.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7688.yaml b/Documentation/devicetree/bindings/display/bridge/anx7688.yaml
new file mode 100644
index 000000000000..cf79f7cf8fdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7688.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/anx7688.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analogix ANX7688 SlimPort (Single-Chip Transmitter for DP over USB-C)
+
+maintainers:
+  - Nicolas Boichat <drinkcat@chromium.org>
+
+description: |
+  The ANX7688 is a single-chip mobile transmitter to support 4K 60 frames per
+  second (4096x2160p60) or FHD 120 frames per second (1920x1080p120) video
+  resolution from a smartphone or tablet with full function USB-C.
+
+  This binding only describes the HDMI to DP display bridge.
+
+properties:
+  compatible:
+    const: analogix,anx7688
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device
+
+  ports:
+    type: object
+
+    properties:
+      port@0:
+        type: object
+        description: |
+          Video port for HDMI input
+
+      port@1:
+        type: object
+        description: |
+          Video port for eDP output
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - ports
+
+examples:
+  - |
+    anx7688: anx7688@2c {
+      compatible = "analogix,anx7688";
+      reg = <0x2c>;
+
+      port {
+        anx7688_in: endpoint {
+          remote-endpoint = <&hdmi0_out>;
+        };
+      };
+    };
-- 
2.24.0.525.g8f36a354ae-goog

