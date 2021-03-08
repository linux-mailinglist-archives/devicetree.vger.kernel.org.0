Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E51D331436
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbhCHRKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:32 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33162 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbhCHRKA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:10:00 -0500
Received: from mail-wm1-f72.google.com ([209.85.128.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOJ-0003KD-J0
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:09:59 +0000
Received: by mail-wm1-f72.google.com with SMTP id n2so1171402wmi.2
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:09:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J8s41kTqsk18jArtcexwjcTxcMbClVKzru2/iOied3M=;
        b=IpDi6DzEy5Q+ikB1HHY7JSRHD9QbTA9RQg0DaVCYdsUXAqY0fkKUvbBl3rikyL5g6V
         yZT5GE+u8jQJSCgAx/NoDjWLrlXTQ0O9afMNUc3fSomf1UjZMTGYyzlnjp6ngrvy/Fr2
         R29ATJU34VIXgk7a+28+xe6j2otoQG4V0G63FzO45lKT2rP5jOHfxzOsdMch8/Lsospv
         kmdJOlIUANTF0E260zZYUEzdvvFN60ThAlrLQSluTDzvnVYUSGMWRU1BPlsShiTNjRd4
         4KVqvRSTV0edlhlzyB90sl/EHkgvABWmQMG5bSpMXoKL17xuDHaoT5bLF4Lvx5HtepCm
         U/IQ==
X-Gm-Message-State: AOAM531dZkcQdqx8GqZoYFLhYT6pAyvl+Pjlh+8advMiBXy8qSGmnKqq
        ++A7R4PpTftXH/gZ21M/uDKo+Ea2SIpX1ooKY4Aj6zDSgpizToNA/iQzrD1Fc/p/XRLBgv7QQqy
        LmS/zU6mQ0HPrVMM5a+J3rm9+NJDhCJ5PsRWDhqw=
X-Received: by 2002:adf:e481:: with SMTP id i1mr8535896wrm.63.1615223399370;
        Mon, 08 Mar 2021 09:09:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzKn+XdN+3exyMy6wDRVvSJH0t5bhxIQlMvXRSWRbJA1ckNgQs8bb12LMytPb2HH9k3ivKNkA==
X-Received: by 2002:adf:e481:: with SMTP id i1mr8535868wrm.63.1615223399142;
        Mon, 08 Mar 2021 09:09:59 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:09:58 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 04/10] arm64: dts: intel: socfpga_agilex: move timer out of soc node
Date:   Mon,  8 Mar 2021 18:09:39 +0100
Message-Id: <20210308170945.161468-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

The ARM architected timer is part of ARM CPU design therefore by
convention it should not be inside the soc node.  This also fixes dtc
warning like:

    arch/arm64/boot/dts/intel/socfpga_agilex.dtsi:410.9-416.5:
        Warning (simple_bus_reg): /soc/timer: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 8f0736e4f3b5..25882faccbdb 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -115,6 +115,15 @@ qspi_clk: qspi-clk {
 		};
 	};
 
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupt-parent = <&intc>;
+		interrupts = <1 13 0xf08>,
+			     <1 14 0xf08>,
+			     <1 11 0xf08>,
+			     <1 10 0xf08>;
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -406,15 +415,6 @@ sysmgr: sysmgr@ffd12000 {
 			reg = <0xffd12000 0x500>;
 		};
 
-		/* Local timer */
-		timer {
-			compatible = "arm,armv8-timer";
-			interrupts = <1 13 0xf08>,
-				     <1 14 0xf08>,
-				     <1 11 0xf08>,
-				     <1 10 0xf08>;
-		};
-
 		timer0: timer0@ffc03000 {
 			compatible = "snps,dw-apb-timer";
 			interrupts = <0 113 4>;
-- 
2.25.1

