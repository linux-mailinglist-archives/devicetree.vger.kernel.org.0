Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 129E1681494
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 16:17:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236037AbjA3PRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 10:17:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237846AbjA3PQt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 10:16:49 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E57D93B667
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:16:27 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso3419361wms.5
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDzJ19fQHA7Hg3Als9sXt3Vy8GMWCA2KfiCkhNdhAL4=;
        b=gUen5KknnuPWhKVYWbV4vfwt2CtnNkFVI+qeBfQiDKEejjtdyfOpERRG3Ybw2r2wnM
         FVWsXWFFw9cxo/BROT9to3PiVanT67Mn9KKOZQSIeFPQhgu9cJzhFdjavzgYCz41IIM7
         KIzefD0J9918TqX1a/cZr0cMHo0B6pb3FzVR9LtAwQ8ppWaKAOziPZcHvDzzS9v05nmx
         r+OjDSjGY4ENGOYhAsh5FEifrzNTHN/AyG2zEvdXPQ8KDqTGoicZLQLw7XUZQp9QjI7j
         Ux2ZFbAoDL1teqeb4Qw1OP7PunCeoy6Z+n28AW7wyP8LWIBfeXtOoqRp4DEA3sEwyTrA
         oosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDzJ19fQHA7Hg3Als9sXt3Vy8GMWCA2KfiCkhNdhAL4=;
        b=PCUtouk0wYuM2EYbyHIuk3pO9yTYIqqECyhw+GbFakTfbw5g9eAXJKc31HdNZqbYBf
         ZkebPQGhoGjbvhwlGS15WFn72i1fabYa+2rqp38HK3wc+kkM6SZCWp3cK+KePIQWczwB
         KktnCoaTmNnWjqDlZLQ3eJzGsG46Tyty19VUO6uKV8AbG3o+/Nc8cpJ2cznQ2CyvwTNf
         ytphTPEni5K2rixEyUxSa67r5pA846DY6qqSkVLS5m4k3b42rZiIi21Xn72hjfYsFpLx
         KrQkqOad8v4hehHyu5b/aGPjx/DD7+KW6N+dcPAN3vYZ8Q+gYzLC8aNgbpAuLPtKGBrz
         ahAw==
X-Gm-Message-State: AO0yUKUZNIGSwn9XE7/eoLipEgN06296M8pbex/7/Xf6kdjVBEFIIZcF
        5qZxvFWiBLG/6QkG1BeQ2jRQDQ==
X-Google-Smtp-Source: AK7set+TvDU+aj1jWdIKoUfMg03Z+ncqNlEuLJL+MGJ4I5NMt9G18KZSDNdnepUBIaWEtMN0AjG6Lw==
X-Received: by 2002:a1c:7205:0:b0:3dc:523c:229a with SMTP id n5-20020a1c7205000000b003dc523c229amr6086744wmc.7.1675091785552;
        Mon, 30 Jan 2023 07:16:25 -0800 (PST)
Received: from jackdaw.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id u12-20020a05600c19cc00b003db0ee277b2sm18735802wmq.5.2023.01.30.07.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 07:16:24 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     netdev@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Da Xue <da@lessconfused.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 net-next 1/2] dt-bindings: net: add amlogic gxl mdio multiplexer
Date:   Mon, 30 Jan 2023 16:16:15 +0100
Message-Id: <20230130151616.375168-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230130151616.375168-1-jbrunet@baylibre.com>
References: <20230130151616.375168-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the MDIO bus multiplexer found on the Amlogic GXL
SoC family

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/net/amlogic,gxl-mdio-mux.yaml    | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/amlogic,gxl-mdio-mux.yaml

diff --git a/Documentation/devicetree/bindings/net/amlogic,gxl-mdio-mux.yaml b/Documentation/devicetree/bindings/net/amlogic,gxl-mdio-mux.yaml
new file mode 100644
index 000000000000..27ae004dbea0
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/amlogic,gxl-mdio-mux.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/amlogic,gxl-mdio-mux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic GXL MDIO bus multiplexer
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+description:
+  This is a special case of a MDIO bus multiplexer. It allows to choose between
+  the internal mdio bus leading to the embedded 10/100 PHY or the external
+  MDIO bus on the Amlogic GXL SoC family.
+
+allOf:
+  - $ref: mdio-mux.yaml#
+
+properties:
+  compatible:
+    const: amlogic,gxl-mdio-mux
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ref
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    eth_phy_mux: mdio@558 {
+      compatible = "amlogic,gxl-mdio-mux";
+      reg = <0x558 0xc>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      clocks = <&refclk>;
+      clock-names = "ref";
+      mdio-parent-bus = <&mdio0>;
+
+      external_mdio: mdio@0 {
+        reg = <0x0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+      };
+
+      internal_mdio: mdio@1 {
+        reg = <0x1>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+      };
+    };
-- 
2.39.0

