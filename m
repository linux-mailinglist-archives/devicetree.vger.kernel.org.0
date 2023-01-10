Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67EAB664231
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:47:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238256AbjAJNrh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:47:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233813AbjAJNrf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:47:35 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB9EF1E3E2
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:47:34 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id q9so8256154pgq.5
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sapLDHQ/MX6BiGPSkSOeo78dMp+HFK8St+B4rAG5HPk=;
        b=vJ79zekMMVT4CE5xTl2AAshZA4WxKLI0A2tgllZSygFeqiTlbNw3J0zQMLeHo+fuVm
         oKtMvo7NLr+I+Sk7b3E5aO+VFeZcwgiwgPJhD9ErPTyxMfJCLmWgXz/08XY0iBqtPk7h
         rixpENn1/gCeKEaeeGAWq7uJrQB0uxYhZlf8uLrCoUF4P49X5ggUPca/tMXxjAapew2P
         u20zUlS987YDZO2A/onjB/9HslTWwVxfB7egv9v2BEvcKMbBGwZzvKlh9B0WQcxcliwi
         gQH5nnIxXcrIZv6T4S3tTVD/w2Ps66p9XNguPW5oCKNrv62bEFwnTppKtJy5fVplKV92
         PXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sapLDHQ/MX6BiGPSkSOeo78dMp+HFK8St+B4rAG5HPk=;
        b=wJ5B+bv6vISghx0clpblr4ZtIn7uu0XyriE/9xhaGOKMBMZplT2gWgxyj/YkY91UKH
         07+FX+uMK7rQwyY2NZDg6hcalNjCX1pya1O1IOnQ3SGultVbojIWJui3/npFZQ1cRJTD
         9eRkPC/FZWjDz0IV2Lum14v3HDTczXb6bj46sgw4OPGgyqV9ZQPRNWTITtjj78xt7eH5
         +aRQN77A8BlOGIGb6GyARH9TDWUYhlfY4jUiPXDhnk/FEez8k+35wyOCdZiGW8QS7Tcn
         I0P1PIbWCdgRZBo8eW4Jtod+lxSmu+QxjPeKRaTUdyTLhfG2Cym/EI9FdGwqHcBqynad
         EEBg==
X-Gm-Message-State: AFqh2koK1echrn1v9y2tjZWZ4r7FYM/0H0ZUTtj//dy3XP9XvpQZTx+A
        eVxVtiE4DPSSN8p1+Gye9VN8AQ==
X-Google-Smtp-Source: AMrXdXtCea+6eZ+uKc7ZT0gY8hA0d4bl6uqeDBBSXH0NpobynJWCtEln/YVIeu6rsnNK6g0LNHrMvA==
X-Received: by 2002:a05:6a00:4212:b0:583:fb14:ddc1 with SMTP id cd18-20020a056a00421200b00583fb14ddc1mr15035537pfb.17.1673358454373;
        Tue, 10 Jan 2023 05:47:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:d32:8399:ca6f:14d7])
        by smtp.gmail.com with ESMTPSA id y12-20020a62640c000000b005819313269csm8077426pfb.124.2023.01.10.05.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 05:47:34 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/3] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model A IO
Date:   Tue, 10 Jan 2023 19:16:58 +0530
Message-Id: <20230110134658.820691-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
References: <20230110134658.820691-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 6(Neu6) IO board is an industrial form factor
ready-to-use IO board from Edgeble AI.

IO board offers plenty of peripherals and connectivity options and
this patch enables basic eMMC and UART which is enough to successfully
boot Linux.

Neu6 needs to mount on top of this IO board in order to create a
complete Edgeble Neural Compute Module 6(Neu6) IO platform.

Add support for Edgeble Neu6 Model A IO Board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: Patches on top of
https://www.spinics.net/lists/kernel/msg4644731.html

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 2de9a727183e..ff5861530dd7 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -83,6 +83,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
new file mode 100644
index 000000000000..b51543892078
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rk3588.dtsi"
+#include "rk3588-edgeble-neu6a.dtsi"
+
+/ {
+	model = "Edgeble Neu6A IO Board";
+	compatible = "edgeble,neural-compute-module-6a-io",
+		     "edgeble,neural-compute-module-6a", "rockchip,rk3588";
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.25.1

