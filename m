Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B305939E4EF
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 19:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231783AbhFGRJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 13:09:27 -0400
Received: from mail-pf1-f174.google.com ([209.85.210.174]:46601 "EHLO
        mail-pf1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231811AbhFGRJY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 13:09:24 -0400
Received: by mail-pf1-f174.google.com with SMTP id u126so9580323pfu.13
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 10:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J9FgQRQtT4dalpWmq/48llm03TZOe/GpH8sEg+4A3jk=;
        b=k15oyF/xyFQ+soSSAB1x/F/6ifpZGu+DCxVJPHOpM4hlTCkESHm4H7VrXK55ugz1Kx
         b8O46MJJrNDRsck8ZwLg2LdbC3EAhzWr6gEIUlKdJUwks2KjhZODrQDuyMcFB+TRIwdo
         xlOJCnuphuA3ES52yqbALNnW2NmauosxvqbqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J9FgQRQtT4dalpWmq/48llm03TZOe/GpH8sEg+4A3jk=;
        b=rQi8gidGhy3y1DUOwxDcWV/hfD17o0hSdvr/KCUeoQNngYqSUpWV2XOFhIFeh6kPXL
         iIUfrdhFKft4zyRNYxSQ/I2lizMYv+mxS5gDT220DFANmuXcywsvXMSAvNIC8sV+5IcG
         LTifuJas1/P2fh+kfJ6S1MYaonnSE5qgrHRj9ev8pjNeIFljGa1LRW0qZ0Tw7NUjq7vR
         Rk9IcA3JlDh/lmxLVGUmSeXVBHIjggGy0elDxcgZH5SRzhgxQyi+1Nka5JUbqrIHOOJR
         RnPp9KOD6BlbzdAKaVyP3147UE75qleB7ghREYfH5icHt67Hxp2WEtwyDmgGXM0B4HuG
         kCXA==
X-Gm-Message-State: AOAM5322EvbtEIxoWLVmCoh2+b71PG0QwmRBs8VPo/XT1CkjrIh5zgli
        vtFOpofuvfBz+xpM54XReMzixg==
X-Google-Smtp-Source: ABdhPJxtsUrJ7UTc1mTykx5JqbbNLPl0sLEmHpUiXzkbYZI/m3P1wxuqgg9R4R9yyRcZtQZKa3p18w==
X-Received: by 2002:a63:3e4e:: with SMTP id l75mr18010152pga.10.1623085579742;
        Mon, 07 Jun 2021 10:06:19 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f656:ffce:6348:a42a])
        by smtp.gmail.com with ESMTPSA id fs24sm12897639pjb.6.2021.06.07.10.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 10:06:19 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Linus W <linus.walleij@linaro.org>, robdclark@chromium.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        Lyude Paul <lyude@redhat.com>, dri-devel@lists.freedesktop.org,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Panda <spanda@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 03/11] dt-bindings: drm/bridge: ti-sn65dsi86: Add aux-bus child
Date:   Mon,  7 Jun 2021 10:05:47 -0700
Message-Id: <20210607100234.v9.3.I98bf729846c37c4c143f6ab88b1e299280e2fe26@changeid>
X-Mailer: git-send-email 2.32.0.rc1.229.g3e70b5a671-goog
In-Reply-To: <20210607170555.4006050-1-dianders@chromium.org>
References: <20210607170555.4006050-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch ("dt-bindings: drm: Introduce the DP AUX bus") talks about
how using the DP AUX bus is better than learning how to slice
bread. Let's add it to the ti-sn65dsi86 bindings.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v9:
- Use an absolute path to refer to aux-bus schema.

Changes in v8:
- ti-sn65dsi86 references the new aux bus bindings.

Changes in v7:
- ti-sn65dsi86: Add aux-bus child patch new for v7.

 .../bindings/display/bridge/ti,sn65dsi86.yaml | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
index 26932d2e86ab..12b876a20574 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
@@ -70,6 +70,9 @@ properties:
     const: 1
     description: See ../../pwm/pwm.yaml for description of the cell formats.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -201,11 +204,26 @@ examples:
 
           port@1 {
             reg = <1>;
-            endpoint {
+            sn65dsi86_out: endpoint {
               remote-endpoint = <&panel_in_edp>;
             };
           };
         };
+
+        aux-bus {
+          panel {
+            compatible = "boe,nv133fhm-n62";
+            power-supply = <&pp3300_dx_edp>;
+            backlight = <&backlight>;
+            hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
+
+            port {
+              panel_in_edp: endpoint {
+                remote-endpoint = <&sn65dsi86_out>;
+              };
+            };
+          };
+        };
       };
     };
   - |
-- 
2.32.0.rc1.229.g3e70b5a671-goog

