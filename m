Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78A2649228B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 10:20:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345613AbiARJUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 04:20:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240698AbiARJUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 04:20:16 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0364C06173E
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 01:20:16 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id l6-20020a17090a4d4600b001b44bb75a8bso2231757pjh.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 01:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kp2JX1puGgzXBsvWu8HbdG09bQuSVyJ347xkXdyu4zM=;
        b=iv59fl/+TUN+el5syUDm5Q/h9mk7/lMUY0VPBIFqmNn0QRc/6edIaPvpLBE72jhAlL
         DarFZ6GtROPD9sX3dKbdtjgsvsmkQRPWJIBx7Cgn4CG8DAUa2+XxmKDSbQRcrX8pa7LZ
         MVDz20uwoFy9g2As45611p0L/nstkFWaG1oM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kp2JX1puGgzXBsvWu8HbdG09bQuSVyJ347xkXdyu4zM=;
        b=bXgohqxgZB1XE2n2IIImXZEoaIRvbI0I7GMwJtF782bZkmNpbdSe0ZCZFGGCbU6ZR7
         NlEMeUgJ5h8PjwiO8sh2iy+hSBC8uQMJPWQt6Oi0LOM5fCa3tf9nHOieslbkQXx3lLNu
         ZoOEtPl9wSSJ9Ik0BxM3zI1X1X1Ry+tqsbfLbvwzJ/8ao9ZxLUg716MY4X9TPMklSNAe
         KuEhlu06QRTeLHI+MKZrtUdSU62C8bB4NVJX6roB1W/GmhN8h5jwn12LO5x8dvsMXlWU
         eVvNQjB8lQ5X7LeP4xPo9UE3kfsb2J8gT5B/m+o7kSaXMPaM7W9nikI0X6lGX3AG35at
         EMsg==
X-Gm-Message-State: AOAM532NWYrcvNN+pQa63W6BrsegQ3uRNL6lRoJAY7n/v66qFT+6gKvR
        MYWbWr7NUfHaKKzEi9FIAs35Hw==
X-Google-Smtp-Source: ABdhPJxSYdZj6GlxPX1EcP3nJedapwQ4dsYkk+FXgi6D1vUmmCz6wwa/8hmHr6JqKMsLEwhJm6YGHA==
X-Received: by 2002:a17:902:ea85:b0:14a:3c49:f140 with SMTP id x5-20020a170902ea8500b0014a3c49f140mr26185537plb.31.1642497616208;
        Tue, 18 Jan 2022 01:20:16 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:4448:8072:97f1:64dd])
        by smtp.gmail.com with ESMTPSA id y1sm14691501pgs.4.2022.01.18.01.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jan 2022 01:20:15 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v4 4/4] dt-bindings: drm/bridge: anx7625: Add aux-bus node
Date:   Tue, 18 Jan 2022 17:20:02 +0800
Message-Id: <20220118092002.4267-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220118092002.4267-1-hsinyi@chromium.org>
References: <20220118092002.4267-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

List panel under aux-bus node if it's connected to anx7625's aux bus.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Xin Ji <xji@analogixsemi.com>
---
 .../display/bridge/analogix,anx7625.yaml        | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 1d3e88daca041a..0d38d6fe39830f 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -83,6 +83,9 @@ properties:
     type: boolean
     description: let the driver enable audio HDMI codec function or not.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -167,5 +170,19 @@ examples:
                     };
                 };
             };
+
+            aux-bus {
+                panel {
+                    compatible = "innolux,n125hce-gn1";
+                    power-supply = <&pp3300_disp_x>;
+                    backlight = <&backlight_lcd0>;
+
+                    port {
+                        panel_in: endpoint {
+                            remote-endpoint = <&anx7625_out>;
+                        };
+                    };
+                };
+            };
         };
     };
-- 
2.34.1.703.g22d0c6ccf7-goog

