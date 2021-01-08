Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD832EF260
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 13:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726006AbhAHMS1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 07:18:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728069AbhAHMR3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 07:17:29 -0500
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C2D8C0612A8
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 04:15:50 -0800 (PST)
Received: by mail-qt1-x849.google.com with SMTP id h18so8151688qtr.2
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 04:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=1zm32OSU+zNrGKw9/hOuTdLQGjd9ykhvUXTPnKtB/pc=;
        b=hTdkSIrZA8jRY9d2Vo+3e32B5JaCAcEyOgWafLqU479GjRA+wuV1EKbj7dli8WSEot
         ov9tsSsHblKcShOicPx10jIo6EYN04HyhQaJb9LILOwxisunTQr4dSxejkLLjyZOPnd9
         f6L3SjMyKWmc7X+Tic0/qLfiB38vmK1DbAjvbGnglkuYwluyDJytSrCJ8sJNWcSnUM8I
         cWNwQOWkEgvxWKdph19saLEvUhUINi8/UvsEm5hEvmkp916ThrFcWIuZk41DBJscv6Ri
         t5+yZ13n9RRVeYH6mIq994/ydC7sGQpNiEdXBVz0oVW5gSJ1zmdzv4Jd/hCwMZZ47CzG
         gPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=1zm32OSU+zNrGKw9/hOuTdLQGjd9ykhvUXTPnKtB/pc=;
        b=MUg1lVHN0ewVvcxZZ1JLFb4fQGF6WFQmsK+hLB5RRqKweF/ztLq6EaTydpjKdjPg7c
         0H3Ys/DR/RXkhUJRT3pxtRFg9E7kSP5hRuVUgp60amLwbqAyB+aftjgyJSCQ5cUu6ByF
         jQiiTr2XTpyR7LYZSxiLth+MIEtNs59cdtEqWnzyveiY5XVIGHIxXZmkl5yKXl2pQghp
         4byV+BOGLJKFn3Ef1GSA7lIyh9qQ+CYIjPuBBEL+13K6gbFqehmftQq7deSBTszzzZA3
         Pv8cUE/lA/LzEVbvXEScw6eoWBem+2KZt7cxSg1eU4Mg7bYROVNLoPsTA7QZo2nFAgl3
         egpw==
X-Gm-Message-State: AOAM530Yxxt49QlyhlcWHe73dg92JtGxsuxle5zCm072tTRsztyJKaSw
        1bnLJ3OmP/TztyLd3UjkYshLfuVz/Cy3
X-Google-Smtp-Source: ABdhPJwtoYexZEdaC0bQI+CZT27/P6ssHLkHC/kRjUA9Pq4S0VxlCZ8waLnUiDerC6tLIhWoI3hSf751jQxy
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:ad4:56ab:: with SMTP id
 bd11mr6199101qvb.53.1610108149650; Fri, 08 Jan 2021 04:15:49 -0800 (PST)
Date:   Fri,  8 Jan 2021 12:15:09 +0000
In-Reply-To: <20210108121524.656872-1-qperret@google.com>
Message-Id: <20210108121524.656872-12-qperret@google.com>
Mime-Version: 1.0
References: <20210108121524.656872-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [RFC PATCH v2 11/26] KVM: arm64: Stub CONFIG_DEBUG_LIST at Hyp
From:   Quentin Perret <qperret@google.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, android-kvm@google.com,
        linux-kernel@vger.kernel.org, kernel-team@android.com,
        kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
        Fuad Tabba <tabba@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        David Brazdil <dbrazdil@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to use the kernel list library at EL2, introduce stubs for the
CONFIG_DEBUG_LIST out-of-lines calls.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/kvm/hyp/nvhe/Makefile |  2 +-
 arch/arm64/kvm/hyp/nvhe/stub.c   | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/stub.c

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 1fc0684a7678..33bd381d8f73 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -10,7 +10,7 @@ lib-objs := clear_page.o copy_page.o memcpy.o memset.o
 lib-objs := $(addprefix ../../../lib/, $(lib-objs))
 
 obj-y := timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o host.o \
-	 hyp-main.o hyp-smp.o psci-relay.o early_alloc.o
+	 hyp-main.o hyp-smp.o psci-relay.o early_alloc.o stub.o
 obj-y += ../vgic-v3-sr.o ../aarch32.o ../vgic-v2-cpuif-proxy.o ../entry.o \
 	 ../fpsimd.o ../hyp-entry.o ../exception.o
 obj-y += $(lib-objs)
diff --git a/arch/arm64/kvm/hyp/nvhe/stub.c b/arch/arm64/kvm/hyp/nvhe/stub.c
new file mode 100644
index 000000000000..c0aa6bbfd79d
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/stub.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Stubs for out-of-line function calls caused by re-using kernel
+ * infrastructure at EL2.
+ *
+ * Copyright (C) 2020 - Google LLC
+ */
+
+#include <linux/list.h>
+
+#ifdef CONFIG_DEBUG_LIST
+bool __list_add_valid(struct list_head *new, struct list_head *prev,
+		      struct list_head *next)
+{
+		return true;
+}
+
+bool __list_del_entry_valid(struct list_head *entry)
+{
+		return true;
+}
+#endif
-- 
2.30.0.284.gd98b1dd5eaa7-goog

