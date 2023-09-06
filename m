Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97CFC793BD3
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 13:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239530AbjIFLzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 07:55:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbjIFLzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 07:55:03 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B53F2CE6
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 04:54:59 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bc9353be9bso704306a34.1
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 04:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694001299; x=1694606099; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Knde3yeY5pZ7W0tqxn8uElHkAEeLRAsdTukA5SxVufI=;
        b=Vz9WzGuQ2f+MSgqoCfAcxMjQ+2BwyFKDOVU88sjkp6mbn57lBLlqWzEnwo/wpx6yJY
         TTcUC5mCzxVCaGPpGRBmiXMVAnSnVPz80Aq0Eyz8Kcdx/ZvKi8VwOpc5X7BLhPB/itHO
         rrc6uF/xOGeSG9lmVTCZb2oLLepKSIbO43ZYncWHDvQNyg+We+KPoXGfKJVBWD2uAJK9
         wxl4wozVormFGpuhm87zbHDIKckyG1DCe+tmsalHRo1gZH470IBibcFIrN3MuIQRKPEw
         Ag4LfWl0pu1BGRH2AHe/KuUE7xcs76D/N1LPnSu53+3/OHURwJR8K/dXlzjTwaibEXXX
         2JjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694001299; x=1694606099;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Knde3yeY5pZ7W0tqxn8uElHkAEeLRAsdTukA5SxVufI=;
        b=LpQbndew1ns54QUqqUotThFfBUGKR3Is41FrzWn6fO19oZFoL1lKq9VNcAAjx6vUND
         p7fty8jILw2pg3VDyLZMLamhlkfg1IPAczEjHyzP8DGsWLs1/8JpfYYO5EBqaXxTJPcZ
         +lspCmZcXylcDrFo9eaueFDeJfLVZOutB5eV16ayR3W+i+kpiB/zi0XOCt3E77XiPgL0
         Rh3YmY9SMZnLyZISPUWK4Sjh/LJrrvid4fk7EDz+g132HkGn4gQb+bSM1kcG3pwYeAJS
         gPAKzqspYc3zoqc0lVwkzyP7hq0ku+uF8C2MCQgMTurkaOjzu4L5VqE5MBYYvk9hwLZd
         o/HQ==
X-Gm-Message-State: AOJu0YxzIzj4ROmwvXBouzoPdPsvfUK2P6MSZ6xnu+ronQgCrkEsEQTj
        flAEitspEOu/oXY/4GgO7AvbILek3GA=
X-Google-Smtp-Source: AGHT+IHUUKFGWR/M/uleBz12kuVmmUs00d2YG2JG7KUgrhzdY8O6uKpJAIZn5PrbCBAQ/y00QKW2fg==
X-Received: by 2002:a05:6830:46a3:b0:6bd:9d65:fce with SMTP id ay35-20020a05683046a300b006bd9d650fcemr15354319otb.2.1694001298814;
        Wed, 06 Sep 2023 04:54:58 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9f6e:bfa3:9410:ae3f])
        by smtp.gmail.com with ESMTPSA id s27-20020a0568301e1b00b006af7580c84csm6330127otr.60.2023.09.06.04.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 04:54:58 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] arm64: dts: imx8mp: Move funnel outside from soc
Date:   Wed,  6 Sep 2023 08:54:43 -0300
Message-Id: <20230906115444.189664-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The 'funnel' node does not contain a register range, so it should
be placed outside of the soc node to fix schema warnings from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 107 +++++++++++-----------
 1 file changed, 54 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6f2f50e1639c..ee92043a4052 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -202,6 +202,60 @@ clk_ext4: clock-ext4 {
 		clock-output-names = "clk_ext4";
 	};
 
+	funnel {
+		/*
+		 * non-configurable funnel don't show up on the AMBA
+		 * bus.  As such no need to add "arm,primecell".
+		 */
+		compatible = "arm,coresight-static-funnel";
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				ca_funnel_in_port0: endpoint {
+					remote-endpoint = <&etm0_out_port>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				ca_funnel_in_port1: endpoint {
+					remote-endpoint = <&etm1_out_port>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				ca_funnel_in_port2: endpoint {
+					remote-endpoint = <&etm2_out_port>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+					ca_funnel_in_port3: endpoint {
+					remote-endpoint = <&etm3_out_port>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+
+				ca_funnel_out_port0: endpoint {
+					remote-endpoint = <&hugo_funnel_in_port0>;
+				};
+			};
+		};
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -368,59 +422,6 @@ etm3_out_port: endpoint {
 			};
 		};
 
-		funnel {
-			/*
-			 * non-configurable funnel don't show up on the AMBA
-			 * bus.  As such no need to add "arm,primecell".
-			 */
-			compatible = "arm,coresight-static-funnel";
-
-			in-ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-
-					ca_funnel_in_port0: endpoint {
-						remote-endpoint = <&etm0_out_port>;
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-
-					ca_funnel_in_port1: endpoint {
-						remote-endpoint = <&etm1_out_port>;
-					};
-				};
-
-				port@2 {
-					reg = <2>;
-
-					ca_funnel_in_port2: endpoint {
-						remote-endpoint = <&etm2_out_port>;
-					};
-				};
-
-				port@3 {
-					reg = <3>;
-
-					ca_funnel_in_port3: endpoint {
-						remote-endpoint = <&etm3_out_port>;
-					};
-				};
-			};
-
-			out-ports {
-				port {
-					ca_funnel_out_port0: endpoint {
-						remote-endpoint = <&hugo_funnel_in_port0>;
-					};
-				};
-			};
-		};
-
 		funnel@28c03000 {
 			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x28c03000 0x1000>;
-- 
2.34.1

