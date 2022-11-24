Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0805A637635
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 11:22:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbiKXKWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 05:22:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229838AbiKXKVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 05:21:33 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7999D15165C
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:21:27 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id y14-20020a17090a2b4e00b002189a1b84d4so1249765pjc.2
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b9KcK1J3it0ftVBy4iMTAiutJ0HoDn4vV6l4PCThFvs=;
        b=EcrwUdGALRkhCF6+jeFlkUBLXIIWyUjpF4rTujN1HxPt2yoZ7bvcgpfN4ZwRsrq2M0
         ySDGRxTUTbLvGC/Sp+B/GHjpyxsqQj/pVTPgwu4fMEuINxqsrxM2OrlP7AbgmQqvP4SW
         MDTgPw1Wfh+96fRcWBl7io3b6fkJXmpeHm+/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b9KcK1J3it0ftVBy4iMTAiutJ0HoDn4vV6l4PCThFvs=;
        b=MpXEVN+0Y/TzGAt2e057lNOblyuP6TmlGC2UqjllUSmOWfkuuyShfiaKtwN8UFDmQ+
         uk9/k+UgaFXzKmnsccwxPwTqCV9v1aMyLOHSl9v/hyKAKA2kijQ6GAoHXr5EUNnNlOd1
         MD5zXTSvPB+PjAj+Ve8jlktt0Ft0k2sqgAOs2HJ892cFKUm6APffIf+7uwNstcCXas5q
         08dz6edX7Eb18RBq0TNXm6uE9Jo5NolqqnzohalewKC/vaAMDhkI7XCSxOaIh2tMOCl5
         RwKmI2G7FGV28uxbgdNzUvx7NtpM545oD1EFGt41AQEytuToSH0Hn5DOUucbhD58b+YE
         Z98g==
X-Gm-Message-State: ANoB5pmQ8vLq9C883FPs9LGi66vp0cGWRYT5scrnugBj0mFazOdHoWjV
        RkHRQ4E/GryZ5dsoVptH+4Ncuw==
X-Google-Smtp-Source: AA0mqf46GQ5ufhbsGjVkzHAuwHzwpntLipYUVoKE+qWJzofRfTXK5R5FNxhQAwt7WLq+0sY+rWaWLg==
X-Received: by 2002:a17:902:e492:b0:186:5f71:7939 with SMTP id i18-20020a170902e49200b001865f717939mr15675016ple.162.1669285286917;
        Thu, 24 Nov 2022 02:21:26 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:d446:708:8556:dfee])
        by smtp.gmail.com with ESMTPSA id t123-20020a625f81000000b005747b59fc54sm854584pfb.172.2022.11.24.02.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 02:21:26 -0800 (PST)
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
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org, Pin-yen Lin <treapking@chromium.org>,
        chrome-platform@lists.linux.dev, linux-acpi@vger.kernel.org,
        Marek Vasut <marex@denx.de>, Xin Ji <xji@analogixsemi.com>,
        Lyude Paul <lyude@redhat.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, Allen Chen <allen.chen@ite.com.tw>
Subject: [PATCH v6 3/7] dt-bindings: drm/bridge: anx7625: Add mode-switch support
Date:   Thu, 24 Nov 2022 18:20:52 +0800
Message-Id: <20221124102056.393220-4-treapking@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
In-Reply-To: <20221124102056.393220-1-treapking@chromium.org>
References: <20221124102056.393220-1-treapking@chromium.org>
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

Changes in v6:
- Remove switches node and use endpoints and data-lanes property to
  describe the connections.

 .../display/bridge/analogix,anx7625.yaml      | 73 ++++++++++++++++++-
 1 file changed, 71 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 4590186c4a0b..5fdbf1f3bab8 100644
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
@@ -112,10 +113,36 @@ properties:
               data-lanes: true
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/properties/port-base
         description:
           Video port for panel or connector.
 
+        patternProperties:
+          "^endpoint@[01]$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            type: object
+            unevaluatedProperties: false
+
+            properties:
+              reg:
+                maxItems: 1
+
+              remote-endpoint: true
+
+              data-lanes:
+                minItems: 1
+                uniqueItems: true
+                items:
+                  - enum: [ 0, 1, 2, 3]
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
@@ -186,3 +213,45 @@ examples:
             };
         };
     };
+  - |
+    &i2c3 {
+	anx_bridge_dp: anx7625-dp@58 {
+	    compatible = "analogix,anx7625";
+	    reg = <0x58>;
+	    pinctrl-names = "default";
+	    pinctrl-0 = <&anx7625_dp_pins>;
+	    enable-gpios = <&pio 176 GPIO_ACTIVE_HIGH>;
+	    reset-gpios = <&pio 177 GPIO_ACTIVE_HIGH>;
+	    vdd10-supply = <&pp1100_dpbrdg>;
+	    vdd18-supply = <&pp1800_dpbrdg_dx>;
+	    vdd33-supply = <&pp3300_dpbrdg_dx>;
+	    analogix,audio-enable;
+
+	    ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+		    reg = <0>;
+		    anx7625_dp_in: endpoint {
+			bus-type = <7>;
+			remote-endpoint = <&dpi_out>;
+		    };
+		};
+
+		port@1 {
+		    reg = <1>;
+		    anx_typec0: endpoint@0 {
+			mode-switch;
+			data-lanes = <0 1>;
+			remote-endpoint = <&typec_port0>;
+		    };
+		    anx_typec1: endpoint@1 {
+			mode-switch;
+			data-lanes = <2 3>;
+			remote-endpoint = <&typec_port1>;
+		    };
+		};
+	    };
+	};
+    };
-- 
2.38.1.584.g0f3c55d4c2-goog

