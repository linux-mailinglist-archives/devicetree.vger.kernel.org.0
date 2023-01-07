Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 461C3660DD2
	for <lists+devicetree@lfdr.de>; Sat,  7 Jan 2023 11:23:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235241AbjAGKXs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Jan 2023 05:23:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232416AbjAGKXg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Jan 2023 05:23:36 -0500
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 405B38B769
        for <devicetree@vger.kernel.org>; Sat,  7 Jan 2023 02:23:06 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id p24so4273091plw.11
        for <devicetree@vger.kernel.org>; Sat, 07 Jan 2023 02:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3S5t/68Sc4/I3QhgTzdc3biXkZb8n4w5hwbgjthP5iA=;
        b=iRDvM88FA/v/BgsXln4muPJMcNVgdMt2+8Kg9RtozhyMdRWwKSSWBqPqgQFxojRAWu
         9edeyIyZKf94BdFBPe07/d1y5jxZJLv8IA0RZE/ozZ4zq+I35DuN3tkQvvPOdYZCmcY4
         hTuIlwnvgpUSCcIttro3VORJ0AIjBXWA8YQhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3S5t/68Sc4/I3QhgTzdc3biXkZb8n4w5hwbgjthP5iA=;
        b=cmLNk8jBFN5Mq9En6U7Vr3xaCsIldpAnym+/qNUGFu758UNE/Jw0P6LxeAjn4JUbg+
         FaO2Udvthh1jrFoqnT+lqSfwVcRf3lJTNjIitAs537yr5Y/skAEOcnsHTl9ZY6gyqqem
         3IO5Wq2YZzvFAiMqcjzLoZfYyhfc6JUnLYXms8eFIjphiRpDLWR8mJ5fzsPgoV7hoPFr
         rcccsgkS0keiPgO0jt8OyQL6DRlkzQA554diU+RApJdzXqKIzupw3X3SCuwsaYKW6Ny/
         rM9e9QIV6q/ZNMvp92eeTpRdlzxz6tj2vP/WYPlcFs5hUXGLOpM3FbnITSTxcON2apcL
         ylQA==
X-Gm-Message-State: AFqh2kr6HD/dUfXcBsVYVaF4DaWLuT//Xunwahhrrngsd2o0QSTuwckF
        FkpbOduwP8Er5RQWbHcxBjWqmQ==
X-Google-Smtp-Source: AMrXdXvAkDEaLIlYWujupZOqV82RJZ1RupyZAwcJ+M/u56ufJGv/dKJrl7hd4Fz5TmGm20rZuFDgXA==
X-Received: by 2002:a05:6a20:13a0:b0:9d:efbe:a0f5 with SMTP id w32-20020a056a2013a000b0009defbea0f5mr92391220pzh.5.1673086985804;
        Sat, 07 Jan 2023 02:23:05 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:180d:95e8:f4:84fb])
        by smtp.gmail.com with ESMTPSA id b1-20020a170903228100b001892af9472esm2366362plh.261.2023.01.07.02.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 02:23:05 -0800 (PST)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Thomas Zimmermann <tzimmermann@suse.de>,
        dri-devel@lists.freedesktop.org, Lyude Paul <lyude@redhat.com>,
        Javier Martinez Canillas <javierm@redhat.com>,
        linux-kernel@vger.kernel.org, Xin Ji <xji@analogixsemi.com>,
        Pin-yen Lin <treapking@chromium.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Allen Chen <allen.chen@ite.com.tw>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        chrome-platform@lists.linux.dev,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>, linux-acpi@vger.kernel.org,
        Stephen Boyd <swboyd@chromium.org>
Subject: [PATCH v8 4/9] dt-bindings: display: bridge: anx7625: Add mode-switch support
Date:   Sat,  7 Jan 2023 18:22:26 +0800
Message-Id: <20230107102231.23682-5-treapking@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
In-Reply-To: <20230107102231.23682-1-treapking@chromium.org>
References: <20230107102231.23682-1-treapking@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Analogix 7625 can be used in systems to switch the DP traffic between
two downstreams, which can be USB Type-C DisplayPort alternate mode
lane or regular DisplayPort output ports.

Update the binding to accommodate this usage by introducing a
data-lanes and a mode-switch property on endpoints.

Also include the link to the product brief in the bindings.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v8:
- Updated anx7625 bindings for data-lane property
- Fixed the subject prefix

Changes in v7:
- Fixed issues reported by dt_binding_check
- Updated the schema and the example dts for data-lanes.
- Changed to generic naming for the example dts node.

Changes in v6:
- Remove switches node and use endpoints and data-lanes property to
  describe the connections.

 .../display/bridge/analogix,anx7625.yaml      | 99 ++++++++++++++++++-
 1 file changed, 96 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 4590186c4a0b..b49a350c40e3 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -12,7 +12,8 @@ maintainers:
 
 description: |
   The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
-  designed for portable devices.
+  designed for portable devices. Product brief is available at
+  https://www.analogix.com/en/system/files/AA-002291-PB-6-ANX7625_ProductBrief.pdf
 
 properties:
   compatible:
@@ -112,10 +113,48 @@ properties:
               data-lanes: true
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description:
           Video port for panel or connector.
 
+        patternProperties:
+          "^endpoint@[01]$":
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+
+            properties:
+              reg:
+                maxItems: 1
+
+              remote-endpoint: true
+
+              data-lanes:
+                oneOf:
+                  - items:
+                      - enum: [0, 1, 2, 3]
+
+                  - items:
+                      - const: 0
+                      - const: 1
+
+                  - items:
+                      - const: 2
+                      - const: 3
+
+                  - items:
+                      - const: 0
+                      - const: 1
+                      - const: 2
+                      - const: 3
+
+              mode-switch:
+                type: boolean
+                description: Register this node as a Type-C mode switch or not.
+
+            required:
+              - reg
+              - remote-endpoint
+
     required:
       - port@0
       - port@1
@@ -164,8 +203,12 @@ examples:
                 };
 
                 mipi2dp_bridge_out: port@1 {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
                     reg = <1>;
-                    anx7625_out: endpoint {
+                    anx7625_out: endpoint@0 {
+                        reg = <0>;
                         remote-endpoint = <&panel_in>;
                     };
                 };
@@ -186,3 +229,53 @@ examples:
             };
         };
     };
+  - |
+    i2c3 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        encoder@58 {
+            compatible = "analogix,anx7625";
+            reg = <0x58>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&anx7625_dp_pins>;
+            enable-gpios = <&pio 176 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&pio 177 GPIO_ACTIVE_HIGH>;
+            vdd10-supply = <&pp1100_dpbrdg>;
+            vdd18-supply = <&pp1800_dpbrdg_dx>;
+            vdd33-supply = <&pp3300_dpbrdg_dx>;
+            analogix,audio-enable;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    anx7625_dp_in: endpoint {
+                        bus-type = <7>;
+                        remote-endpoint = <&dpi_out>;
+                    };
+                };
+
+                port@1 {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    reg = <1>;
+                    anx_typec0: endpoint@0 {
+                        reg = <0>;
+                        mode-switch;
+                        data-lanes = <0 1>;
+                        remote-endpoint = <&typec_port0>;
+                    };
+                    anx_typec1: endpoint@1 {
+                        reg = <1>;
+                        mode-switch;
+                        data-lanes = <2 3>;
+                        remote-endpoint = <&typec_port1>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.39.0.314.g84b9a713c41-goog

