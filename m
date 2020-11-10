Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF232ADA38
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 16:20:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730814AbgKJPU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 10:20:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730368AbgKJPU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 10:20:56 -0500
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87B1EC0613CF
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 07:20:54 -0800 (PST)
Received: by mail-ed1-x543.google.com with SMTP id q3so13126294edr.12
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 07:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SMNbGLi2Q4/xVsAortlccPXTjS9R1PWvo/pybl2OsXY=;
        b=e9x07HiS2tn6aNtybXD/R8/ilWG3oIDrDzv8eVGu9iJgWimMKhpRyjxu1KbktXFGJl
         8XN4aXLRAj1mwsrHfiwUgNOr3nZVvomT2R5kYefqfGl5o0Mr9WJj26YSCpasuRCcvM4Y
         hp5avp96COv8xMdTf2+htoym/F1/W1Sc/azDo86Wt+QM+Ph/sStL1yAT49G/29f9Er3Y
         UmDlNNCTZT1l4F5S32AjDXyVnTXT74kSVefM9QmezIKdG2l/+Cy6H1kKGNx8sU4qmdv6
         XVmaVsOv8C0ebNX3tEq/wZ93ZhYkP3BWVEkUaF7Ic2dU1NnPrSq5uJszykgfVWtnj+gY
         nT1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=SMNbGLi2Q4/xVsAortlccPXTjS9R1PWvo/pybl2OsXY=;
        b=Jiuo9kFIj4UjTomvd+a3MZYZzjG6rukauu4tHg6PPbgfp0+WU+DEtHUW1NYx89rfSm
         oVGe9LMEEHTIJunNDQdzicLRHRwybLLwXSCr2pHpoDpfbq+t9YOpNK/tOKJHM3pi/0OA
         dajhI/CwmD+QepmLXvNaToJgLwvysYMj9NmhQcIy7r4T/8F4PLm/Ap8dk/v57pEYBnPv
         SIEn1R1yPgkbPuq4QISIYj8ocPDab/8l+u59yQVy+Z5lD4iXMyGBiplcelP9N2bUy0Hm
         PJcfl++dUAnWx5uT5Ss6BTnEu4uZ5BY3yIgJuQx9JB3pzIfJM7IMqXsReH97+CWHI0XS
         9kpg==
X-Gm-Message-State: AOAM5338iUbnEOBNkmes6RDnEjRKuDuMoK/+3fkD08hBH4uYXrMT3bft
        a1G00LZGF8UpJ2AccxKQ4pyI9w==
X-Google-Smtp-Source: ABdhPJyh/LggTlRIYwsOreK6uI97W8fKKr4yjtDlCbqgtHI3WaqlzIw81U7JCVNmB9x+ikpLE93BPQ==
X-Received: by 2002:a05:6402:144b:: with SMTP id d11mr21724069edx.195.1605021653284;
        Tue, 10 Nov 2020 07:20:53 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id s26sm6133267edy.1.2020.11.10.07.20.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Nov 2020 07:20:51 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Paul Thomas <pthomas8589@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Manish Narani <manish.narani@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: zynqmp: Move gic node to axi bus
Date:   Tue, 10 Nov 2020 16:20:46 +0100
Message-Id: <f767fe007e446a2299fda9905e75b723c650a424.1605021644.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reason for this change is that after change from amba to axi U-Boot
started to show error like:
Unable to update property /axi/ethernet@ff0e0000:mac-address, err=FDT_ERR_NOTFOUND
Unable to update property /axi/ethernet@ff0e0000:local-mac-address, err=FDT_ERR_NOTFOUND

The reason is implementation in fdt_nodename_eq_() which is taken from dtc
to the kernel and to the U-Boot. Especially DTC commit d2a9da045897 ("libfdt:
Make unit address optional for finding nodes") which is in DTC from 2007.

The part of commit description is
"   This is contrary to traditional OF-like finddevice() behaviour, which
    allows the unit address to be omitted (which is useful when the device
    name is unambiguous without the address)."

The kernel commit dfff9066e60e ("arm64: dts: zynqmp: Rename buses to be
align with simple-bus yaml") changed amba-apu/amba to axi@0/axi but
fdt_nodename_eq_() detects /axi/ as match for /axi@0/ because of commit
above.

That's why it easier to fix one DT inside the kernel by moving GIC node
from own bus to generic axi bus as is done by others SoCs. This will avoid
incorrect match because the unit address is omitted.

Reported-by: Paul Thomas <pthomas8589@gmail.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 31 ++++++++++----------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 771f60e0346d..515b15ed634a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -182,25 +182,6 @@ fpga_full: fpga-full {
 		ranges;
 	};
 
-	amba_apu: axi@0 {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0 0xffffffff>;
-
-		gic: interrupt-controller@f9010000 {
-			compatible = "arm,gic-400";
-			#interrupt-cells = <3>;
-			reg = <0x0 0xf9010000 0x10000>,
-			      <0x0 0xf9020000 0x20000>,
-			      <0x0 0xf9040000 0x20000>,
-			      <0x0 0xf9060000 0x20000>;
-			interrupt-controller;
-			interrupt-parent = <&gic>;
-			interrupts = <1 9 0xf04>;
-		};
-	};
-
 	amba: axi {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -339,6 +320,18 @@ fpd_dma_chan8: dma@fd570000 {
 			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
+		gic: interrupt-controller@f9010000 {
+			compatible = "arm,gic-400";
+			#interrupt-cells = <3>;
+			reg = <0x0 0xf9010000 0x0 0x10000>,
+			      <0x0 0xf9020000 0x0 0x20000>,
+			      <0x0 0xf9040000 0x0 0x20000>,
+			      <0x0 0xf9060000 0x0 0x20000>;
+			interrupt-controller;
+			interrupt-parent = <&gic>;
+			interrupts = <1 9 0xf04>;
+		};
+
 		/* LPDDMA default allows only secured access. inorder to enable
 		 * These dma channels, Users should ensure that these dma
 		 * Channels are allowed for non secure access.
-- 
2.29.2

