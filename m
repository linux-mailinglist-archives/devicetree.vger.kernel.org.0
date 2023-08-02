Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAAC676D0ED
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 17:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234587AbjHBPDO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 11:03:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234583AbjHBPCi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 11:02:38 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38C283A92
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 08:02:02 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1bbc7b2133fso44217435ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 08:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690988520; x=1691593320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nImulFWj8VTnTfSKoHJB+uK3WiURTzzmP3Vx/VbcYKk=;
        b=HPOjG5OGEEiuG0oXk82hAC75kB6TCWujhaeIqxUyqgHOK9Q7mr6UWYQCuJw9m9+0WL
         HleCLprhGlPb+BU5NV15PlqbrnORe+aVO1luFT0PhTPHjv190dfxD15roks59kwgk4xV
         ctDESQ+goX+b0gAR3pv3o4pBZ5shGZIOTP8bP/lYyBbMEP/5SUhaObMMDl90GKcZA+ak
         blIFMW56L9s84HvPxsxpXI7MzzmmcymZNUVMVLOYyqrkVNu3HfCO5kkFVedwRs3ciaM+
         a0HyxIk9VmJQZRHVrm203B0+tkDff758/vc+23YJB3uuc1Go9fHiqb0QIE82lMXOTPnP
         qXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690988520; x=1691593320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nImulFWj8VTnTfSKoHJB+uK3WiURTzzmP3Vx/VbcYKk=;
        b=I0Yziv7ULT2I1oTHOXIBT6qk0kfEv4RIViddP8KxWCIU0lA3Exgmm8YL8uGmZ3d6Es
         XzksA8SFoRXxqqu6yFlRw9Jj6GHSYLRV8NoidXSRBNDfIpw7FNFye24+P241sMbVwXYE
         Wu2eVFz2ONvxQ7mRMf85ow4WM5+V4gmkfG+K9aYcA7N1dlK3AekFrRFO6kWLvFe9i/qu
         2LLVKJYy3MVv+zZULc/xn0Wn8BNIwgw2FqFnODxsnbcrLn0x/HTdw3QKX6BaExMtSlVR
         xZJ2sI6uW9eJB9NAiASgJdGIaJp0YPMmuWuqG1IJVlucTDNIbh6WCuEodQotIVMDqrXa
         VW+g==
X-Gm-Message-State: ABy/qLY9qXlAAngxR8Hak8DvZbLUCEeZLJ1Or4TWwWwPnU7XYABq1eoW
        GL8+4i659JlDitRjUeK0xGXk0A==
X-Google-Smtp-Source: APBJJlFykme+yf2L/FDzWboz+PNHF5ksbViTvRVBVq1JdYyI8i5nfMsonxgq1h3vCACtRcGcc1oYZQ==
X-Received: by 2002:a17:902:dac8:b0:1b3:fafd:11c5 with SMTP id q8-20020a170902dac800b001b3fafd11c5mr18601162plx.44.1690988520102;
        Wed, 02 Aug 2023 08:02:00 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id v11-20020a1709028d8b00b001bb99e188fcsm12503963plo.194.2023.08.02.08.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 08:01:59 -0700 (PDT)
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
Subject: [PATCH v7 14/15] RISC-V: Select APLIC and IMSIC drivers
Date:   Wed,  2 Aug 2023 20:30:17 +0530
Message-Id: <20230802150018.327079-15-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230802150018.327079-1-apatel@ventanamicro.com>
References: <20230802150018.327079-1-apatel@ventanamicro.com>
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

