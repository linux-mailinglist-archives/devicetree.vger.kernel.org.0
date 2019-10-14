Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8161DD5CD0
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 09:57:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728384AbfJNH5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 03:57:14 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:43748 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726169AbfJNH5O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 03:57:14 -0400
Received: by mail-pf1-f194.google.com with SMTP id a2so9914118pfo.10
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 00:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
        b=NjqIdIP2K4hCyynVyDdY8K51dfc2EaIY442YFIaWPHUTu44snyeWUrzK9EM4T1Ham/
         11XeVIHhBGNvCjovYkXZJnz9VxyxOCgOKdJH+/7t/tD579UzhmvY2IhhPIb5kbwOdNnS
         dxCRzgnXyib7zi0g33B07GAd5bl5b5UIoHvfROTVnem+7JcYQGef7zO8KkE2LtDr+tRV
         kf3U3oh4cmQhyc7x0rVY7mTZ0SW0iHATCkW+tH0aC1G7aVtoP+QO7nAV6xqEi4dz6acx
         uzGKSORkBSz7JSrcn1sg+TlvLUh5Pb2UahCesJC20Fxe8npSTEr4g4if7zrlV4UgA3c7
         7pow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
        b=R0h4+Vy8/FeJaEWIWynNkAP4nsAZvcb/xM4AsCmPPyItxVs9kilR/GG6tFrcngyI8X
         5t2Jd8sIpkWQw2UsaDYt4YuNBTliyI+vNyal1xxEqOCqSWbrW5RVm6WeJrGpKC3VrVxE
         Zui43U3AMn/CN9OxeuGNa0qiO9WtI+28SVew22x3gXyfq+HpgPNvR1d6TBM+FEtHkuBl
         wWs+Qfk5neCYFXW7U9GBduT61YAhxsBxJ2M2uczwtWUJpklrFosQyhHe5yo/yD+8JnPw
         Pb4uWC0hKGIKBTbJyl1YY+m98ARwPiy3fpiI9H0NS2rNZ6Y5BJNbKxwbanjZkeYbhIa3
         ADgg==
X-Gm-Message-State: APjAAAUMq2Dqq5tAzQeiSDOoY4xyOdnPFGCfBhl2DmRYE01uJGPAaEDy
        YFsw7kymzjIj2zJ+vpD6OrGDSw==
X-Google-Smtp-Source: APXvYqwDsINI3qHxWvKQccDgfNIOC9TpH4ZPSDPxY/U3K0D4h4BQcqb1WCzleq0HYwC2jK/G0rCGNg==
X-Received: by 2002:a63:df11:: with SMTP id u17mr19601601pgg.372.1571039833188;
        Mon, 14 Oct 2019 00:57:13 -0700 (PDT)
Received: from localhost.localdomain (111-241-168-233.dynamic-ip.hinet.net. [111.241.168.233])
        by smtp.gmail.com with ESMTPSA id j126sm16583137pfb.186.2019.10.14.00.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 00:57:12 -0700 (PDT)
From:   Green Wan <green.wan@sifive.com>
Cc:     linux-hackers@sifive.com, Green Wan <green.wan@sifive.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Dan Williams <dan.j.williams@intel.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        "Paul E. McKenney" <paulmck@linux.ibm.com>,
        Bin Meng <bmeng.cn@gmail.com>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC v2 2/4] riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
Date:   Mon, 14 Oct 2019 15:54:25 +0800
Message-Id: <20191014075502.15105-3-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191014075502.15105-1-green.wan@sifive.com>
References: <20191014075502.15105-1-green.wan@sifive.com>
To:     unlisted-recipients:; (no To-header on input)
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

