Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6906CDA78
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230136AbjC2NTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:19:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbjC2NTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:19:09 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07EE055BC
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:46 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so16149712pjb.0
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ayYxgFJMhixN73Dm9Yf7ruaoOJe6G2KL+MHmxqG0S5Q=;
        b=Tkq5mhDm5ZQ+yiV1OtfyRGIvcm6whneUFGGlczqp/vSrs7C7VXKmht8Y87gNnukLVv
         UblkzhL6hGy/9w74FwGQJB48hURwaWI57RoCIqlyhZ3vJWNQRbd4X52ve0dQ/geHdmTN
         Ximd50oNuNiixWKqCTuhz632/5gMF7XMR1vSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ayYxgFJMhixN73Dm9Yf7ruaoOJe6G2KL+MHmxqG0S5Q=;
        b=xbK3UhslYs7N3kNnMnFaCgB9D2QWJzg1pDmHjT0rb7U7IEszawByNigBtU8DF/x+Rw
         fpfdqbRIs21IV6qFtLFCZNoEp9DSUdQCdcccZszhm+/BU0jvUfQtBEwxVmuVV+eU4Y+i
         iwA/fMqv4gXGZnyDuyta8isk/ebQiAsmWK3w43AIxgZzXyiPA1HdGgcdYC4rZjnjcUyX
         ajGIG5mhjYzcvBQ+v1i0uSZXf3zMm8fRddvtsCGxEpNb7e5wQX7o8cCpCUX0zGRAF77x
         gV3N+ROHulCXLgvfRH7W8FJgbDlJnUKuWbq8uQSZtiJVUk9DLB02q/v9hvHGQa0OsfA3
         yT5A==
X-Gm-Message-State: AAQBX9fT7cmWQ/MBZOr5GKp1jRsBOVlc+wq5fc9KoYhDxU9wCMqw1A9X
        7q1kbiZwfeD4Uxvq+BWFIgZsJ1HD/dTAcvGCtYtAIw==
X-Google-Smtp-Source: AKy350YO+Kpdu0/vAJkHuRQaxWiiCBUBvweO4jcD6ZDCYS8/PYA2ZACp2GIqrs5TCbiYnZ9OHuAaCg==
X-Received: by 2002:a17:90b:1b49:b0:23d:1fc0:dd20 with SMTP id nv9-20020a17090b1b4900b0023d1fc0dd20mr20207025pjb.17.1680095925196;
        Wed, 29 Mar 2023 06:18:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:18:44 -0700 (PDT)
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
Subject: [PATCH v7 09/12] arm64: dts: rockchip: a64: Add endpoint@0 to dsi_in_tcon0
Date:   Wed, 29 Mar 2023 18:46:15 +0530
Message-Id: <20230329131615.1328366-10-jagan@amarulasolutions.com>
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

Allwinner A64 DSI node already has a port so add endpoint 0 for input
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
       compatible = "allwinner,sun50i-a64-mipi-dsi";

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

 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 77b5349f6087..3ed566dc2172 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1189,7 +1189,11 @@ dsi: dsi@1ca0000 {
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

