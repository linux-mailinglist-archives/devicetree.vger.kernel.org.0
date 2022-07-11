Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D09656773F
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 21:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232277AbiGETEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 15:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbiGETEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 15:04:53 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BE71CE1C
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 12:04:51 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 205-20020a1c02d6000000b003a03567d5e9so9860878wmc.1
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 12:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BQOVUNXHvwHVcucqUlVv6BnH7JR1aGPeK9i5YAi0Y4c=;
        b=SMCwI1AUdC5Z5umwrRWknLPNvbobCNRXr5gkynO1gpaKoWOB7NbxsldL+1F5GgT+GR
         DjGz9/P4VOH+zT0ApBC3nAj9SaYA8bl9PwDwpKYtJSvHPyBJ3rxIlwColLPEhHA6htoG
         BshgcauwhGltFavxv3m2/BquB79DYVejyEytpDb2+tww9WA7j3jyELnuVx0KxT5+xpm8
         q7n7J/XoBnMIEM5pjCg4ox5jYZ23uFdpqxeBwmOjjLvJQOm93XsRCkECL5jg+z9FG6Hh
         KqleVJwWfSle8KFpr53AMLL8i7toF5OjUZapP8KmI1oRvdPgl9ReB1pPTTl1uWh9Ag73
         0KqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BQOVUNXHvwHVcucqUlVv6BnH7JR1aGPeK9i5YAi0Y4c=;
        b=vkA2jZKCV0apPOzNN0355Pg2WjyDNiIuMoVO/fhNTUN1VInyIkafL/S8p44Bhg+14Q
         rm2dD802aoMV+H9+nApmA2m0m2P+c2VJHVglPZXSMtc6F7GIibdMg7iOte3kpiZ48INr
         tt0KIh2co0QZ9/k6OHRooGzs2GSrzI8QzuJE5/1OFMAQ8qv5xvb25f8WZ/borSylfvcd
         t/55r80cmnRwUvsbGs9Gx+13nDw53Y/CJICwcPTZUrCA+sTud+bSm2lcX4ad/DmLL1TZ
         xhOSSCe0AtbXl4JGaa6XVX8GqcXtYQOpjmo12JsqlpT+CcsoNUN30oV3h6xWUxHIKyaq
         2/DA==
X-Gm-Message-State: AJIora+1mnc2E3m9JRHE+DAma7aMFzd7DesHtYg9RsYj9FqWkgYH8z7T
        QNXsiNe1S7D2DUHX2fazx1Mb/w==
X-Google-Smtp-Source: AGRyM1tZGLDMdvlgykupbCQXP9nd5v6//7GI6YZxCZExzQZtITUr0XqM8RF7qHZYbKpMoVi8K3BeLw==
X-Received: by 2002:a05:600c:a08:b0:3a1:9319:ab78 with SMTP id z8-20020a05600c0a0800b003a19319ab78mr21659837wmp.158.1657047889777;
        Tue, 05 Jul 2022 12:04:49 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id d7-20020a5d5387000000b0021d5c52f4b4sm9912961wrv.34.2022.07.05.12.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 12:04:49 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Zong Li <zong.li@sifive.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Jonas Hahnfeld <hahnjo@hahnjo.de>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Brice Goglin <Brice.Goglin@inria.fr>
Subject: [PATCH 1/5] riscv: dts: starfive: Add JH7100 CPU topology
Date:   Tue,  5 Jul 2022 20:04:32 +0100
Message-Id: <20220705190435.1790466-2-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220705190435.1790466-1-mail@conchuod.ie>
References: <20220705190435.1790466-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonas Hahnfeld <hahnjo@hahnjo.de>

Add cpu-map binding to inform the kernel about the hardware topology
of the CPU cores.

Before this change, lstopo would report 1 core with 2 threads:
Machine (7231MB total)
  Package L#0
    NUMANode L#0 (P#0 7231MB)
    L2 L#0 (2048KB) + Core L#0
      L1d L#0 (32KB) + L1i L#0 (32KB) + PU L#0 (P#0)
      L1d L#1 (32KB) + L1i L#1 (32KB) + PU L#1 (P#1)

After this change, it correctly identifies two cores:
Machine (7231MB total)
  Package L#0
    NUMANode L#0 (P#0 7231MB)
    L2 L#0 (2048KB)
      L1d L#0 (32KB) + L1i L#0 (32KB) + Core L#0 + PU L#0 (P#0)
      L1d L#1 (32KB) + L1i L#1 (32KB) + Core L#1 + PU L#1 (P#1)

Signed-off-by: Jonas Hahnfeld <hahnjo@hahnjo.de>
Co-developed-by: Emil Renner Berthing <kernel@esmil.dk>
Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 69f22f9aad9d..c617a61e26e2 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -17,7 +17,7 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu@0 {
+		U74_0: cpu@0 {
 			compatible = "sifive,u74-mc", "riscv";
 			reg = <0>;
 			d-cache-block-size = <64>;
@@ -42,7 +42,7 @@ cpu0_intc: interrupt-controller {
 			};
 		};
 
-		cpu@1 {
+		U74_1: cpu@1 {
 			compatible = "sifive,u74-mc", "riscv";
 			reg = <1>;
 			d-cache-block-size = <64>;
@@ -66,6 +66,18 @@ cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 			};
 		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&U74_0>;
+				};
+
+				core1 {
+					cpu = <&U74_1>;
+				};
+			};
+		};
 	};
 
 	osc_sys: osc_sys {
-- 
2.37.0

