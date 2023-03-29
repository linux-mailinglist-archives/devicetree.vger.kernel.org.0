Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09F896CDA77
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230182AbjC2NTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230267AbjC2NTG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:19:06 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E79A55AE
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:41 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id q102so14010008pjq.3
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nd2Hzi5pbnX457/tZ1SGDUudK/Mgpe+Ly4/pUeQ6HnM=;
        b=BxNdyUGAorjHPinmo8knKGhWp8mcw/YgRk4iYNWDGp+87Odbgo0V0ajx8K99ZvbH3m
         uK1o/myHvEIucTiBG5DYCQ2UcxcizWIeVayEhlo/8lScUog6XsvXM6+6OOEyJd/pLOs2
         /RttKWJwSMHDK2hDoJcL5A8izTKP8wEnKCyoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nd2Hzi5pbnX457/tZ1SGDUudK/Mgpe+Ly4/pUeQ6HnM=;
        b=LtX6oJKiDAHJqVzWSd/YJA5YRc36R7fsoPm8drDJYL4gO0DX127xSt3rTFn4R2+bkB
         J+Qm7LA6gEjQkXmOWuolziHLjd9ful7209RebmTlmqN+OD6wiFEWjKw031Lcym8eWJhk
         Ls0dw7EJrYsVeDYa0gDBAqinREIdqHvapPwWrMSu1rX3D6Ab4p3PKYBYf7Ka/IB83afY
         fmfohO5BQ0hKbMxZSEOcO5C2mUw3S64apmj2xd/rT/mLvYJGyZdZ9PnjrHnJ+F3NKU7m
         RCzVP7ycXel3T/fdXyTc6hun6nIn3y7C1IOfIq2SzJMcJwL46bxr/U2xPAKYd81/JtAT
         ydVg==
X-Gm-Message-State: AAQBX9e45bJGERS4FufYMm1MOo+NnBVEHadErnOmWW/sneW3ixyGiWOB
        dgG3x1n1AIj0zPrr6I0Fvc9glg==
X-Google-Smtp-Source: AKy350bk2/fzr+dtM9w5K/plrUVW+fEKnyzucVJ/a5hXz7GHf87bUlhqvKmrLM/SThMMOW9uCmEMAA==
X-Received: by 2002:a17:90b:1d8e:b0:23f:37b6:48f4 with SMTP id pf14-20020a17090b1d8e00b0023f37b648f4mr20675024pjb.43.1680095918961;
        Wed, 29 Mar 2023 06:18:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:18:38 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v7 08/12] ARM: dts: sun8i: a33: Add endpoint@0 to dsi_in_tcon0
Date:   Wed, 29 Mar 2023 18:46:14 +0530
Message-Id: <20230329131615.1328366-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329131615.1328366-1-jagan@amarulasolutions.com>
References: <20230329131615.1328366-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DSI downstream devices are likely to be Panel, Bridge and
I2C-Configured Bridge.

It is possible to connect all three devices using upstream OF-graph port
or ports node however only Panel and Bridge are possible to connect via
child node but not possible to connect I2C-Configured Bridge via child
node since I2C-Configure bridges are child of I2C not upstream DSI hosts
and it must represent them via port or ports with endpoint linking.

Allwinner R33 DSI node already has a port so add endpoint 0 for input
tcon so that the downstream DSI devices can use endpoint 1 to connect
Panel or Bridge or I2C-Configured Bridge.

An example of the I2C-Configured downstream bridge representation is,

i2c1 {
       bridge@1b {
	     compatible = "ti,dlpc3433";

             ports {
                  port@0 {
                         reg = <0>;

                         bridge_in_dsi: endpoint {
                                remote-endpoint = <&dsi_out_bridge>;
                                data-lanes = <1 2 3 4>;
                         };
                  };

	          port@2 {
	                 reg = <2>;

                         bridge_out_dmd: endpoint {
                                remote-endpoint = <&dmd_out_bridge>;
                         };
                  };
             };
       };
};

dsi {
       compatible = "allwinner,sun6i-a31-mipi-dsi";

       port {
             dsi_in_tcon0: endpoint@0 {
	          reg = <0>;
		  remote-endpoint = <tcon0_out_dsi>;
	     };

	     dsi_out_bridge: endpoint@1 {
	   	  reg = <1>;
		  remote-endpoint = <&bridge_in_dsi>;
	     };
	};
};

Note that existing device bindings are untouched and still represent
the downstream devices via child nodes since the sun6i-mipi-dsi host
will migrate to a standardized single helper to lookup for a
downstream device via child or OF-graph port or port node.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v7:
- new patch

 arch/arm/boot/dts/sun8i-a33.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index b3d1bdfb5118..50c2424ec31e 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -269,7 +269,11 @@ dsi: dsi@1ca0000 {
 			#size-cells = <0>;
 
 			port {
-				dsi_in_tcon0: endpoint {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dsi_in_tcon0: endpoint@0 {
+					reg = <0>;
 					remote-endpoint = <&tcon0_out_dsi>;
 				};
 			};
-- 
2.25.1

