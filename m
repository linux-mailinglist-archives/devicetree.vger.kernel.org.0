Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88D28759462
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 13:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbjGSLhn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 07:37:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230327AbjGSLhj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 07:37:39 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D0A1FFD
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 04:37:13 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-666ed230c81so6803230b3a.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 04:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1689766631; x=1690371431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1z3imD2XbbYDd6VSbUkFEY8FOTIJ1YRTYJOPWV0s530=;
        b=fUfLvcG3vH54NIWAMiN74LkuNau5ETz9NqCyVq6ETEUHLXfbo+b3r7geBNflqlb+Vv
         t9qHOUw1r49bV9wJkSJZ5bvc8AERc90co+ltIPin3Eh1RLNPam30rf8H24SdgadDrgtD
         5R73oExEaQkmAGpgxG33zMYHMwaHHeRwDkaWyh5Llj9YIOaKE9jc0TnJ50oGuQ1S1MU3
         OnwoAYwyrZwVMtPFPhcJGNAHfVWYmIpRdBqR2d0FPVFZoQ9Ewg0IPTSSYqY2XXNIZZoT
         K88c5xlL9or9I2wDVGcqcs2X1BIgHBoIFZQGZ4keVuvQZ7WVTaVH9AAQrqqk5yayGIEA
         k3Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689766631; x=1690371431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1z3imD2XbbYDd6VSbUkFEY8FOTIJ1YRTYJOPWV0s530=;
        b=Ae06+fIZJkqrw1RQg0WthgjCgJTD9xj9F6MIow3vTHCBV/tN89vAsjVknvQgvgSDlp
         MdFZl4A8zNRCmMJHYc29w49+fnAXoUvYivGW4cgeNWJbjHJjKJYnb0DsSUtKmxPB5ZjZ
         P2Q97idanJ6kBkpT6ie8ArHIaVM/dfqi0h4SHtYE+wOGgUyc/GPU5zCUTJuFFGXd9RzF
         9QGsTsbXV36//bGEFMYWBw7OS8zDXMdq9Lv7v9t0tO/dAkPjSPAlQ/DzhE+akHa3GDyW
         UIertI06gX9iyTSNxVEYHAGSBv7zMHes783NUoWJnRU+w5otQkhjhjYSqyxpTk73kRmo
         UjZw==
X-Gm-Message-State: ABy/qLaSB5oGdwzGzlH1jv4ygW3L0M+13BkS5Z8aVW3JAfvOFe6lGlF0
        NItQhG81j8Vl781PSG9uQoG7Lg==
X-Google-Smtp-Source: APBJJlHb++7vjyRXEyeunDkFGfTLlu5xk3V4zcn75am1kfRS/AnyVeeK3Rkrh/q5SMNbQrMY+8AL4Q==
X-Received: by 2002:a05:6a20:8424:b0:130:6b27:729f with SMTP id c36-20020a056a20842400b001306b27729fmr2966252pzd.3.1689766631349;
        Wed, 19 Jul 2023 04:37:11 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.130])
        by smtp.gmail.com with ESMTPSA id j10-20020aa783ca000000b00669c99d05fasm3050408pfn.150.2023.07.19.04.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 04:37:10 -0700 (PDT)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v6 14/14] MAINTAINERS: Add entry for RISC-V AIA drivers
Date:   Wed, 19 Jul 2023 17:05:42 +0530
Message-Id: <20230719113542.2293295-15-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230719113542.2293295-1-apatel@ventanamicro.com>
References: <20230719113542.2293295-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add myself as maintainer for RISC-V AIA drivers including the
RISC-V INTC driver which supports both AIA and non-AIA platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index aee340630eca..ef7af65441a1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18256,6 +18256,20 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
+RISC-V AIA DRIVERS
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+F:	drivers/irqchip/irq-riscv-aplic-*.c
+F:	drivers/irqchip/irq-riscv-aplic-*.h
+F:	drivers/irqchip/irq-riscv-imsic-*.c
+F:	drivers/irqchip/irq-riscv-imsic-*.h
+F:	drivers/irqchip/irq-riscv-intc.c
+F:	include/linux/irqchip/riscv-aplic.h
+F:	include/linux/irqchip/riscv-imsic.h
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.34.1

