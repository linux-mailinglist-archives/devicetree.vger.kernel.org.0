Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5627793BD4
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 13:55:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239543AbjIFLzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 07:55:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbjIFLzG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 07:55:06 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E236BF
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 04:55:02 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6bca018afe8so1049502a34.0
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 04:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694001302; x=1694606102; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZvOe92Pck1yHqHcbbHGxSZdtZe/Mh5Keoxk8BqOdiQ=;
        b=LYZIBk6/HRVH9aESDoKAZ+N6vY5bync2ahrTI5CvxnXKMicFaBqEzNG5+g3aOKB+6I
         rOa6s4OoMlJuU+jnaJWttgiTpYrb96Ztehj5kPYuXZ2vNkzOf0DkYFnz2hUeLAu0M04R
         /CukAhdTyEV9ca5mrYCH9buuwEs8Z6rZcNAXnAtUbtdIMqEN1G4m2z7Ji+i9fYuQl2b/
         PzZRIe03iNoKPLJu4Zu/IU9mK/cb3KGhM62RGG94V25bSP8kEKJlo/WK+qDLYzs1xIuy
         jc8ud4x8Zxp+7tmzDyMhHGGr7puxdRUZIsVy3iUg4TSYopVGIJmD2YVoF1cxT279VWCj
         P6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694001302; x=1694606102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZvOe92Pck1yHqHcbbHGxSZdtZe/Mh5Keoxk8BqOdiQ=;
        b=iLJriapdQxD1LoJvbQx2kLPz83ZZgDAxM9E2lzUQ840T0TuzW1N1sKULwvGwemnRwr
         UR8LT3DrT/W6Tyd0VbV9kM+lw+OC3lQBC2EfK2/e5LybhtOfBW9fadStmriDBjlmb4U1
         OPG67ma8zfiwIW/UR0RqZvKGPNdLrbGaH7ba0R7DDGW2qSDC8WkwBgJxMRXWqo9HqxX/
         Rue5dsKAfP1RR71umQcuX+O6tf3wSPmVHmVrOaODgNC/FTBFntTz/XcvNKfhu+HRCHyW
         YYHvCKZbqFNPxOlYvPnJiQ8EJ7Fr+Fo08b2lw9ideG8cFNtz7hGeyZjrOMzpjqgMwhG7
         ZqIQ==
X-Gm-Message-State: AOJu0YyF99fSGiSs/jvu/QoKd4Iv/I2jsnCYQD+SWrmAut4BoqN6HK3G
        4NIPQlHqhDfCAbCeQiBM0dE=
X-Google-Smtp-Source: AGHT+IHTTkfKBB3PaiGWPb5zSXFj7B556Sk4EnEvYfBf/BnTY8TtkNaQDcMvh7TQGd8zPfVpl5Ox/A==
X-Received: by 2002:a05:6830:4507:b0:6b9:db20:4d25 with SMTP id i7-20020a056830450700b006b9db204d25mr14726526otv.1.1694001301738;
        Wed, 06 Sep 2023 04:55:01 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9f6e:bfa3:9410:ae3f])
        by smtp.gmail.com with ESMTPSA id s27-20020a0568301e1b00b006af7580c84csm6330127otr.60.2023.09.06.04.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 04:55:01 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] arm64: dts: imx8mq: Move funnel outside from soc
Date:   Wed,  6 Sep 2023 08:54:44 -0300
Message-Id: <20230906115444.189664-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230906115444.189664-1-festevam@gmail.com>
References: <20230906115444.189664-1-festevam@gmail.com>
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
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 106 +++++++++++-----------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 35f07dfb4ca8..4b1ce9fc1758 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -225,6 +225,59 @@ opp-1500000000 {
 		};
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
+				ca_funnel_in_port3: endpoint {
+					remote-endpoint = <&etm3_out_port>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+				ca_funnel_out_port0: endpoint {
+					remote-endpoint = <&hugo_funnel_in_port0>;
+				};
+			};
+		};
+	};
+
 	pmu {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
@@ -394,59 +447,6 @@ etm3_out_port: endpoint {
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

