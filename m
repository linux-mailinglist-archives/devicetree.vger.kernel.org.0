Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 363D8B4774
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2019 08:24:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392490AbfIQGYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Sep 2019 02:24:12 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:41207 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392482AbfIQGYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Sep 2019 02:24:12 -0400
Received: by mail-pl1-f194.google.com with SMTP id t10so1043567plr.8
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2019 23:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
        b=VlcCfH31PMt3ExcsC2X+/sezp4PAAIN5vh85oD9LKcNDNxU/ELwo/z72zixRvnixc0
         ZdVkMvqvZ96CyFBdGNDyQfkdmp6uc6WACA4SL5KtZbU3u16Pljd9Jbel0mp2RqLA95kC
         8rHEW+tvi6OmAqfND6Nw/rOOGk/pEHV2lgYEI+X/aVlA67zIC/iNM9FvVmHvIhGVwUgK
         iZgnLzHh29kUZxFHoRueOtZAoF8LxbvSw25XJ2AzXNF6vAMKk0tgj/zi3QXy/v5FjBdF
         2Vmigu6dMOss3EbiPeQ9IHIVD3JZCbkV5f9ZapvzT+iuvfExoC5yuRjGQsGCGDjoSdI6
         6KCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
        b=j6C1HW6Tg721d1x/h0r2SLo7EhxqgKzTLn1+/zIPBm8gAjsSqSJC0pqYp4IblCyES2
         Jeeind+JyRw3UTw+kFjCr2YlVFI0vsnJ7Spej9k/c90zW5WaX1ouTtR7fbQZFmMkoGTY
         3m3KOw6WTFFrCg4nOs3tnLIPtu+D0tHKSLlXmfPsYBCrZiyW7fme1xfhODtb3gjqyz8l
         raJ0VUAOeaoQzOnA+VsgbbIKJdng5AUrZAqK02YQ6SPX0YOMKCwJBucxmLirl30/iW8i
         yJfx7QN6Jlx1ELDnN6pMM8Cu44k/OQzYRjsjGmPd7zPr5Tf2gZcJNAqyEkerTjLuJPq3
         PBCQ==
X-Gm-Message-State: APjAAAVm68xbfSTn3qqBd3NnubfgHItmJsxgxbtr89D7CQ09UTgnahSU
        a6qqg9+J72/iOj+W67GEvQkg7g==
X-Google-Smtp-Source: APXvYqwLe8dHC49vL+zoSKTIa0C+ovX5FQBv7ioYIkPQEBvBXsr1KFZTQa+ddZ91fZ4imVDjyl687w==
X-Received: by 2002:a17:902:8492:: with SMTP id c18mr2040072plo.279.1568701450621;
        Mon, 16 Sep 2019 23:24:10 -0700 (PDT)
Received: from localhost.localdomain (111-241-124-228.dynamic-ip.hinet.net. [111.241.124.228])
        by smtp.gmail.com with ESMTPSA id m16sm1180463pgb.84.2019.09.16.23.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 23:24:10 -0700 (PDT)
From:   Green Wan <green.wan@sifive.com>
Cc:     linux-hackers@sifive.com, Green Wan <green.wan@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Yash Shah <yash.shah@sifive.com>,
        Bin Meng <bmeng.cn@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
Date:   Tue, 17 Sep 2019 14:23:45 +0800
Message-Id: <20190917062350.825-1-green.wan@sifive.com>
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

