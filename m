Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E84549C905
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 12:46:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240978AbiAZLqG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 06:46:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240952AbiAZLqF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 06:46:05 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F37FCC061748
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 03:46:04 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id c9so22153511plg.11
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 03:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qlm9yJ5575SFpR6IPywQKZmVoP3waSVFMhfeayBNTbA=;
        b=NxPkbSYmWFaN95PyEIyPwgodGezgxN3X9MixZlR066DnPRYP1cobNH9jAB0s36cd6Q
         ySyqYaENca2IZRgGQsDbpuJFvsHU6cJdWGNL1curR2mCiF8abcRZQmPiQzg/zhsMQ5JJ
         QNzC6lLAd3RwZnM+Jc1hmNjgk7ltV6+5WXz6vpdS9M41r9UxCnPIRDujIbXdLnDT1Brv
         XGJniw06BlrVTKgOvTCCvzeU9yuE7ayYWiVJn3FRJs7KZJ7M0NtnU5zARFaFfXGrWMwM
         DyggnPkk1X3mse6C96lNLVMsMReVj905raBJcjodRFOJ9LmxzzryAcFoB1vnmSUEoQ/Q
         6t1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qlm9yJ5575SFpR6IPywQKZmVoP3waSVFMhfeayBNTbA=;
        b=mT8Y3anvPj9+LXUTUq8LuhofD4PItwzvREcrG0659glxBdZdpzx65Fqg25LDswPwM6
         tQEMh6mfg56KUsLIVrVrmaX3KQLDgEdnfg97C/guQNWqPY5qb+k/+V6/WHLHmBAz74Vh
         YhJX+C4igBU660yc4+V68jgQ6pZ0/tKDaOGpgKBtChZ+gUWtPYNJB8MfK4fnTDAEHY3/
         HcvBymQ5AxPEaoajn266V8e3uIaqZacHBvkGIjvgoCm/B8C4kbFRc8Ab8Nw2F0bsumhu
         SJFFz79edk2+fUkaXfrWNy1hPvEaVAJlENew2JR211V6j65QmmjcqvMS3k2Xhl1NJmZ+
         R6bg==
X-Gm-Message-State: AOAM532igq456SBy8L+I7agC57yJUfR+7W748FvPMauGmiDcUi1bTs9e
        4/l+XIIbDpHBBqnakRQDxnI60g==
X-Google-Smtp-Source: ABdhPJx9kXQfLSUsJYLbLoE3i5jlnsAyM6/6+KfwVUFH8RIATnnVjIb0WUzj8hEixBetgKmmLHf28A==
X-Received: by 2002:a17:902:8c97:b0:14a:ec66:bbb0 with SMTP id t23-20020a1709028c9700b0014aec66bbb0mr22332418plo.68.1643197564511;
        Wed, 26 Jan 2022 03:46:04 -0800 (PST)
Received: from localhost.localdomain ([122.167.221.23])
        by smtp.gmail.com with ESMTPSA id nn2sm2994976pjb.35.2022.01.26.03.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 03:46:04 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>
Cc:     Sandeep Tripathy <milun.tripathy@gmail.com>,
        Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Liush <liush@allwinnertech.com>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kvm-riscv@lists.infradead.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v10 8/8] RISC-V: Enable RISC-V SBI CPU Idle driver for QEMU virt machine
Date:   Wed, 26 Jan 2022 17:14:52 +0530
Message-Id: <20220126114452.692512-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126114452.692512-1-apatel@ventanamicro.com>
References: <20220126114452.692512-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Anup Patel <anup.patel@wdc.com>

We enable RISC-V SBI CPU Idle driver for QEMU virt machine to test
SBI HSM Supend on QEMU.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/Kconfig.socs           | 3 +++
 arch/riscv/configs/defconfig      | 1 +
 arch/riscv/configs/rv32_defconfig | 1 +
 3 files changed, 5 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 6ec44a22278a..f4097a815201 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -36,6 +36,9 @@ config SOC_VIRT
 	select GOLDFISH
 	select RTC_DRV_GOLDFISH if RTC_CLASS
 	select SIFIVE_PLIC
+	select PM_GENERIC_DOMAINS if PM
+	select PM_GENERIC_DOMAINS_OF if PM && OF
+	select RISCV_SBI_CPUIDLE if CPU_IDLE
 	help
 	  This enables support for QEMU Virt Machine.
 
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index a5e0482a4969..b8c882b70b02 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -20,6 +20,7 @@ CONFIG_SOC_SIFIVE=y
 CONFIG_SOC_VIRT=y
 CONFIG_SMP=y
 CONFIG_HOTPLUG_CPU=y
+CONFIG_PM=y
 CONFIG_CPU_IDLE=y
 CONFIG_VIRTUALIZATION=y
 CONFIG_KVM=m
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index d1b87db54d68..6f9a7c89bff9 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -20,6 +20,7 @@ CONFIG_SOC_VIRT=y
 CONFIG_ARCH_RV32I=y
 CONFIG_SMP=y
 CONFIG_HOTPLUG_CPU=y
+CONFIG_PM=y
 CONFIG_CPU_IDLE=y
 CONFIG_VIRTUALIZATION=y
 CONFIG_KVM=m
-- 
2.25.1

