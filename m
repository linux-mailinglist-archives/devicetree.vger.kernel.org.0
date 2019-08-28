Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 308019FD95
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 10:55:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726521AbfH1IzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 04:55:15 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:41122 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726548AbfH1IzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 04:55:14 -0400
Received: by mail-pl1-f194.google.com with SMTP id m9so918166pls.8
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 01:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bHvbfgR0puFODQmQ5oUgG4pJ5KLJ8B+neI77o1rOHwA=;
        b=B6cG3EELu++3gVW/iX0sxgs3TTSaJEg2uVopyXE5Q1XAw29RlBxcUQOYl5xB+yFVpf
         7OH6TruTeJv+XckLXbJUffUvN3stwFIl/WNj+LJB0vpQdnTCCDCXxWL2Sgr+nrSnFnoL
         OCXNlCjvTVIT6zHh6y21au0wI304I7nc+94k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bHvbfgR0puFODQmQ5oUgG4pJ5KLJ8B+neI77o1rOHwA=;
        b=hxPTSvE/NinQGrzXCx9quko73lZbjSxKIZ8atOngopMLQ/iwsf0Wgt4f7rSjJ63QmQ
         1KMqHXfMBuBs7ul1CHxpl0FiNTfYJ/pI/k2dJ2K+C/jts4jlBaOn9nnkXGv3zQcjhO2Q
         ibtAYUUkQRrWEnZo4zvcDbOev2pJ+oVEkcphr5YnGZW3SAJBX3/gjA5CyOV/PJ3DTxqU
         fFZy+21c+oTRn2H8m9qW7KaBmh8PkzoAf4rsdxy3+Lil/8CVbwDtQFtnxcoGG7q0o9uL
         6y6MBKcf409DerBN6+mh3fJSaoSrfDAVZx8Z8y283AV1YIwqAv0vfHHTdxoZ0na7KWvo
         MMZw==
X-Gm-Message-State: APjAAAVKbDFNNdQfNrh/p7dSJpI+lRsz8TCau4p8f4Z0H6H+bLOIOzFB
        RewD+URcEM77beIylQlb8sqpKw==
X-Google-Smtp-Source: APXvYqy4RLvpIcLa0QnSesOupyvzYRt8WfODa0jBdGLy/7THR/JXgVAtKRWCSzo4J344VnpKwE7oJw==
X-Received: by 2002:a17:902:4283:: with SMTP id h3mr3350534pld.56.1566982514296;
        Wed, 28 Aug 2019 01:55:14 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
        by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.55.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Aug 2019 01:55:13 -0700 (PDT)
From:   Srinath Mannam <srinath.mannam@broadcom.com>
To:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>
Cc:     bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
        Srinath Mannam <srinath.mannam@broadcom.com>
Subject: [PATCH v2 3/6] arm: dts: Change PCIe INTx mapping for Cygnus
Date:   Wed, 28 Aug 2019 14:24:45 +0530
Message-Id: <1566982488-9673-4-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ray Jui <ray.jui@broadcom.com>

Change the PCIe INTx mapping to model the 4 INTx interrupts in the
IRQ domain of the iProc PCIe controller itself

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 arch/arm/boot/dts/bcm-cygnus.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
index 5f7b465..9d3d9ef 100644
--- a/arch/arm/boot/dts/bcm-cygnus.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
@@ -264,8 +264,11 @@
 			reg = <0x18012000 0x1000>;
 
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0>;
-			interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie0_intc 1>,
+					<0 0 0 2 &pcie0_intc 2>,
+					<0 0 0 3 &pcie0_intc 3>,
+					<0 0 0 4 &pcie0_intc 4>;
 
 			linux,pci-domain = <0>;
 
@@ -292,6 +295,14 @@
 					     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
 			};
+
+			pcie0_intc: interrupt-controller {
+				compatible = "brcm,iproc-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 
 		pcie1: pcie@18013000 {
@@ -299,8 +310,11 @@
 			reg = <0x18013000 0x1000>;
 
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0>;
-			interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie1_intc 1>,
+					<0 0 0 2 &pcie1_intc 2>,
+					<0 0 0 3 &pcie1_intc 3>,
+					<0 0 0 4 &pcie1_intc 4>;
 
 			linux,pci-domain = <1>;
 
@@ -327,6 +341,14 @@
 					     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
 			};
+
+			pcie1_intc: interrupt-controller {
+				compatible = "brcm,iproc-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 
 		dma0: dma@18018000 {
-- 
2.7.4

