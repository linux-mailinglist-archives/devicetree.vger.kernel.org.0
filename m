Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27DB475FD0F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 19:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231420AbjGXRVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 13:21:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231265AbjGXRUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 13:20:50 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DAD410F9
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 10:20:50 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1b8ad907ba4so23083465ad.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 10:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690219249; x=1690824049;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KCtuYQ7QNaClooE6G3dSGVE9TtXBtLYo71yRUwS5dPU=;
        b=CdFex2+MhZGnnx4IEmAkL/3GdExG9WMVZWJ0l4Y838oscSKF5+QY/R8Vy1wksakwtf
         blXYkbGiKYpLrsP8JMJf9Xl1gS3g+fbfl9NNblSrnWb1FEneg+QaM0vE01JvMTwxT9wv
         ToHXLlFS+aBb8qUthqFUogb9Q6QZz3YdulgIO+zjh4M0/H9ZbwE9eWVPXw53oizRb7UK
         zDcTKAvHWgQI6T7qW7XDfxTPTaHEQZvrZWqW1mqc5C1zs8XOTOh06XStK0XboGn5U+mc
         CIzXX0p7OVSfoqEaaebznXgXxKV0NfqL39I5RTys1WEeartsTgDsWtanKNTgTDEbBD5j
         rkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690219249; x=1690824049;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KCtuYQ7QNaClooE6G3dSGVE9TtXBtLYo71yRUwS5dPU=;
        b=RK2Y2iB4GP/Ch7lFQyJcC/Y9HTvjl4b3kzpBoGEhF/SjyFR+YayN0XpmXMeLeqx4fM
         bPe8L2Zbb71p23+4FArbAHelVtDCbjsnDtIW6qfYPA70dwM+Xf9Qt15lk48I6I2pjg8j
         wzZkvkVQV/K4bGvaT3yZinZmERNd/zM5CUNKo1gl/rDnYiFz9/3NYeNQLMqVlU+B56nT
         HwVXFx7YdTl2NIZSZWqRWOubk+jBrpk2N3vxc7HaIR+VphrMI+562TxPcQcNuzA4WBcx
         nyi7udHVMWGuwnrEYLEpSmO0Rb37GDZYqanXnoR7WJLhYCd29cOAsQZl3QE6EjWJlQM2
         dVKw==
X-Gm-Message-State: ABy/qLbSlLTnoYrzo7DwrLpUI+252sX05v5m67AvjpOhi/VnEulGL23a
        GfImXiYI7odJLX6q2t6D8+Iwjw==
X-Google-Smtp-Source: APBJJlErZJ/pO6LUMbtKWF6aJ/wJgkXH0mY9ke7gTP/verUwLEal93A8XCBUwvhe3p3ZXRPc3kPKKg==
X-Received: by 2002:a17:902:eccb:b0:1b9:e9b2:124b with SMTP id a11-20020a170902eccb00b001b9e9b2124bmr8839585plh.64.1690219249500;
        Mon, 24 Jul 2023 10:20:49 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:b55a:eeb0:a3a8:248e])
        by smtp.gmail.com with ESMTPSA id ij15-20020a170902ab4f00b001b9cf522c0esm146456plb.97.2023.07.24.10.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 10:20:49 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
Date:   Mon, 24 Jul 2023 10:20:39 -0700
Subject: [PATCH v2 2/3] riscv: dts: thead: add BeagleV Ahead board device
 tree
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230722-upstream-beaglev-ahead-dts-v2-2-a470ab8fe806@baylibre.com>
References: <20230722-upstream-beaglev-ahead-dts-v2-0-a470ab8fe806@baylibre.com>
In-Reply-To: <20230722-upstream-beaglev-ahead-dts-v2-0-a470ab8fe806@baylibre.com>
To:     Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1690219247; l=2200;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=3iMcyn8F5vpX974FPuD2Mj1EgiREUCjkTVViNu8E2AM=;
 b=3oDsab7sLaNAsKvQX0kUdFfcMgCsTHxeSLNNt3TDah9xg2X5fXvKSG07APOmDzMhMUs7KfyAP
 1FNp8Odz+iWCnuoETKPL/BKxhhtWecRQRILe6zi5m1BY8bI+dVEwL/b
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The BeagleV Ahead single board computer uses the T-Head TH1520 SoC.
Add a minimal device tree to support basic uart/gpio/dmac drivers so
that a user can boot to a basic shell.

Link: https://beagleboard.org/beaglev-ahead
Reviewed-by: Guo Ren <guoren@kernel.org>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/Makefile                 |  2 +-
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 61 ++++++++++++++++++++++
 2 files changed, 62 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/thead/Makefile b/arch/riscv/boot/dts/thead/Makefile
index e311fc9a5939..b55a17127c2b 100644
--- a/arch/riscv/boot/dts/thead/Makefile
+++ b/arch/riscv/boot/dts/thead/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_ARCH_THEAD) += th1520-lichee-pi-4a.dtb
+dtb-$(CONFIG_ARCH_THEAD) += th1520-lichee-pi-4a.dtb th1520-beaglev-ahead.dtb
diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
new file mode 100644
index 000000000000..70e8042c8304
--- /dev/null
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ * Copyright (C) 2023 Drew Fustini <dfustini@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include "th1520.dtsi"
+
+/ {
+	model = "BeagleV Ahead";
+	compatible = "beagle,beaglev-ahead", "thead,th1520";
+
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0  0x00000000  0x1 0x00000000>;
+
+	};
+};
+
+&osc {
+	clock-frequency = <24000000>;
+};
+
+&osc_32k {
+	clock-frequency = <32768>;
+};
+
+&apb_clk {
+	clock-frequency = <62500000>;
+};
+
+&uart_sclk {
+	clock-frequency = <100000000>;
+};
+
+&dmac0 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};

-- 
2.34.1

