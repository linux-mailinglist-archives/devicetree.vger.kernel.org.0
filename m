Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B59C45B94D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 12:48:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727220AbfGAKsK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 06:48:10 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:40629 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727185AbfGAKr1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 06:47:27 -0400
Received: by mail-wr1-f68.google.com with SMTP id p11so13273798wre.7
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 03:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QoklnP0bi5VlneOSfMMO/1j0O/akzR/UGUOVoiR4zJg=;
        b=rYaIP9Z8AFkt6CFzPHllnzifEfoS3M8n6vylLz93bKjw4ukFm0EwmOLEOruJaaMNFV
         THRhW7V96RN3MeWc9jECmk0UnxywaKuuM395kQUTkVkQ91otdIVspn3NAoz1lCVoqQXr
         jIhtpPYC2GNXsA1fk09adtYfVcer1x+/YlVaWcSb4CdXyCtdDZbnHmgXa0tomJtTg6Ml
         JuaCUL3mE4xkgN07UmouRA3Rib1L+P6Sm6QkL6u5UzPEplW7vKFQJhaZKKv9giKCty0Y
         45D/viPJ7aVxT6ZfzTMack7XC03RGwNQUpVGXylbCkr7iBcleCnXyehjG0NYDfvPY+fJ
         b36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QoklnP0bi5VlneOSfMMO/1j0O/akzR/UGUOVoiR4zJg=;
        b=r4ecgG+C0YsiUJMGJ6QdWit2RRRMeFh80WRN3XBSF4r0z2I15UWiRhsfTPSou+Mf0T
         Nm40u6i1PGXNBZ5UivaFVSY8nWZry55uViVP51F4qf3ZWnsHDj/eQdRkfVpt+CaHFdMU
         5zbSDyMKE3hx/OBhT9ar26XNGJE3mXtYol5Y4c+fSswKSO1QZS5IP/h8Bk8JBipoXvA/
         JWg5fw8UlBZ3xOavgf2YrGqxvfE1DT0CSRNA1LR+KqOew0JBxzkVvZ9pli+eLOW8LqkI
         bV9JMYkXDomOBSFVq9xrrIfUPkHZEioCMp1mZjFQozJbc+JDhtHdDQ1nOnpr60qBJ698
         d+Ww==
X-Gm-Message-State: APjAAAUXiNf/4PrxzmstD1KnwrduzYzxxIewHj2+B+ymTlvL6digzjkb
        6VQOKa2JULNTYZWTxZOrQ3iC29TJLRA=
X-Google-Smtp-Source: APXvYqyTP4k0eF1dNYLfLBPz3xOUZqajJ8MktdmUINp3t0MNrFM4AUYuYE5IkIEDgwrBspHaABU2FA==
X-Received: by 2002:a5d:5589:: with SMTP id i9mr9222404wrv.198.1561978045919;
        Mon, 01 Jul 2019 03:47:25 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 01 Jul 2019 03:47:25 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     jbrunet@baylibre.com, khilman@baylibre.com,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RFC 02/11] dt-bindings: power: amlogic, meson-gx-pwrc: Add SM1 bindings
Date:   Mon,  1 Jul 2019 12:46:56 +0200
Message-Id: <20190701104705.18271-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the Amlogic SM1 Power control:
- the VPU power control compatible
- the general-purpose power controller, controlling the USB, PCIe, NNA and
  GE2D power domains.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/power/amlogic,meson-gx-pwrc.txt  | 35 +++++++++++++++++++
 include/dt-bindings/power/meson-sm1-power.h   | 15 ++++++++
 2 files changed, 50 insertions(+)
 create mode 100644 include/dt-bindings/power/meson-sm1-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
index 0fdc3dd1125e..f0a1e20555bf 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
@@ -19,6 +19,7 @@ Required properties:
 - compatible: should be one of the following :
 	- "amlogic,meson-gx-pwrc-vpu" for the Meson GX SoCs
 	- "amlogic,meson-g12a-pwrc-vpu" for the Meson G12A SoCs
+	- "amlogic,meson-sm1-pwrc-vpu" for the Meson SM1 SoCs
 - #power-domain-cells: should be 0
 - amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
 - resets: phandles to the reset lines needed for this power demain sequence
@@ -60,4 +61,38 @@ ao_sysctrl: sys-ctrl@0 {
 	};
 };
 
+General Purpose Power Controller
+--------------------------------
 
+The Amlogic SM1 SoCs embeds a General Purpose Power Controller used
+to control the power domain for, at least, the USB PHYs and PCIe
+peripherals.
+
+
+Device Tree Bindings:
+---------------------
+
+Required properties:
+- compatible: should be one of the following :
+	- "amlogic,meson-sm1-pwrc" for the Meson SM1 SoCs
+- #power-domain-cells: should be 0
+- amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
+
+Parent node should have the following properties :
+- compatible: "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd"
+- reg: base address and size of the AO system control register space.
+
+
+Example:
+-------
+
+ao_sysctrl: sys-ctrl@0 {
+	compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
+	reg =  <0x0 0x0 0x0 0x100>;
+
+	pwrc: power-controller {
+		compatible = "amlogic,meson-sm1-pwrc";
+		#power-domain-cells = <1>;
+		amlogic,hhi-sysctrl = <&hhi>;
+	};
+};
diff --git a/include/dt-bindings/power/meson-sm1-power.h b/include/dt-bindings/power/meson-sm1-power.h
new file mode 100644
index 000000000000..30e17e4a478e
--- /dev/null
+++ b/include/dt-bindings/power/meson-sm1-power.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_SM1_POWER_H
+#define _DT_BINDINGS_MESON_SM1_POWER_H
+
+#define PWRC_SM1_NNA_ID		0
+#define PWRC_SM1_USB_ID		1
+#define PWRC_SM1_PCIE_ID	2
+#define PWRC_SM1_GE2D_ID	3
+
+#endif
-- 
2.21.0

