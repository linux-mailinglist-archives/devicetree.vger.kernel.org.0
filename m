Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B23C379734F
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:23:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbjIGPXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:23:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbjIGPVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:21:17 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A989294
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:21:05 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-573128cd77dso167644eaf.0
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100027; x=1694704827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nV/izENvgnY2THRpn0gl8DPQBbUMzWw0W/8JN7jzvmg=;
        b=ro1PAXy2xb9utFSHx7g67+x/Ry26dd1PvtXguLGE0hNlUvKmpjEfB/PBx5tqaBkeRG
         IP+W4PnqqEFeCocUAglHU7Iju2D2zx6z8wGo7vsStGVvqmzjcLbfqVd0+SlpVQ1MYAHb
         dAjh4VS20Bzbdzd5LIESkUthR5OEI3+8x5J0YDVIg49f3xu3VDtfIzP+ihCK+E7NgcCb
         hZp8s1r1tA4LM2sk1NEDaAUKbkiuec9FsyBXLGx8cLp3MJauHTY1o52t0xLjuly11Rvb
         dc0SAeb+uLK10tsY0OF3NemM/VR4KDe30JzGNGvA9EtgW5NdKIkhwRuxGmwAM1SeW1xZ
         1iwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100027; x=1694704827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nV/izENvgnY2THRpn0gl8DPQBbUMzWw0W/8JN7jzvmg=;
        b=jr1+u/a1H7EiglXUx03QxBQ9ecU8rHStUiV0sHQTUmNVqxfchhqZXclj20WAl69qqG
         YxibSUZWp8r+Cq3I5+wCwSHlZdLPP5LQ/ciRTsXpgF+x7sI5zR/yG4G39UPuxLBDg7ME
         BsX+Clunkg2b6fU057bt/Mu8ZQNqbAvxGVJiw/RykDFb+6Ch0QXV/UqJ81h2oi63sg7p
         LXFW4Jhm++75OChvcwy57fHzOYg5SVfGHZe3BKV95RePKl3U+MlpVDybmyeDYzABPdDu
         ZvqOhC/4g/NCjeD26GxkS7wbdvdev0e8u4dd7D3VAYjavDYqO20zDSwtYDfZjNUnbWz8
         Ymqw==
X-Gm-Message-State: AOJu0Yyh0UbkbahQRfJzkAv/Q+qrBh+/ePCdBHZXxXWthbBYE4q1LUJG
        itdpyzddVWPH0f0bO8FR+XA=
X-Google-Smtp-Source: AGHT+IEkrbgWZFfR4wP4LUuir2A3lwPUKAxps5zZqi33bj8Z0EhsRyLTQ/E1YMzLuuf6YcXRLhNYQQ==
X-Received: by 2002:a4a:eac4:0:b0:56e:94ed:c098 with SMTP id s4-20020a4aeac4000000b0056e94edc098mr17793653ooh.0.1694100027440;
        Thu, 07 Sep 2023 08:20:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:26 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 4/7] arm64: dts: imx8-ss-conn: Move conn clocks outside of soc
Date:   Thu,  7 Sep 2023 12:20:05 -0300
Message-Id: <20230907152008.491775-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230907152008.491775-1-festevam@gmail.com>
References: <20230907152008.491775-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The conn clock nodes do not have any register associated with it,
so they should be moved outside of soc to fix schema warning from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index fc1a5d34382b..3c42240e78e2 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -7,33 +7,33 @@
 #include <dt-bindings/clock/imx8-lpcg.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 
+conn_axi_clk: clock-conn-axi {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <333333333>;
+	clock-output-names = "conn_axi_clk";
+};
+
+conn_ahb_clk: clock-conn-ahb {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <166666666>;
+	clock-output-names = "conn_ahb_clk";
+};
+
+conn_ipg_clk: clock-conn-ipg {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <83333333>;
+	clock-output-names = "conn_ipg_clk";
+};
+
 conn_subsys: bus@5b000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
 
-	conn_axi_clk: clock-conn-axi {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <333333333>;
-		clock-output-names = "conn_axi_clk";
-	};
-
-	conn_ahb_clk: clock-conn-ahb {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <166666666>;
-		clock-output-names = "conn_ahb_clk";
-	};
-
-	conn_ipg_clk: clock-conn-ipg {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <83333333>;
-		clock-output-names = "conn_ipg_clk";
-	};
-
 	usbotg1: usb@5b0d0000 {
 		compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb", "fsl,imx27-usb";
 		reg = <0x5b0d0000 0x200>;
-- 
2.34.1

