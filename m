Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F5BC4117E2
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 17:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241292AbhITPLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 11:11:08 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40000
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241239AbhITPLG (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 11:11:06 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 94B8B3F4BE
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632150578;
        bh=O+npPoECYtJ/ZpzV1HLKddQ+EXO1NtYHdY0Cec4JU10=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=XIurkENSealZOqZ6bS/XUG279wah9P+Uj8f5pzELO9T1UUJcknaGth809N3jPVkEj
         y0n+hn55Ni1OJMtOYhyU5jYbQWQkMmqr0SNS0nJ7/X0Xi2o4Aza3TOXjBOgCsbaoea
         4sJrAd739R/NNjFEROJA0h/XyIjSNqBIUukA6iebdubT0UHwpvaXiDMcgxK3QJ47GE
         4X5ABGfL1Pe+WlmSM+gFPCqEicaiJIvjkSjnzimeTIGh6kJFbZ4xrjCLErQPvSaRaH
         ufsxZ7QWxRjhKYUHNMDXbWagmfPvjMm98lItpokxlIfEhzAKipG/DBRCOg0+N1Wwsg
         DCtq/JU5fQf/A==
Received: by mail-wr1-f69.google.com with SMTP id x7-20020a5d6507000000b0015dada209b1so6339740wru.15
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 08:09:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O+npPoECYtJ/ZpzV1HLKddQ+EXO1NtYHdY0Cec4JU10=;
        b=UcCALAlTu5eu6hu/M6GrFoM8DLtaVCxPABPSSNOktOCQjQm8esqY/a7B1QWEhfaO4C
         9JX61/e8+HfKLW8aQdncrgf6kba1cp2cjQICnEIYj8snfiouO7sWCKlI4frDM5X5Z0b4
         I9Ql7QXD3dnbSSeV1oOh5j4dSe2fEHyLfVTtWIZJQ0TwQRNQQPqd3tpnKeTeVOjn1/e1
         7iwFAL6xEIOu9DT8i0+smKm2teXOWS4+1tgCcSfBim6JZX1S9G6fIajGM9sPf6X3ybEJ
         FIQpJI1mS9LBS29XrHGsktQXV1MJ5NjdWZ4H+v6/+FKAkPhxaEM8g8+OVlHbq8Cn/Iac
         DwVw==
X-Gm-Message-State: AOAM532qtU1M2QCrCcOW96AmxMKp8+M/L9XlNp/s0GXtLygxiqRT2UR3
        PS8Or3Yy2PBhHS/nZbQCxfqbfzUut8Q0lvLhGswbrS3fJXIbHjx9JT6bCw+5c8nDw+rehF6gu0u
        9Az7T6oyrd3cmg4RDTGkUvXenvyNYPpXvUlGrPaU=
X-Received: by 2002:a5d:4d02:: with SMTP id z2mr29713718wrt.8.1632150578300;
        Mon, 20 Sep 2021 08:09:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8gNLJgi/hNpZH57Kj8vpJDclH4stPrZXvZVnMlKWrty7IW354pcwPOMxxaTmGpls2OU0c/g==
X-Received: by 2002:a5d:4d02:: with SMTP id z2mr29713701wrt.8.1632150578154;
        Mon, 20 Sep 2021 08:09:38 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i2sm15803136wrq.78.2021.09.20.08.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 08:09:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 4/6] riscv: dts: microchip: drop duplicated MMC/SDHC node
Date:   Mon, 20 Sep 2021 17:08:05 +0200
Message-Id: <20210920150807.164673-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
References: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
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

