Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E103B91241
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2019 20:36:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726353AbfHQSgo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Aug 2019 14:36:44 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:43657 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726080AbfHQSgn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Aug 2019 14:36:43 -0400
Received: by mail-pg1-f194.google.com with SMTP id k3so4569807pgb.10
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2019 11:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
        b=m4IDdt5hE3NS7csTFWIonyNM4/jZUwMLDrD/Mq4Th9B6YG83CrzyI4AAIpjEDqZPe8
         Fi0+cx8yUubrqjQvrRsbOVcuWdisRVU/SSNg68kdQA1BfikK8mud6fn/d0FRR+BBiSqd
         2ZBi8TxKm2ns7ni5cAjvaLHaIrl4EByyDRYQsEwIU4viACw7gPEyLCwuleW3DRLMoyW5
         sM2oiMT1TjQfOfTx0MJ94Wq4p1YeSbGXthSKH0wo1l/j3i66VrTgc52b3GrqhGneSsRW
         Fx+CXvCpZOS+Y/A2dVIBdXRdHPLucJX65qp2mMAzMP1vC9jEJd6dY80KtPuvnNXuvXi+
         xXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
        b=nR6Rc4bm1OhSYj3b37wIJ9CkzUW8GzBgdrzkXwKdEVYd7+iYbd791IopgJOeCSsQi7
         nzWMdYKcxt2zQsbPRK06qbxkf5a36mvY/NDYWLwmW4vmGzwxfglc7SW54sO3O3YixIxB
         xG0j2gXr4wsPVm7tS8JGiX0NRCHYhZCPqJNx3sheeJ0eZjFpawG2JYGIlUIxnvxN7Byj
         cQk2albgmcReC+Rs0YztlfkNzAKw4Vu9MikUDfXBF3bWg0p4B82hdQgqnQMIKGfFvT82
         F5croNeuJCxczLjv+9GQ3msbqvASHAJWYEWZ5znkwJqoAlG7ro12qnZLOg7B6YOejBjT
         hZyA==
X-Gm-Message-State: APjAAAWzj63GC5CL6I7PClJb/7vwTfN3QhioWVoq5IvxVityAyGRqZAM
        qIZTrl6KLvtFoWAaBsB0Oku8
X-Google-Smtp-Source: APXvYqzsV4wdUNvPH0b0Ophc5Xcyb7iDGJiJNKWcXu9BLHJ5O7iDOC7hDRDHo3GH489oZ0FMp34r/w==
X-Received: by 2002:a17:90a:a105:: with SMTP id s5mr12903768pjp.51.1566067002944;
        Sat, 17 Aug 2019 11:36:42 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
        by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2019 11:36:42 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 2/7] arm64: dts: bitmain: Add clock controller support for BM1880 SoC
Date:   Sun, 18 Aug 2019 00:06:09 +0530
Message-Id: <20190817183614.8429-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add clock controller support for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index d65453f99a99..8471662413da 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/bitmain,bm1880-reset.h>
 
@@ -66,6 +67,12 @@
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	osc: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -94,6 +101,15 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller@e8 {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>, <0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				clock-names = "osc";
+				#clock-cells = <1>;
+			};
+
 			rst: reset-controller@c00 {
 				compatible = "bitmain,bm1880-reset";
 				reg = <0xc00 0x8>;
-- 
2.17.1

