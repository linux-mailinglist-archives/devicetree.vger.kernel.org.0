Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6FDAB8D57
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2019 11:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405234AbfITJBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 05:01:15 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:32973 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404617AbfITJBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 05:01:15 -0400
Received: by mail-pf1-f194.google.com with SMTP id q10so4105110pfl.0
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 02:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
        b=geMkPK++2NxPNSnmpOGduupMKkufm5T/M8nF6PuFXqeKFmKvmO7SOx7AiRg29Sh+Zw
         bE2+b61XguyAIPhtLuevPhdQKHkD0gnpcGCIDr/5VxjVn0qwfkzRS8oeJsSweMfubOUI
         51Ae42I3YIyHj+67hhcgBTRlO7VNB0ZvhYlCPZ8eyqgn4pheo7whsoqsyFoGGRNl+zEk
         1RJLi0FTXVKI4nis8ZBUUSa8eaj0rAe/B9ZwnkO+NdAvM+u4qGYvbVZvcG/ZnLdclCJJ
         Tml4zUga1fLcwzb0f2bpvXYwYgvvUYTZ0xK9yfWXZkd5coVE6b8lyATEjjv6GF+5SJ1H
         zSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
        b=gdUZkMQgzWYGyeKbGYSqRFWnOTDJDJsBfBEyLZ2QSqSObZLr6SGFoXV6woYeAsVfqp
         bgbhnfmeBHBuSCmMpNafvvmN5pHjwSakM72QPxY64L/VcI1b7D4leftX3c8hcWu/5MeL
         EoFuSzuX5XZAG3FfJX7+Xs657w7wsFQ+Pd3RQZ7gSuPHTvGTKp3HuJ6ZgzPGXQFvifi2
         OCxVJCmf7ccWX/Bi3j/+fdsknKKrhZ10lbPC7jYhhWHK8T0TC2nww1whYpigMhh1A7wB
         rmYvH8Mm5tdSyAKLsapYevtAwcKghCEYptIzF7HBrMcsu63g2cnP4Zl/Dz/gMUgXpMuo
         1+FQ==
X-Gm-Message-State: APjAAAVLTHwFtFytcbL2uVfWV3J6futc2ov6/e0QtuHHV0TWq1oJ0GjB
        OGjQF3JReyAoJHNb9fcI/ftYnA==
X-Google-Smtp-Source: APXvYqzP1roOJQzoODru6z/0qnw5j0kK1cdX/zA1pBREoXB8IBmgLBubBqrD44a8WKXdzYy5S8wYZQ==
X-Received: by 2002:a62:583:: with SMTP id 125mr16746466pff.69.1568970074846;
        Fri, 20 Sep 2019 02:01:14 -0700 (PDT)
Received: from localhost.localdomain (36-228-113-219.dynamic-ip.hinet.net. [36.228.113.219])
        by smtp.gmail.com with ESMTPSA id q30sm1645425pja.18.2019.09.20.02.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2019 02:01:14 -0700 (PDT)
From:   Green Wan <green.wan@sifive.com>
Cc:     linux-hackers@sifive.com, Green Wan <green.wan@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Bin Meng <bmeng.cn@gmail.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
Date:   Fri, 20 Sep 2019 17:01:00 +0800
Message-Id: <20190920090105.19496-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
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
index 42b5ec223100..d3030d7fb45c 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -164,6 +164,13 @@
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

