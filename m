Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0755FE359
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2019 17:51:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727587AbfKOQva (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Nov 2019 11:51:30 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36954 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727540AbfKOQva (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Nov 2019 11:51:30 -0500
Received: by mail-wm1-f65.google.com with SMTP id b17so11149800wmj.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2019 08:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VdOP5MdkiRa742wuZPU3Ia86dlFC1mZ4Epch8je0ZsQ=;
        b=kJhoamSfi+/vkfFmd4tNviBydKZRD8tO2Ip6TbqvxKRbn0fKEMXSdcrsYVs0YRzOyv
         IAX7OTN2enmHRj3B8o3ytHpqqK4EOkqNech8L73OvZzddZBMxCrWdBQppjXekTbbzbQr
         2xt4ufY0Wbzg/L8WL6e4tZS+O8G3PlS0F5fk9UHWbO6ZySQFvLFt/u/SqLVo+M7ldMKf
         QyF3S0lNPxW80L952FJWJ0XgWjhLJ9gYguM45QpVTkyAEakJ2cWk08kmwyxDKWm+WSwk
         nDBnrDFf0vo9Z0mTa2c/QAnVJRLPCq8g8QXH2/m3ITtNpCijqLF+0q89fIuldNFfkxxV
         +F5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VdOP5MdkiRa742wuZPU3Ia86dlFC1mZ4Epch8je0ZsQ=;
        b=k3l4JaOidoWEwRM4SmIavvJn34VBW7L1ioQrSEeJo9TVcVwajPV9ayyyvSVwQz70sU
         RJjVAvq18R2dW+WnslZYT4s92hoErdPJsjxzefkzdsVMwMUtq4EM2Ujzz8+1IBMisVXG
         4yEQn7Q7t9h8b+N20EPTO/TWXbeMiZuYmC/NaY3ruAvlboVealELYalGYlnXwzGsLp3c
         Zug05g1gK9AMEZn/WIeTO3HMECe1kF51hVHCn/Dqech2QigAnaUO7+FsMrMtP2WkDxke
         3ofekHi4TOrJjJUyk3SUpmFNelFIuUQEJK5zMZTtZAlXqS1iERkHdj//FfKTYQZVvmeE
         wTDw==
X-Gm-Message-State: APjAAAWja9U7M/JrbOmmiRUtPdgQL+RG41ne71ZpAoy/ToCUECaDD2LP
        yYHRIOv1uSuHnatfJgPIHkM=
X-Google-Smtp-Source: APXvYqx/vABp+uHtpGDx3HX1T7K5X3e6ac6tFHtw4GaL2E1AormhRyo8+7T2afvE0M4eG9unJSoDKQ==
X-Received: by 2002:a05:600c:1088:: with SMTP id e8mr4336535wmd.7.1573836687858;
        Fri, 15 Nov 2019 08:51:27 -0800 (PST)
Received: from localhost ([37.238.189.15])
        by smtp.gmail.com with ESMTPSA id j22sm13527040wrd.41.2019.11.15.08.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2019 08:51:27 -0800 (PST)
From:   Mohammad Rasim <mohammad.rasim96@gmail.com>
To:     Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Mohammad Rasim <mohammad.rasim96@gmail.com>
Subject: [RFC PATCH 2/2] Add support for Videostrong KII Pro tv box
Date:   Fri, 15 Nov 2019 19:50:27 +0300
Message-Id: <20191115165026.19376-3-mohammad.rasim96@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191115165026.19376-1-mohammad.rasim96@gmail.com>
References: <20191115165026.19376-1-mohammad.rasim96@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for the Videostrong KII Pro tv box which is based on the gxbb-p201 reference design

Signed-off-by: Mohammad Rasim <mohammad.rasim96@gmail.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../boot/dts/amlogic/meson-gxbb-KII-Pro.dts   | 25 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxbb-KII-Pro.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 84afecba9ec0..1d72e93691f2 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-p200.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-p201.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-KII-Pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-vega-s95-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-vega-s95-meta.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-vega-s95-telos.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-KII-Pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-KII-Pro.dts
new file mode 100644
index 000000000000..e79d75bfa8dd
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-KII-Pro.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ */
+
+/dts-v1/;
+
+#include "meson-gxbb-p201.dts"
+
+/ {
+	compatible = "Videostrong,KII-Pro","amlogic,p201", "amlogic,s905", "amlogic,meson-gxbb";
+	model = "Videostrong KII Pro";
+
+
+};
+
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+	bluetooth {
+		compatible = "brcm,bcm4335A0";
+		shutdown-gpios = <&gpio GPIOX_20 GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.23.0

