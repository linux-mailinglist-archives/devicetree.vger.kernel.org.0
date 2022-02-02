Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 426014A7576
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 17:06:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345763AbiBBQGX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 11:06:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345769AbiBBQGR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 11:06:17 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 532CBC06173E
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 08:06:17 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id b15so18761076plg.3
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 08:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ye0S9ZGhY+9EmUZN3Zyu0p+11AX+B8bmbaaOWhr2T0c=;
        b=THKJNrl8wZq9kLm8aIUQsyrUyYnORIkUj0AsqjphNpw6zKOLSU8mqe9LQMXJhqfiew
         6DsPPj5bqxhMpt7Fi9y3F1lK310+oJJ9mGsTFpzoKxamrrhR4Ba+/AupkvmyEhHI99Zg
         W2nXGzr1QnqjZvGL1A0rlvwPLTg4hCskXlNps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ye0S9ZGhY+9EmUZN3Zyu0p+11AX+B8bmbaaOWhr2T0c=;
        b=yHYi7JGgYov0M0tHjHHE0yOTcdoxpQp8RcZUdABGBTLZ4DMWM9jjYeM+cstthJLBjT
         XP1nUzplrMZ2FDtPsCCJrpg8DA1iiGNIcKoQeb17PEd/Xat7dKnu/1xLOEmBZ7NP+ezH
         IO/cISCgu1OWDp8LHSfhKaxDcFEQdY9EkHsRVo4d/0SvGKbIoywkk/o9N69RacWc/Yio
         a9uv06tvXeDAQDD841V0G5wkq+48AIoNpizDSoHZ94y7Ej5uWpwmeBTEKYYq85GIosjZ
         oiBAxJhOC/XDo/VwcQPhfgVx+GZntHKzNngQqH5RG3HK+xJ/o3INvHRu+rBK32LBbBws
         hoyQ==
X-Gm-Message-State: AOAM5313sszXn34ZA8DkDGDqYtvqSz+08uXc/kDs95r/PYljMdks62va
        bBwGUOoxmaWG8bOKd0wh6UkBKA==
X-Google-Smtp-Source: ABdhPJwmobxexK4WZn3maJdnwfwFpSVFi9apHR9NwFwzjjq9KmTbT11kIv6UjVpfSKsQhHnnARnRsg==
X-Received: by 2002:a17:90b:38c7:: with SMTP id nn7mr8872415pjb.124.1643817976720;
        Wed, 02 Feb 2022 08:06:16 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:7ce0:466c:be86:774])
        by smtp.gmail.com with ESMTPSA id g5sm14722397pgc.51.2022.02.02.08.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 08:06:16 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH RESEND v5 4/4] dt-bindings: drm/bridge: anx7625: Add aux-bus node
Date:   Thu,  3 Feb 2022 00:06:02 +0800
Message-Id: <20220202160602.440792-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202160602.440792-1-hsinyi@chromium.org>
References: <20220202160602.440792-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

List panel under aux-bus node if it's connected to anx7625's aux bus.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
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
2.35.0.rc2.247.g8bbb082509-goog

