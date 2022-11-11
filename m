Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3260D6252C7
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 05:45:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230055AbiKKEpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 23:45:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233009AbiKKEnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 23:43:53 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9479210FF5
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 20:43:28 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-13d9a3bb27aso4344845fac.11
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 20:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDVYSk98Pqd4HV62BK0V8wp4iYN5PuAbyZ/qltqpGfw=;
        b=pGEC0adh/z21JLXfroQVWPiQB8qRzyeAxJTc67/f0F5iN0Gh1pmhQVFtbzFwJxzq7x
         lw8v5HEnkpA7f+MR2HfUCUo0goJIZbF9HPhj81RhS6pDv3UXQAmn8ihltl/h+LZTehtO
         f4zpyWcf044SFzNCrxEANZyXaShWJhsj+AKkyr2lWAJbatFc+uFES+OQRitG30+FGkDn
         iwKUN7PkaEG+/vjEYYaE+Q7HS+hM9CH+akvSrXi+ofXrGHz8WqfnFkeCPG/IHSkDIm+v
         YR5y2mBsJQDRRgkRX0/IeOQS8/rrdgZDjrDBJOp1rSz5gnPhcn1IHlyj3DvJdQsoJ3NT
         Iuxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDVYSk98Pqd4HV62BK0V8wp4iYN5PuAbyZ/qltqpGfw=;
        b=qzYvBCWGb1DZoHneMNiaD15Z0kBfK8ETzc8BkKMXJ2rfZ/5PzHFL699REP4hb3/9UQ
         t3LW9QN7HturqjDQ2nPUlLMA0TOp2CMHfnZKZCoak7n3kccD4lF/eD5Dwp1CJyd0s8vE
         s2qDs/MpPRvrXO4CbqBTI/hzchASN/vO8wjKPYWpeVAl0fTielx4NBxlLWHBwdQ+Y+Ac
         Ow7GKlEdcXW8SIE5Zy0cZDUEoJ8Ot7KHQjUpiIMkdNLL7um/3mzbKQLEjIhecktrHoxW
         gG4Qy50J9+vSeQLBqx5RehJsigjm8XEa42oMQE6pxFUoz85QbBCloSPmAHMQ5lvfKLUY
         eFWQ==
X-Gm-Message-State: ACrzQf2OYE0EWAcy1IRJLaCT8R9En50/ST9zs0UKb8neLJ5lfNBuoyTK
        mZmAcTocB4Ndd1DVeJ7bd9M1Jw==
X-Google-Smtp-Source: AMsMyM5DWhoIHaszP8oZY6DWjTMwKD/Z6A3foCxphzY9FvQRpztlhXmyAzSAR2vBEk3VKni732ZP7w==
X-Received: by 2002:a05:6870:1f0d:b0:132:7d3c:745b with SMTP id pd13-20020a0568701f0d00b001327d3c745bmr2895855oab.180.1668141807875;
        Thu, 10 Nov 2022 20:43:27 -0800 (PST)
Received: from anup-ubuntu64-vm.. ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id k14-20020a056870350e00b0013d9bd4ad2esm787353oah.12.2022.11.10.20.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 20:43:27 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH 8/9] RISC-V: Select APLIC and IMSIC drivers for QEMU virt machine
Date:   Fri, 11 Nov 2022 10:12:06 +0530
Message-Id: <20221111044207.1478350-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221111044207.1478350-1-apatel@ventanamicro.com>
References: <20221111044207.1478350-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QEMU virt machine supports APLIC and IMSIC emulation so let's
select APLIC and IMSIC drivers from SOC_VIRT kconfig option.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/Kconfig.socs | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 69774bb362d6..c16b32eeadff 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -35,6 +35,8 @@ config SOC_VIRT
 	select GOLDFISH
 	select RTC_DRV_GOLDFISH if RTC_CLASS
 	select SIFIVE_PLIC
+	select RISCV_APLIC
+	select RISCV_IMSIC
 	select PM_GENERIC_DOMAINS if PM
 	select PM_GENERIC_DOMAINS_OF if PM && OF
 	select RISCV_SBI_CPUIDLE if CPU_IDLE && RISCV_SBI
-- 
2.34.1

