Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABE2838F6A2
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 02:02:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhEYAER (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 20:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229962AbhEYAEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 20:04:12 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C297DC061756
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 17:02:41 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d16so22156848pfn.12
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 17:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=frU/MIzwrtJawHtHpJ2wMhHOm//TNBEwf1FFx7azP48=;
        b=RmPVDYwmFaVUEaUke1HUVctixj/lUivUYphXkuYDtAk2my9OzGNqfTwHBMTLZMNOpk
         FThVamNIUDasehzHdFesXrMfpwPU/okm50gJ8OvAN9rDUM0qs9FXPfeR9vSh50LvQc48
         d5KOkGBjoOibcmUz6TNVaZHIQBk3BKVIvqTk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=frU/MIzwrtJawHtHpJ2wMhHOm//TNBEwf1FFx7azP48=;
        b=EsCjWZdS3WKOH/HFu7u/oARrrH2vGfvsSd1ExF1fyxalUEzklYSLDhWBvM/4zCEXfo
         SNPWr3s24pfeYddpRjYkdl+eHwj6nvbCrmU07SP1OaZDy6rH7CsJGIH1yyE3EWUmmW9u
         XCvcYvTjFTIFFaYyKalQpgbQ3Pk2ezlywMo4OUakuE7nNFNwLUspWPC5RDrFWDI/3lWQ
         aWqtTxeJI8P5GeOcvw4bYxZLdkaOQsdKmDzvuU5TP1sKuJymwXXAWWnUv0EQPIouIDMi
         4mFeHz5+7+l7PSj5RPGr4Ow7EQg99h+mZ94d3Efo9xXjaAjxkC7QpLxTIpTqfvVCXlCA
         Zd1A==
X-Gm-Message-State: AOAM530ZmvHFQjfjJdhgViYbfztALwtkJGEBWvMEExWj55mfNeT5mF2K
        iBcPAmBV87VsyFqHhnpXbADdfg==
X-Google-Smtp-Source: ABdhPJz7TwoVvVpbGA4bqbTOwnQj4Q0UDCsunLiUBQEUrWd8K6cpvy/AslaHNQRurgVp+feNQF2Vow==
X-Received: by 2002:aa7:8201:0:b029:27b:9b59:8676 with SMTP id k1-20020aa782010000b029027b9b598676mr26655853pfi.47.1621900961353;
        Mon, 24 May 2021 17:02:41 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:26d1:4df0:7cdf:ce13])
        by smtp.gmail.com with ESMTPSA id f18sm10696741pjh.55.2021.05.24.17.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 17:02:41 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     linux-arm-msm@vger.kernel.org, Linus W <linus.walleij@linaro.org>,
        Lyude Paul <lyude@redhat.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Steev Klimaszewski <steev@kali.org>, robdclark@chromium.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thierry Reding <treding@nvidia.com>,
        dri-devel@lists.freedesktop.org,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Panda <spanda@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 03/11] dt-bindings: drm/bridge: ti-sn65dsi86: Add aux-bus child
Date:   Mon, 24 May 2021 17:01:51 -0700
Message-Id: <20210524165920.v8.3.I98bf729846c37c4c143f6ab88b1e299280e2fe26@changeid>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210525000159.3384921-1-dianders@chromium.org>
References: <20210525000159.3384921-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch ("dt-bindings: drm: Introduce the DP AUX bus") talks about
how using the DP AUX bus is better than learning how to slice
bread. Let's add it to the ti-sn65dsi86 bindings.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v8:
- ti-sn65dsi86 references the new aux bus bindings.

Changes in v7:
- ti-sn65dsi86: Add aux-bus child patch new for v7.

 .../bindings/display/bridge/ti,sn65dsi86.yaml | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
index 26932d2e86ab..4007f36d04ba 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
@@ -70,6 +70,9 @@ properties:
     const: 1
     description: See ../../pwm/pwm.yaml for description of the cell formats.
 
+  aux-bus:
+    $ref: ../dp-aux-bus.yaml#
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
2.31.1.818.g46aad6cb9e-goog

