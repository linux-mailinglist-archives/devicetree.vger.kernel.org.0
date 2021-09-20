Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5FF4115C1
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239461AbhITNaI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:30:08 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39088
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236861AbhITNaH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 09:30:07 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B92DB40192
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632144519;
        bh=O+npPoECYtJ/ZpzV1HLKddQ+EXO1NtYHdY0Cec4JU10=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=vrDE8ssyIHzsRuUWL7ILVAm6FDfpW9Cordy/A4pZU+3u7v6pBpY4TNYpKT0M97uvF
         q/ATgaad4CZZECJn3cRFZRzEgm59LYuhhvFkSj43pC/nEx3XWKQtPqOGvjBvUB/rEa
         am5lt6stJpHWlFgtatm9TGFfEib+H9TjGt57Iudm0a65mU0fR3nXHlxbA6bQQUcowK
         Zyp18dEZ83qMVlo1Cq0gD5y7/uNlgGIjPz3Jagc/sdyQ18aL/Hk1tqz1LdsXGN2zQK
         oKarcYjzZzOQx+SpiAGyZfY4q1EO3bRJ2fZ4CYrFNOPH40fZOSYaRJflMjuQOnkZ6f
         4VV72AfI6kWiQ==
Received: by mail-wr1-f69.google.com with SMTP id e1-20020adfa741000000b0015e424fdd01so5614442wrd.11
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:28:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O+npPoECYtJ/ZpzV1HLKddQ+EXO1NtYHdY0Cec4JU10=;
        b=4lf7umkTXL6lqEgLIIlgFonf+9/rvXsKjgnIIr62U3LwJpDI/FXxZ+eQKH/8DDG++k
         1a8QAAikxqCuih8Vm0fr4/Xpo6h3zSRO9wOhIcL+Q3zWYAJ+ci7goiQwjJGLs+Gp/E+l
         c/JUFsXRp56gBT7xd3A3q4vvV81yVHOOWLSgWaIb8t/BiLH726ZVMhstb0SfFu+sWCrG
         AVIp0DRRh1F/HIdVY0SRf5dNG8PAeX74/DD3N5uGCfwitgA95WtgVR3P1er1F5yI6//G
         dnMfH0VGfpizKYELKbU90awFA/ZtSGHaeGxKVy6snELQYJMABocyi6jpidZjdEj4pGem
         3sHA==
X-Gm-Message-State: AOAM530ySNPQSNMG4fn4x8C0wChcBjyzgYAzl5365g4t5exDMDyimHmc
        CETFvn+peDDO1Ql/srH3k+PDDvZS2bgaW7ehQv/1h0602jU79f87HNUirMEmP1oJZA1/ByD0avl
        9bmhlFmgI/Au9S9Tj1ccsNrCzDtz6CPJTSSUS6+E=
X-Received: by 2002:adf:8170:: with SMTP id 103mr28964677wrm.167.1632144519421;
        Mon, 20 Sep 2021 06:28:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxU1n79MwXc4vaCAxSEjXBbGZEunmWRE3XbvJmB87c2EiwNDfExqsKDT3J4oHSVLZL0aKxDPA==
X-Received: by 2002:adf:8170:: with SMTP id 103mr28964657wrm.167.1632144519271;
        Mon, 20 Sep 2021 06:28:39 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id g1sm45429wmk.2.2021.09.20.06.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 06:28:38 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 3/5] riscv: dts: microchip: drop duplicated MMC/SDHC node
Date:   Mon, 20 Sep 2021 15:28:28 +0200
Message-Id: <20210920132830.152802-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920132830.152802-1-krzysztof.kozlowski@canonical.com>
References: <20210920132830.152802-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Devicetree source is a description of hardware and hardware has only one
block @20008000 which can be configured either as eMMC or SDHC.  Having
two node for different modes is an obscure, unusual and confusing way to
configure it.  Instead the board file is supposed to customize the block
to its needs, e.g. to SDHC mode.

This fixes dtbs_check warning:
  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: sdhc@20008000: $nodename:0: 'sdhc@20008000' does not match '^mmc(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Move also bus-width, suggested by Geert.
---
 .../microchip/microchip-mpfs-icicle-kit.dts   | 11 +++++++-
 .../boot/dts/microchip/microchip-mpfs.dtsi    | 28 +------------------
 2 files changed, 11 insertions(+), 28 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index 07f1f3cab686..fc1e5869df1b 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -51,8 +51,17 @@ &serial3 {
 	status = "okay";
 };
 
-&sdcard {
+&mmc {
 	status = "okay";
+
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
 };
 
 &emac0 {
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index 5084b93188f0..83bc14860960 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -262,39 +262,13 @@ serial3: serial@20104000 {
 			status = "disabled";
 		};
 
-		emmc: mmc@20008000 {
-			compatible = "cdns,sd4hc";
-			reg = <0x0 0x20008000 0x0 0x1000>;
-			interrupt-parent = <&plic>;
-			interrupts = <88 89>;
-			pinctrl-names = "default";
-			clocks = <&clkcfg 6>;
-			bus-width = <4>;
-			cap-mmc-highspeed;
-			mmc-ddr-3_3v;
-			max-frequency = <200000000>;
-			non-removable;
-			no-sd;
-			no-sdio;
-			voltage-ranges = <3300 3300>;
-			status = "disabled";
-		};
-
-		sdcard: sdhc@20008000 {
+		mmc: mmc@20008000 {
 			compatible = "cdns,sd4hc";
 			reg = <0x0 0x20008000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupts = <88>;
 			pinctrl-names = "default";
 			clocks = <&clkcfg 6>;
-			bus-width = <4>;
-			disable-wp;
-			cap-sd-highspeed;
-			card-detect-delay = <200>;
-			sd-uhs-sdr12;
-			sd-uhs-sdr25;
-			sd-uhs-sdr50;
-			sd-uhs-sdr104;
 			max-frequency = <200000000>;
 			status = "disabled";
 		};
-- 
2.30.2

