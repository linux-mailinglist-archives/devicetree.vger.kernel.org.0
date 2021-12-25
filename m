Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B47047F254
	for <lists+devicetree@lfdr.de>; Sat, 25 Dec 2021 06:52:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230095AbhLYFrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Dec 2021 00:47:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbhLYFrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Dec 2021 00:47:45 -0500
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B82A6C061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 21:47:44 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id m18so8646213qtk.3
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 21:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gzGDrxyZOUv2+4eFD82inPU+4YJ/HvJmZp3BDWThsJU=;
        b=TslpnrS6WLC/fLdxZRhu/+AwJex/jvZ/fobSXW0t9yBqAYC9pmGhZTZMSuiCLnDWWw
         f4Id4TCIy4o2QGgHc7cxlqWgWeEvD+nc9g4OYQWFn4HtIoZWilF5a71YiGct8liYM7xY
         vYRQK/x1T5ad3LwOU/90x/zVhZTEaRcypapyw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gzGDrxyZOUv2+4eFD82inPU+4YJ/HvJmZp3BDWThsJU=;
        b=yRGs1Dw+YkGA/B+KlWlt54FHXliMxfx26gTZ3n0SCZRg0uMN0cYrhTXSfROSXLNZi2
         nHBOWtdkCbRIl5qtJApEW/pr+s1zydOC2P/etBkcE83OmcT8DYl/qkEFJ+LYiX8fHQR/
         KaDPduYwH+HRXmnwY3szfYhpwX5SA7/hQinO6/hkrIt52I+P0q9S/l2tr8XjKnzGVrP+
         T+VOPkRBdBJ5kyRn4GW8mpdeGLhSeUhLTXqXMrJ/4h3OAe5rEm6RJSvV4WVV10owY8LL
         ZtIei9vEFdhSA4trbsP6JGYOcxhRkFebV34C/OYMLmzCvBdPPSdT54F/8H9hhITY3icw
         WdAA==
X-Gm-Message-State: AOAM531UTnsnrdwDLRq8GyD52jvcfU968QDnJG/hr+k7KSN/9NP/lHdf
        8qPJ6Bf/zcVDh16K8f9LIEQw
X-Google-Smtp-Source: ABdhPJx+6s23SrJkmWFr0dXgfR5PD1eLY5Neyl5g05B/jmIodv1ehtiUksvM1kDS5210VzZBE8aLvA==
X-Received: by 2002:ac8:5b82:: with SMTP id a2mr7815924qta.519.1640411263130;
        Fri, 24 Dec 2021 21:47:43 -0800 (PST)
Received: from fedora.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id c7sm8492780qtx.67.2021.12.24.21.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Dec 2021 21:47:42 -0800 (PST)
From:   Atish Patra <atishp@atishpatra.org>
X-Google-Original-From: Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [v5 9/9] MAINTAINERS: Add entry for RISC-V PMU drivers
Date:   Fri, 24 Dec 2021 21:46:47 -0800
Message-Id: <20211225054647.1750577-10-atishp@rivosinc.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211225054647.1750577-1-atishp@rivosinc.com>
References: <20211225054647.1750577-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Atish Patra <atish.patra@wdc.com>

Add myself and Anup as maintainer for RISC-V PMU drivers.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9af529acb6a6..6232ae05e12c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16056,6 +16056,15 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
+RISC-V PMU DRIVERS
+M:	Atish Patra <atishp@atishpatra.org>
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Supported
+F:	drivers/perf/riscv_pmu.c
+F:	drivers/perf/riscv_pmu_legacy.c
+F:	drivers/perf/riscv_pmu_sbi.c
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.33.1

