Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 985D04E058
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 08:10:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726210AbfFUGKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 02:10:49 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:34179 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726198AbfFUGKt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 02:10:49 -0400
Received: by mail-pl1-f196.google.com with SMTP id i2so2471522plt.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 23:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xzioaCMOpZ9xQIhn8ZgZe3ezoCoNBuqDVW6enXrUWdI=;
        b=ctO7hOIdc1bJes6IfW+jMC3YvFiVSz45t+/wcP7nl8TQnixOumEuakVUduy54+D7vJ
         IdmjNUS/kNTfK7m3QaYMos3dbKCZRVWTfrJFCalZJNsrO1H1o/F7taY9HeBHZRisbRgf
         NjO/pdbW9rE9yRbiBiXHxrhud2JsVcugAKH+sg89svmnAcKH7fuQ0977VQ8x1qNV3YbE
         QthTsJiP1TuuIINMBQ3GV/EHrVuRwMj7SiMzRwunaN33CqyeO7qPgc4hmRVnbIFXtyop
         jL+FJiNe7n3XdJTacXjginoA/dKAYtF0soKm0PxiGhj2m7/NHDZNIXnV7rrH0Aosw6a0
         ZcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xzioaCMOpZ9xQIhn8ZgZe3ezoCoNBuqDVW6enXrUWdI=;
        b=dBtKyEPeIu/xSUOcapDwoCFYPq8WWRnJx5mC5qQ1d+PGbJaQmTXYCF4tBEcydbZKV+
         Rmt7ZRFJvoGvmXJ4VBtllvRDnEyqliq1SUMWeBfMfA0e+aowjVwVz+LniMJoT9JDqrbi
         F9Cc7OaipMOAQF5JmOAPZHtYC1fhmpFDsHzVV+sA4a+hJqDinQ98J+2mPBp3IBOTeWnZ
         iT5SZ3AH3zqsFQVI+JHci+QQbRoHyMpJniRQ6lOdaSnMlQ1jYSPwxRHKY7FXJWtSF2P7
         YblRBhRD4oIvKYPFfhQXNaJp7/skfkhDR1zxUIcNzofyVI7qXdDAe5Eqo9DKIbKA6SkC
         TL7Q==
X-Gm-Message-State: APjAAAWxnS7TMOlbsQx+ZhKU58ufku+CfuyAqgJV/B6ebRiKXqK6t03c
        wcrUOmkPihkdW7bOD+LNXb9Ibg==
X-Google-Smtp-Source: APXvYqwNG2i/oMNUPGHebpRlmIa/kWkRWV3Ez3z7eWR9nYZaeTxX5aOLEn6fqpOIvgHIP0ZnhK13+w==
X-Received: by 2002:a17:902:b611:: with SMTP id b17mr77686806pls.261.1561097448592;
        Thu, 20 Jun 2019 23:10:48 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id x17sm1450053pgk.72.2019.06.20.23.10.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 20 Jun 2019 23:10:47 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver
Date:   Fri, 21 Jun 2019 11:40:22 +0530
Message-Id: <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4e8fbde..584e737 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -225,5 +225,25 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+		eth0: ethernet@10090000 {
+			compatible = "sifive,fu540-macb";
+			interrupt-parent = <&plic0>;
+			interrupts = <53>;
+			reg = <0x0 0x10090000 0x0 0x2000
+			       0x0 0x100a0000 0x0 0x1000>;
+			reg-names = "control";
+			local-mac-address = [00 00 00 00 00 00];
+			phy-mode = "gmii";
+			phy-handle = <&phy1>;
+			clock-names = "pclk", "hclk";
+			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
+				 <&prci PRCI_CLK_GEMGXLPLL>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			phy1: ethernet-phy@0 {
+				reg = <0>;
+			};
+		};
+
 	};
 };
-- 
1.9.1

