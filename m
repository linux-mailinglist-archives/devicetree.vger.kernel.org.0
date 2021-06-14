Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68FE33A6A38
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233829AbhFNP33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:29:29 -0400
Received: from mail-ed1-f46.google.com ([209.85.208.46]:42975 "EHLO
        mail-ed1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233843AbhFNP3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:29:07 -0400
Received: by mail-ed1-f46.google.com with SMTP id i13so47062014edb.9
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XnI5A9GyUFD9otKRwepb1rslDx5RUfQ5qLlRLVzPwBw=;
        b=0hM6kT7o+SO+ssGW1xOlD3jMzAbZ1I+pc1zzcxeu73jJBZ2kkqfxxckl/Bzn1iXHqC
         m2Mw+7EnFBlBqdb2QUHyj8zyo5esqnsX9BPQ5C7GRnG/Qh/appBNJyoBgUA/cMFx32o+
         7oHvJuT0ZLZnDIPIZKS9QWEwPpvfhlHRWdPbEewkT6N3nGgsKus9fqO3kuGXt/xeEugs
         3W4FRNFEldN9Xhk3XA/VlOaB7OEMaLNhbM+lea3NS2BF3fgyPletUiyqw6LaCeuqe6N9
         kdWV/eQHf6vMFfgfrVZtR3CbwPJMQk1ONpEQVqi+1DezZ6L3khfv6QYCsdMQhi9N0nLi
         VAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=XnI5A9GyUFD9otKRwepb1rslDx5RUfQ5qLlRLVzPwBw=;
        b=Hcn/NpTgWCoyVCdC+IOmc/szxuksUdsAwGOls5feVYj5OsGn4E3Ye7LPiUDYfvtfdL
         INFP9+XWL28n3WQlYm1HZqSmnf90+Hjs5EYIgrGAWsQ/vHcGBvr12Is0rEKuPCretnwQ
         nqtOvRtmOfP5jLG8PPKZXjJcaS9oreIL2JCsk7j4K++Twzt1mZ6W3oXlgLEsIwBuA66K
         Pb6XCJK96IHSmNxoUukp7RYmIt3Apz9MhBGSgiE2OgYWYenauXP7i0tHa8zVwCy52o1v
         hDQlS4KjHJjLDibEV1nKr0xjO8dKh07TmpcUagaACMVeanty+qCQJyRRoaRMuU3iWQyT
         cHsg==
X-Gm-Message-State: AOAM532iTXIRxssOvRiaSBR4C7S8E7h6P7RKR5adVuBvYoIsiAE2ZQqK
        ypM5qsPDAYQ8dFxWu7qVRI6vyA==
X-Google-Smtp-Source: ABdhPJxNRpTAKjuZVKnNUooU3IwKhhXvXyj+G2dUHKrVJ+GMlhx9Uk/ES2wPYpcV7teL4FmrPLKTDg==
X-Received: by 2002:a05:6402:40c3:: with SMTP id z3mr17493467edb.187.1623684363874;
        Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id h6sm9498068edj.91.2021.06.14.08.26.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 14/33] arm64: zynqmp: Enable nand driver for dc2 and dc3
Date:   Mon, 14 Jun 2021 17:25:22 +0200
Message-Id: <e103821bdb717132559e780f1a4f4f6fefc95688.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add description for nand devices on zc1751 dc2 and dc3 boards.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 .../dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    | 26 +++++++++++++++++++
 .../dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |  9 ++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index 1ac105a82e1b..4b4c19034fe1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -127,6 +127,32 @@ rtc@68 {
 	};
 };
 
+&nand0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nand0_default>;
+	arasan,has-mdma;
+
+	nand@0 {
+		reg = <0x0>;
+		#address-cells = <0x2>;
+		#size-cells = <0x1>;
+		nand-ecc-mode = "soft";
+		nand-ecc-algo = "bch";
+		nand-rb = <0>;
+		label = "main-storage-0";
+	};
+	nand@1 {
+		reg = <0x1>;
+		#address-cells = <0x2>;
+		#size-cells = <0x1>;
+		nand-ecc-mode = "soft";
+		nand-ecc-algo = "bch";
+		nand-rb = <0>;
+		label = "main-storage-1";
+	};
+};
+
 &pinctrl0 {
 	status = "okay";
 	pinctrl_can0_default: can0-default {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
index 4ea6ef5a7f2b..ba7f1f21c579 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm017-dc3
  *
- * (C) Copyright 2016 - 2019, Xilinx, Inc.
+ * (C) Copyright 2016 - 2021, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -107,6 +107,13 @@ &i2c1 {
 	clock-frequency = <400000>;
 };
 
+/* MT29F64G08AECDBJ4-6 */
+&nand0 {
+	status = "okay";
+	arasan,has-mdma;
+	num-cs = <2>;
+};
+
 &rtc {
 	status = "okay";
 };
-- 
2.32.0

