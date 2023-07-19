Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69D1075945F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 13:37:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbjGSLhk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 07:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230305AbjGSLhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 07:37:34 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B851FEA
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 04:37:08 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-668711086f4so498855b3a.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 04:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1689766626; x=1690371426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nImulFWj8VTnTfSKoHJB+uK3WiURTzzmP3Vx/VbcYKk=;
        b=MYnW39H5T5MAnd6loiSEn0tRROoamcE6xLYknujrcnT+M8a+JKJOLZElKjAn8InILy
         vipI9UCcxwbEIfLv9yrVl9UqjLN9sHecxgUc1tEpyfamMLJuinSCm+QTiSDl4T2qCP5v
         vxCV7InaJRCnaJgFnBTF2f2HwYzLSLQNa6Z4qOrsvT1+TrKvjbk852zE1FxAvzjz90J5
         NLgvM0YXRoiAomtp70GyPxqNJLbdq0gqE+F5qD3MihEkx0GacbzocmeDb6XzV+mVWk8Z
         VB01PJDcjO7PKW927SPgmeUok7fRW1CwrkEpKsAtKPt/oUf/IwZrTl3TLEKF6CWDVzUz
         RnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689766626; x=1690371426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nImulFWj8VTnTfSKoHJB+uK3WiURTzzmP3Vx/VbcYKk=;
        b=N2wUxgcnr05FCX42/CHTmWB5Tuq8ULdWYIYkbSeZFwZ3ZEowXIXEaoW1aZf+wf13qw
         Wll+UyyQX8ssBCSlFGdFR9oZqnuxwaAg63c1WWtz849Foj/OlQ8hgGHL/UM8PQEMyJCr
         FcHjfw3y0nT/RTToVB9hvl0hYiv3f0ZvkrhaxzLBl/hdAIrr0RQ01eCLfPkZX3MFardn
         V2uYl2YF7GBiO1XxG7wkTPMAOMTnYHm+654Yq3h8AW3XluSHQ7LvEjuLanyp8S+CgNee
         18OXCiPGRHaAWgs4L6S/NJhlb+BBnA0ICHDhNGDx+vLgoxsWYTSnpaGPKnB7f3zufn2y
         T6Sw==
X-Gm-Message-State: ABy/qLbP0ch+PE8xjsfubxKFookEERhP2ydsGJWA3W6Z+bFEa1B2mDd0
        jEvJRaKCda4dEj3kAuydFQHZhg==
X-Google-Smtp-Source: APBJJlFOlkC6B+60bXcstYJiNUwp0bmn2Q55eSYxxeCswWeD/2SHraTfZTbvxmPCTf/1Hq5O1mbTYQ==
X-Received: by 2002:a05:6a00:1952:b0:682:ffaa:ebba with SMTP id s18-20020a056a00195200b00682ffaaebbamr2203991pfk.13.1689766625931;
        Wed, 19 Jul 2023 04:37:05 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.130])
        by smtp.gmail.com with ESMTPSA id j10-20020aa783ca000000b00669c99d05fasm3050408pfn.150.2023.07.19.04.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 04:37:05 -0700 (PDT)
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
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 13/14] RISC-V: Select APLIC and IMSIC drivers
Date:   Wed, 19 Jul 2023 17:05:41 +0530
Message-Id: <20230719113542.2293295-14-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230719113542.2293295-1-apatel@ventanamicro.com>
References: <20230719113542.2293295-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QEMU virt machine supports AIA emulation and we also have
quite a few RISC-V platforms with AIA support under development
so let us select APLIC and IMSIC drivers for all RISC-V platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 4c07b9189c86..318f62a0a187 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -148,6 +148,8 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_ALTERNATIVE if !XIP_KERNEL
+	select RISCV_APLIC
+	select RISCV_IMSIC
 	select RISCV_INTC
 	select RISCV_TIMER if RISCV_SBI
 	select SIFIVE_PLIC
-- 
2.34.1

