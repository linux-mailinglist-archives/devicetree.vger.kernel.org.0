Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6D84117DC
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 17:09:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238027AbhITPKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 11:10:38 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44072
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241143AbhITPKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 11:10:37 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CA786402CF
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632150549;
        bh=405kNu3dtB0zJ30yHuYcgVnAp+AYJ1QTK0vyYlLZaqY=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=B860XeaeCJ2mRKiHEU/o8TbGj0puEcPzB6IPDIVcv1aTGM7/YcHe0ua5E3eyT/AMq
         MFQbPPWM9ouxJJd0R1bkvI2oExYJmLiir9VT/EGqsZkJ+C2yXR/ZkUjFshB2xqFKux
         0Hed+HK1QYtY36fqh3OVgyFGJknZfeCzB0A1iCteX54ZZn0FQU1yUHTvdZSZASblFe
         m049y4b87QNSTB3eaFiSF1166bHKUNUmTDp8Sl8E5QEczSq5Po0QAAZ+SDIJix2+GJ
         20Nq8zJ8doCLm8cmCrXK6lp9G03v5DDMjHHknEVgPRJgbXimiDkV6TckBggmuiTTd8
         +h3qfiMNosZ5Q==
Received: by mail-wr1-f71.google.com with SMTP id x2-20020a5d54c2000000b0015dfd2b4e34so6355184wrv.6
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 08:09:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=405kNu3dtB0zJ30yHuYcgVnAp+AYJ1QTK0vyYlLZaqY=;
        b=YMLMFpzYkAKyGgHcbmHDmtNLCJQnwouxYvHndhYWI2Ohy+rWwCEUagP8O/SeWFKNEX
         KiK4bOvOVtnSMop3b7fievOiSK3oDk53uIP/3CTGM0ETawlkuhbl2QhjGUDPgpEWddcD
         +3OOc+c0s3kottD3sLa0/SjXRAZETFOKlagVwFtUDTSFZa9ReeVnr8pktQhdzRNosuNo
         Sf7Ltpbrr9fK6O92ciXACtjkb4X5eGBFKgOEBiU9vPC8wyIr1Tefq+lL7NMbaHI4iGmo
         Zsa5YEwGJiRAfiTqy1cJqo/hbXhXatREF7O7ZIdnjt+68slNseJXVG9l+VOKeTmSV5aP
         3Q0g==
X-Gm-Message-State: AOAM530UHIA8WEytzFzpo7lr40+fqA7tQXUsQuYB+TzwNIJbmcAQ5cuw
        F1iHi71YucY+LpbJoGHI0CYUck6nviZrjJRCD91SGffIChZD/Jn4DV1mCE68zIQuPhLbaiqStBx
        sdLcK3rR4PvTpfIjlV3KPwT6FqsTOXQy70NIPOOk=
X-Received: by 2002:a5d:470b:: with SMTP id y11mr29637061wrq.213.1632150549272;
        Mon, 20 Sep 2021 08:09:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxaf7A+XQqcH4LxJ/S2BYB7M3Xi66LL55Zn0Sh/VmFgsRmUSD1/dSX6l4Dsp8K0+aE14mlaWA==
X-Received: by 2002:a5d:470b:: with SMTP id y11mr29637030wrq.213.1632150549106;
        Mon, 20 Sep 2021 08:09:09 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i2sm15803136wrq.78.2021.09.20.08.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 08:09:03 -0700 (PDT)
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
Subject: [PATCH v3 2/6] riscv: dts: microchip: drop duplicated nodes
Date:   Mon, 20 Sep 2021 17:08:03 +0200
Message-Id: <20210920150807.164673-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
References: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTSI file defines soc node and address/size cells, so there is no
point in duplicating it in DTS file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index b254c60589a1..3b04ef17e8da 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -9,8 +9,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "Microchip PolarFire-SoC Icicle Kit";
 	compatible = "microchip,mpfs-icicle-kit";
 
@@ -35,9 +33,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x0 0x40000000>;
 		clocks = <&clkcfg 26>;
 	};
-
-	soc {
-	};
 };
 
 &serial0 {
-- 
2.30.2

