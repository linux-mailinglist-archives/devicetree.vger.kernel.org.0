Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C4DDD34179
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 10:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727256AbfFDIPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 04:15:36 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:44329 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727228AbfFDIPa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 04:15:30 -0400
Received: by mail-pf1-f196.google.com with SMTP id t16so3393032pfe.11
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 01:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dER5z7AUiZqvyewGFEgnTI66kajUzFaGGa3MWKBcALw=;
        b=vB+Hs12ydRRg7xKl2y5pq42c9TjetjyW0KPP4CLQt1K5QD8u1082ngypqoz/11y6pf
         HsTDlpjOvwfLUalvg4uG96nQ2MLMmkyHNeAodvBKqe1k6KliNxZtqwgdUPx1nRVCDaLS
         d/gpsoMpSCfGI5CUCM+4zoY7lZ6mNNLD4jXkaJ21sHDJsdpjn0SIxSCt9tqmtkfOofB7
         RqQpd+nyHy8bd1NIy3azycy35bMkxl7stgprnj3dhXBUQy7smuGvkPvmCPP9+IRlqzDl
         nw7NJ48xznSFJhLrRThp2Bn4mrOl4dcFT4lxs6ckloBL3l1TfCRU8gfHKoeqhcD/oe+G
         fhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dER5z7AUiZqvyewGFEgnTI66kajUzFaGGa3MWKBcALw=;
        b=CcDcXrD3jWe8kjqEfsZkDP9PJmj0qdYltZ4ekj7xR+Dz6LOg/nhN5Vixe1ngQSPoFQ
         OIrZQsPh+V25sSYmcDDqQ6pyrrV84YHTwARmXBZdaKnrJCfbFGWkMuPlupESVIM5t8AU
         RlNUGWcpV/e57jyVkIPDjuN/Y/ogDsqIM3l8uceZFxY3UEwCCYVRQ8Y9YbZjdj/PcfNO
         341BQ0SvPoOE5G6QuGc5DT8WeEWqExQupmnfaNdl/3Y5/YKJgrdNTtjyqomqxi2wvC65
         Ezhf2Fs0ps1/IOfJy15VbSp+IGJCzxm3SDIZm8gZ+F+9eDpKPVDJ9ZYBP7H2XjoZ2Mcq
         fnBw==
X-Gm-Message-State: APjAAAVXsxRU0DWBEOhpK7fXiXVnJlGIjqhqplXFo5GBkOfjh7K5KZ9k
        Me6j2yoX5xW25CA/2uM2J6C7Ew==
X-Google-Smtp-Source: APXvYqwm5O/KPp7XNf1fWqY832/e4ZO4cZ+12EaAKnp9jkR2KI4E6QiX8CcY/sQ9R+DjpbaetygTiw==
X-Received: by 2002:a17:90a:1a84:: with SMTP id p4mr35971999pjp.15.1559636129484;
        Tue, 04 Jun 2019 01:15:29 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Jun 2019 01:15:29 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 9/9] arm64: dts: sprd: Add Spreadtrum SD host controller support
Date:   Tue,  4 Jun 2019 16:14:29 +0800
Message-Id: <3ca273e341f2f5f66b121d411428c60afd412586.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add one Spreadtrum SD host controller to support eMMC card for Spreadtrum
SC9860 platform.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 arch/arm64/boot/dts/sprd/whale2.dtsi |   35 ++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/sprd/whale2.dtsi b/arch/arm64/boot/dts/sprd/whale2.dtsi
index 4bb862c..79b9591c 100644
--- a/arch/arm64/boot/dts/sprd/whale2.dtsi
+++ b/arch/arm64/boot/dts/sprd/whale2.dtsi
@@ -130,6 +130,34 @@
 				clock-names = "enable";
 				clocks = <&apahb_gate CLK_DMA_EB>;
 			};
+
+			sdio3: sdio@50430000 {
+				compatible  = "sprd,sdhci-r11";
+				reg = <0 0x50430000 0 0x1000>;
+				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+
+				clock-names = "sdio", "enable", "2x_enable";
+				clocks = <&aon_prediv CLK_EMMC_2X>,
+				       <&apahb_gate CLK_EMMC_EB>,
+				       <&aon_gate CLK_EMMC_2X_EN>;
+				assigned-clocks = <&aon_prediv CLK_EMMC_2X>;
+				assigned-clock-parents = <&clk_l0_409m6>;
+
+				sprd,phy-delay-mmc-hs400 = <0x44 0x7f 0x2e 0x2e>;
+				sprd,phy-delay-mmc-hs200 = <0x0 0x8c 0x8c 0x8c>;
+				sprd,phy-delay-mmc-ddr52 = <0x3f 0x75 0x14 0x14>;
+				sprd,phy-delay-mmc-hs400es = <0x3f 0x3f 0x2e 0x2e>;
+				vmmc-supply = <&vddemmccore>;
+				bus-width = <8>;
+				non-removable;
+				no-sdio;
+				no-sd;
+				cap-mmc-hw-reset;
+				mmc-hs400-enhanced-strobe;
+				mmc-hs400-1_8v;
+				mmc-hs200-1_8v;
+				mmc-ddr-1_8v;
+			};
 		};
 
 		aon {
@@ -272,4 +300,11 @@
 		clock-frequency = <100000000>;
 		clock-output-names = "ext-rco-100m";
 	};
+
+	clk_l0_409m6: clk_l0_409m6 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <409600000>;
+		clock-output-names = "ext-409m6";
+	};
 };
-- 
1.7.9.5

