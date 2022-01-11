Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F328948AC6E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 12:27:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238498AbiAKL1P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 06:27:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238609AbiAKL1N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 06:27:13 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4D54C061748
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 03:27:12 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id u15so1324614ple.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 03:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=46kd66rKp1VnZanb08w1/JpSToEg+cj/w+6OGWRBAbI=;
        b=P6QMB5idryLJTr3iH3aGsPFWQqdMBgyrOTWI2fb6nj+/59JF8pNCQ8ib/h9WhXwQpn
         gSYS9b/FptI2EBclwOYxhyP02wNJkf1Zy0/ixU50sOa6HY7a0KjCgx/PyrPmBjNh2x8E
         ZPbsHZYOnVv76vefS8FwzNcZ71BjdGoI0/+6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=46kd66rKp1VnZanb08w1/JpSToEg+cj/w+6OGWRBAbI=;
        b=YS5GgPCbxGrcs89A6OlYaXPLK9CfQvGw2CbGq/bRxw12hv7BZ5raOjWBcfNGowDalE
         bTzky95x3QOMsGWAdH0uhif5/RqHZLX5VXwEOKI6EdzgvLyv88+rCDjZXjbzBPIxD0VE
         XJuYLzpUD+yn6PPLcBvxYBqnjI5itBT4JtIiBn4aE7yw6OSYPPCvq7hWgMgjz3L4PIOX
         njn1zDr6AaswDuTcxIKsf+mMh2OWH5ZJegLs4kCY8dNxNIf2SXgqyUAcdgwXaUcQ9iuT
         WdS07DQkR2kwQoxa2bB3snwxCq0xyUO7O/p3M0abcwVY/C9vwhU0MuS+Wj5HZJf/qyaD
         /uTw==
X-Gm-Message-State: AOAM530LGdiMNTco7VZvd8+VBtwAFUd1hTJIiMA1zIiThceKaPze6sIg
        8uSgF9mvP2DKw4E8QhbwEMo8VOvyF8gB6Q==
X-Google-Smtp-Source: ABdhPJwBxKovKopjCX5pP4JOnS4rwZP5WhoX7cewWM9Dc4eadgFObegLOSPJIImxTL28vbn+19MI1w==
X-Received: by 2002:a17:902:bf02:b0:149:c653:22af with SMTP id bi2-20020a170902bf0200b00149c65322afmr3928905plb.139.1641900432166;
        Tue, 11 Jan 2022 03:27:12 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:a41:eba5:ec46:f86c])
        by smtp.gmail.com with ESMTPSA id d12sm10664856pfv.172.2022.01.11.03.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 03:27:11 -0800 (PST)
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
Subject: [PATCH 3/3] dt-bindings: drm/bridge: anx7625: Add aux-bus node
Date:   Tue, 11 Jan 2022 19:27:01 +0800
Message-Id: <20220111112701.1064458-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220111112701.1064458-1-hsinyi@chromium.org>
References: <20220111112701.1064458-1-hsinyi@chromium.org>
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
2.34.1.575.g55b058a8bb-goog

