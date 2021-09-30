Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 406DF41D097
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 02:35:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347276AbhI3Agt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 20:36:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346375AbhI3Ags (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 20:36:48 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 036B9C06161C
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 17:35:07 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 75so4489291pga.3
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 17:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AgZhYHdye54r6ShDoaQFSdXhndbZUW3v28dxdpS3Tao=;
        b=oQgFAPuw89Z0XQftMMhBeGuniB6bE/9874lJytDJkWt+kezg72K+gksvMmV88OIEuM
         Eyy3WSWdxU+gnWEx70j38/t7N7wyShxBNzbSNjZXozje94sq5QwoiSqqm20aTpSQSKdC
         1N7sBCXf5Ws0kgBHUhcO5tDWZfQ/LKM9qch9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AgZhYHdye54r6ShDoaQFSdXhndbZUW3v28dxdpS3Tao=;
        b=PjAN6PsoVAgQx/FeMDKyJ4PcOtuBeJBSKmFgubk8ZsEVa56tAs43sMbSICvL2K0uAb
         K2tlLf/6KvJIklsFVcwIS7gvzFV/TLYHTVVlsLzEyg7rtydVIPhNSmeuZswMLrRnEu8e
         nbzimNXmta4oURSzleXLk5U5uXZZdZfXLF5gOqywWLt/zbIS/DHqHeuRCrX3+9aytP2h
         mkySW9ZkCU2vm1J3j5j0Ya81vQuH71XaLXpmhSizwd8x3/IEB6YllNbY6lXC3aRyu/Qs
         v9YIz5df//u2MaaF+RJVsXTnGYKMrRQJBUXrZHiLVKsYYiAs/k+JjSIy2QBolaZ8ZWSP
         V8Qg==
X-Gm-Message-State: AOAM532EmVeKmh/e2acZ/IzewepXBVdaIuWpk56wyJJsWXsuOXbQaQIt
        X0voNUu6AJb3GQOByGqFwC9jyA==
X-Google-Smtp-Source: ABdhPJxR9ohnQ+FXvrOlYtUk9aMrDtETY39YyKk7EZ+OawfXb0zWBw1TSfoVQJOrNHv1XXkZlynECA==
X-Received: by 2002:aa7:8f01:0:b0:447:8167:46c1 with SMTP id x1-20020aa78f01000000b00447816746c1mr1529882pfr.30.1632962106583;
        Wed, 29 Sep 2021 17:35:06 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:b6b6:ed63:b801:ded7])
        by smtp.gmail.com with ESMTPSA id 23sm711648pgk.89.2021.09.29.17.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Sep 2021 17:35:06 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] dt-bindings: drm/bridge: ps8640: Add aux-bus child
Date:   Wed, 29 Sep 2021 17:34:57 -0700
Message-Id: <20210929173343.v2.2.I6050ba184b24d887e92692a72ee3054d643d6091@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
References: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dp-aux-bus.yaml says we can list an eDP panel as a child of
an eDP controller node to represent the fact that the panel
is connected to the controller's DP AUX bus.

Let's add it to the ps8640 bindings.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

(no changes since v1)

 .../bindings/display/bridge/ps8640.yaml       | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ps8640.yaml b/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
index fce82b605c8b..cdaf7a7a8f88 100644
--- a/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
@@ -40,6 +40,9 @@ properties:
   vdd33-supply:
     description: Regulator for 3.3V digital core power.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -98,7 +101,21 @@ examples:
                     reg = <1>;
                     ps8640_out: endpoint {
                         remote-endpoint = <&panel_in>;
-                   };
+                    };
+                };
+            };
+
+            aux-bus {
+                panel {
+                    compatible = "boe,nv133fhm-n62";
+                    power-supply = <&pp3300_dx_edp>;
+                    backlight = <&backlight>;
+
+                    port {
+                        panel_in: endpoint {
+                            remote-endpoint = <&ps8640_out>;
+                        };
+                    };
                 };
             };
         };
-- 
2.33.0.685.g46640cef36-goog

