Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA67872E759
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 17:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241239AbjFMPgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 11:36:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243015AbjFMPgj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 11:36:39 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B5A01FE8
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 08:36:01 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-39ca0c2970aso3101842b6e.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 08:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686670542; x=1689262542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2Xd9VrBwLbHtLKIQskpVMxqXuUIvC51FdoSD93zF58=;
        b=eoDG88MPohQdD8mTy13OLdX2W8nk3lkOY7N/bPjxNBYi0Vv3N8OVnfd0FU/nsMIMgl
         SsXoSqpVhq1E1lHktImYF6Ehvf6+LfsX8r6QWsdCWYRsaj+2kssVdlR4E75yiArARoFg
         VGPCHUGwSy7HUO3GHtnxBWwPoJx1RDH73dD1JWRZ4N4cifO4f3bDmNZ9aZrlm+mpA0pq
         GaFzQyLnUrf3j3rtMEjbzkGSRXFzWB/rI+GCfKBoPjbsC5mbpHv9ulNqZ/BxZEM3NSgy
         LUrS+4dmRel9oWXxqXUcrEGWFBMZOhtLij2yXuQovR7xCUgw+kubX5ePh/gS4vnvwEIC
         LmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686670542; x=1689262542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2Xd9VrBwLbHtLKIQskpVMxqXuUIvC51FdoSD93zF58=;
        b=eRTvGrQ0EAZdEUPpyXrZ3py0Phe5Lq3zrThnNKx4A2OcwcvzL8BKVQovktQUXuAm/H
         vK15TjJlisVke7SUmIPGUs8FHxEKdBovaSkxOIkGKy2bT+Vt+jOqWpqViA6+N6MwiM5A
         bwCh6qUmJa8hzWOjJfkc4BIEEP07776/SdPCv7VAdGjdff/VZJ192MMl5+2x3W2NMSxd
         Eqa1/Ve0t2MgWMETMYwMo/oHT+03hUzs5sWz6AU3YZ0xVZEVg3CZ915dsZcqEG8PbWvG
         Sgs6IVH3QKDxz5ulSznYqoFk4bEgFbp0uCNwWQuNaWqvZidgTbSzekp1jayqSABfBwNc
         hvRw==
X-Gm-Message-State: AC+VfDwN/0IekM8aTk8MvbQ6KGbKfK8h/vw1aIAUkWeHpr2JVpn7vrvq
        OKlhr704ZR683HP+PC9AubF1Zw==
X-Google-Smtp-Source: ACHHUZ4fGN6+pLsSEZtbSZN+RvQPBaMKXCh9QusFq41gaS7bI9BEqNW3PdifLeNjp8b1Uwl6EKWtOA==
X-Received: by 2002:a05:6808:1448:b0:399:169:75d8 with SMTP id x8-20020a056808144800b00399016975d8mr9406572oiv.35.1686670542358;
        Tue, 13 Jun 2023 08:35:42 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n2-20020acabd02000000b0039ce305ea4fsm1630807oif.14.2023.06.13.08.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 08:35:42 -0700 (PDT)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Conor Dooley <conor@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, iommu@lists.linux.dev,
        Anup Patel <apatel@ventanamicro.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 09/10] RISC-V: Select APLIC and IMSIC drivers
Date:   Tue, 13 Jun 2023 21:04:14 +0530
Message-Id: <20230613153415.350528-10-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613153415.350528-1-apatel@ventanamicro.com>
References: <20230613153415.350528-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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
index ff37d8ebe989..19233d59be37 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -136,6 +136,8 @@ config RISCV
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

