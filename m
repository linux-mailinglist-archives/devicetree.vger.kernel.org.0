Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D28B72E75D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 17:37:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239829AbjFMPgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 11:36:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239816AbjFMPgm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 11:36:42 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 645CF2102
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 08:36:09 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-38c35975545so3607652b6e.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 08:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686670550; x=1689262550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YjPmtbt5dpp3nV1ppkSLOwXIjTqZCsmy4toORZe/818=;
        b=Swu4hszULQzPuPzBt7iqf7LrNn3pbjBkMCsVSv0eHYkgdWXz+ssLl7XTId4Nr5rzC+
         8a3/nOLQ58HBh1itV5d3Zm1Q5o/F/sG56/XMn/lM7XnGldDZFhvJaLBGVX3ct4r9PaUq
         5xO2UMfIQ8LB3/+IweLxBeFM5jNSHy8V6LJ2QcsPHefylqBWPP/Fg76wn8cuwCSZoYE0
         Hn3w6RKopilic4uboB8qNvybBC/uHDgpVqXXH5WZGqI4sWPZATWZqmo2PQA7vdOSKVnH
         ZyKKq+H3CDcbycD+IazyO/GnO4bAGuQlmH8rMA4VeTT5U46wMBVBwupa7M1pKv9PNj6p
         5Abg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686670550; x=1689262550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YjPmtbt5dpp3nV1ppkSLOwXIjTqZCsmy4toORZe/818=;
        b=IxPeP8HnX7zfAxhL2rsBACPm5WwfXFFHWnK3RPXLOMhtJN35jkSU590vzjyw3aasyn
         561KPrFnRRNDxnOnyxfNT7Ju8ylT2RdQAMUYG8q3vmqPsVaG99SDzgolvC7qcFNjMNXo
         Stp7l0aOhb6Z7C7RcRXg/8FUeq1vCDgPwbpAY8X9LaDO1skK64mbbpMoiecpeSi2rsfw
         EKyrspEcTQ2sXCUH0t+q4a6T+N3FOjb1BJIvP0MC6++NUAMdItFCiS5M55N6uYrwdQ68
         7BMxWDlp4sq0Sd1fAKknZnJ8oaWaL31myfxfWLgy/+faMc5EB8ZREox3sKHKkKlQaQlF
         oWeg==
X-Gm-Message-State: AC+VfDyzLk1JA3mW6YvlIaskNNTwxS37nSlYph+zgU0qJWREtb+sCoH/
        un/KyIOmiJSYvWvpFPT74zHfrQ==
X-Google-Smtp-Source: ACHHUZ7Tg1xp84o5UNsIGFouFyCklTip/xPfGoAYw3cqzXxDnJEowsGdk1gdK+IhU0wBCwPu3ab6ww==
X-Received: by 2002:a54:408e:0:b0:38e:d739:6f3f with SMTP id i14-20020a54408e000000b0038ed7396f3fmr6723088oii.56.1686670549823;
        Tue, 13 Jun 2023 08:35:49 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n2-20020acabd02000000b0039ce305ea4fsm1630807oif.14.2023.06.13.08.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 08:35:49 -0700 (PDT)
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
        Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v4 10/10] MAINTAINERS: Add entry for RISC-V AIA drivers
Date:   Tue, 13 Jun 2023 21:04:15 +0530
Message-Id: <20230613153415.350528-11-apatel@ventanamicro.com>
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

Add myself as maintainer for RISC-V AIA drivers including the
RISC-V INTC driver which supports both AIA and non-AIA platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 51da90e60004..2d474eb902fa 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18136,6 +18136,18 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
+RISC-V AIA DRIVERS
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+F:	drivers/irqchip/irq-riscv-aplic.c
+F:	drivers/irqchip/irq-riscv-imsic.c
+F:	drivers/irqchip/irq-riscv-intc.c
+F:	include/linux/irqchip/riscv-aplic.h
+F:	include/linux/irqchip/riscv-imsic.h
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.34.1

