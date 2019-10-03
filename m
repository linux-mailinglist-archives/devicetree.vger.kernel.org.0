Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C341FC9A7C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 11:11:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728987AbfJCJLo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 05:11:44 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:36609 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728898AbfJCJLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 05:11:44 -0400
Received: by mail-pf1-f194.google.com with SMTP id y22so1344465pfr.3
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2019 02:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
        b=HevAsWDE6tXESZ9hB7hMYosi2iHWTimzOkScFHEuxoXTl84XIQ5++hedBU/szRIUs4
         5K0/8v3y/Mm6iaanxiKp7R5+6Q18lxPysvqdsnDWLz0cNktbaXlqgR7Ssj6epHcomdyU
         N2x7vEKLpgs6L2TD8278HRm5aKqYfNqPF2LGocfmVzcwJ6qyYcZ3y1UwposELXIqJNwB
         OQEB5abpYTFkpxU7HjiV2WC2C9UqSU4ZvifIk5uhf/wix9RjzRw4mIQJXmyvqyD8uzxE
         dBqqHJsYJlLH8/tu1hNb98Pk+cCp1vy67RxpK6aQi5dp7Wj+rKNbjzxaxNI6Cj/UgRQt
         Ji7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
        b=Opav0hOQMOKU2UoaqxVu5mfyBDQXlE839QwDYzOKHVI367KlMQcXuKQgUVRv37bh1c
         3jlwPmUNm5HRp7yIOZM9QjbdfcBC6wNhpCGZ/5QYmh+aoDhu6FbkAqYCcFPI7cQbKJUt
         4ThqfurZEZ5yAmcS5T5S2P/y4Xp4KAPffCL39otuboBOseywGzKS4kcvhVhTAQfxQk++
         k8V2n/4CdyOxs1fIM2BXGEAwXjF6i/Ne0swm/R98a2DtDlGDpgNWXEzelXe8WRozmLDI
         OY7UgyzV0KbTcdtL7IgDOW/LfEPYW3wALmPqTYYOgzHj1jjUoUkSUlPv84GykS6dcAMG
         9ajw==
X-Gm-Message-State: APjAAAWAbVxL5e+mMtl5KKXkV6tnwFrXSNv3imXf3F4ew6c+zmg0DX5Y
        Q2KymGJffYhw/iWiKgNxT/79qg==
X-Google-Smtp-Source: APXvYqxrCv3/XjbGCRMQu4OSNS6gWuL2ba4etoKU2ncw9nGMLIQGNAdka15S83LHd2E6DsXVjzXYSQ==
X-Received: by 2002:a62:b606:: with SMTP id j6mr10297239pff.254.1570093903662;
        Thu, 03 Oct 2019 02:11:43 -0700 (PDT)
Received: from localhost.localdomain (111-241-164-136.dynamic-ip.hinet.net. [111.241.164.136])
        by smtp.gmail.com with ESMTPSA id f128sm3445422pfg.143.2019.10.03.02.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2019 02:11:43 -0700 (PDT)
From:   Green Wan <green.wan@sifive.com>
To:     linux-hackers@sifive.com
Cc:     Green Wan <green.wan@sifive.com>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Dan Williams <dan.j.williams@intel.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        "Paul E. McKenney" <paulmck@linux.ibm.com>,
        Yash Shah <yash.shah@sifive.com>,
        Bin Meng <bmeng.cn@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
Date:   Thu,  3 Oct 2019 17:09:02 +0800
Message-Id: <20191003090945.29210-3-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003090945.29210-1-green.wan@sifive.com>
References: <20191003090945.29210-1-green.wan@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PDMA support to (arch/riscv/boot/dts/sifive/fu540-c000.dtsi)

Signed-off-by: Green Wan <green.wan@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index afa43c7ea369..70a1891e7cd0 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -162,6 +162,13 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			status = "disabled";
 		};
+		dma: dma@3000000 {
+			compatible = "sifive,fu540-c000-pdma";
+			reg = <0x0 0x3000000 0x0 0x8000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <23 24 25 26 27 28 29 30>;
+			#dma-cells = <1>;
+		};
 		uart1: serial@10011000 {
 			compatible = "sifive,fu540-c000-uart", "sifive,uart0";
 			reg = <0x0 0x10011000 0x0 0x1000>;
-- 
2.17.1

