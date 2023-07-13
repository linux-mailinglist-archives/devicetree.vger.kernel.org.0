Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E58D7520C2
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 14:05:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233666AbjGMMFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 08:05:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233707AbjGMMFl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 08:05:41 -0400
X-Greylist: delayed 1480 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 13 Jul 2023 05:05:37 PDT
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F8D52701
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 05:05:37 -0700 (PDT)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197]) by mx-outbound17-21.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 13 Jul 2023 12:05:35 +0000
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-76783ba6d62so95059885a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 05:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1689249934; x=1691841934;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KyAy2AzzOz8nJpjULNpX43+m0sZBWwEmM9yra+1Q5j8=;
        b=dbqlUaUVwTL2KHrx+bCDkBLVlkd8IM98CukhpajTK0h/7SfJx1x5gY/CiVRygXAkVG
         f22DUgn2yDT+EikFqYkjC5ctUY56Y7oJjPZo+eeE+xSxA8y4kMt500VJwxzx1BrKzqCz
         WCm6IP+NCncZKuVsiPSRqXDrbpJoqKkdvaPKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689249934; x=1691841934;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KyAy2AzzOz8nJpjULNpX43+m0sZBWwEmM9yra+1Q5j8=;
        b=QoGirutRAFQ93+2A/zC+HuxV1RrJyn6VuVM8pPSjKd6uIjyZLA6ESw0eQ/cvoWUVbW
         3OolkoIKeblQFvt+XE3Ni3nu3SGCQuPmykV3r4PbSaYaWuKnwMEJSRmBIADMziph3q3Q
         GAahzrLFL3kjT8hUrPvdZtDNK2fCxN+Ja4BvBHhCbhtifoJJPtQgLlrFOGi01Eb74Lbx
         3Binx5La/aYS4VD0qqMACKCItu4kp1AaSElS5mkvoDNUO/UTQmkZ8oHZ6vr4osOAV3KX
         Q4ekykv1o940Yq2GM0GDIWN9WU5wt8jGc7OVZZbFWKXMWuzHn1dORcXBwD1OOXwIhyEd
         lS0w==
X-Gm-Message-State: ABy/qLbQKOgwhhIAmj7te61ei51UOTWFvpQ/1m12ILQr8Gf2fdeGVtZ1
        9nCSiG2EJg1KnBO9LtlT03wxOsbdIs5vM2eP9ErEAEf1CulNb4F/yq5scEymQhZPjNHalAuXVY7
        a7EhHh6DwptTEVCe/yuRLrKHuf2M+UuulqKGuIf3/QW9uhiR3w5pG/LMJVQ==
X-Received: by 2002:a17:90a:7bca:b0:262:dd2c:54fc with SMTP id d10-20020a17090a7bca00b00262dd2c54fcmr495901pjl.42.1689248435106;
        Thu, 13 Jul 2023 04:40:35 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFa72+vLfza7NcrCk0tX0uLR0VUrams/Zn92hIEZcTYLiZ9I1Pj/rfG47blKhz+MQQ88ZPWDw==
X-Received: by 2002:a17:90a:7bca:b0:262:dd2c:54fc with SMTP id d10-20020a17090a7bca00b00262dd2c54fcmr495888pjl.42.1689248434823;
        Thu, 13 Jul 2023 04:40:34 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id 13-20020a17090a190d00b00263f41a655esm5693516pjg.43.2023.07.13.04.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 04:40:34 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j721s2-main: Add dts nodes for EHRPWMs
Date:   Thu, 13 Jul 2023 17:10:21 +0530
Message-Id: <20230713114021.28450-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1689249934-304373-12302-7303-1
X-BESS-VER: 2019.1_20230712.1926
X-BESS-Apparent-Source-IP: 209.85.222.197
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysrAwAbIygILGBpYGximW5o
        kpKcaWKeamqUZJRsYpZiYG5gapFoYGZkq1sQCOzDtxQQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.249458 [from 
        cloudscan23-149.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Add dts nodes for 6 EHRPWM instances on SoC. Disable EHRPWM nodes in the
dtsi files and only enable the ones that are actually pinned out on a
given board in the board dts file.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 66 ++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index ed79ab3a3271..0d3a965f764f 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -58,6 +58,72 @@ serdes_ln_ctrl: mux-controller@80 {
 			mux-reg-masks = <0x80 0x3>, <0x84 0x3>, /* SERDES0 lane0/1 select */
 					<0x88 0x3>, <0x8c 0x3>; /* SERDES0 lane2/3 select */
 		};
+
+		ehrpwm_tbclk: clock-controller@140 {
+			compatible = "ti,am654-ehrpwm-tbclk", "syscon";
+			reg = <0x140 0x18>;
+			#clock-cells = <1>;
+		};
+	};
+
+	main_ehrpwm0: pwm@3000000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x3000000 0x00 0x100>;
+		power-domains = <&k3_pds 160 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 0>, <&k3_clks 160 0>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	main_ehrpwm1: pwm@3010000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x3010000 0x00 0x100>;
+		power-domains = <&k3_pds 161 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 1>, <&k3_clks 161 0>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	main_ehrpwm2: pwm@3020000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x3020000 0x00 0x100>;
+		power-domains = <&k3_pds 162 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 2>, <&k3_clks 162 0>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	main_ehrpwm3: pwm@3030000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x3030000 0x00 0x100>;
+		power-domains = <&k3_pds 163 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 3>, <&k3_clks 163 0>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	main_ehrpwm4: pwm@3040000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x3040000 0x00 0x100>;
+		power-domains = <&k3_pds 164 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 4>, <&k3_clks 164 0>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	main_ehrpwm5: pwm@3050000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x3050000 0x00 0x100>;
+		power-domains = <&k3_pds 165 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 5>, <&k3_clks 165 0>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
 	};
 
 	gic500: interrupt-controller@1800000 {
-- 
2.36.1

