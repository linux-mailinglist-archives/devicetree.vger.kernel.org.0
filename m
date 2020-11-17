Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43E952B6CEB
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:19:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730870AbgKQSQr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:16:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730859AbgKQSQq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:46 -0500
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com [IPv6:2607:f8b0:4864:20::74a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40F03C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:46 -0800 (PST)
Received: by mail-qk1-x74a.google.com with SMTP id q25so14645441qkm.17
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=43GxmItVf3ENfAwK24h1jbs6QJ7Tr5/fb9a8KdpnALQ=;
        b=I3vfgCroLZcbxbMBelA50c1N1Y3hD7RO8dK4Yfdg92JJ9mDudKl7ZgVFDEGcLokKqJ
         fep0U6jqOGtZ9zoGEC9cF+peh0IJyKmC2E8YytUJtdBUfDiS2VrM7RvmCyrkIEOyoCVj
         Zj5RKXdkNzPbGhMxtY7uW4LVsd/+tcfslNA/BdBW/Ry87jVtrKtdKPqwdrxwWN35EhWb
         bdEhtmYnellgGGg7lrrS4XNju/dLo6f/36HiRTbFiTj1kTY/q9HvfamGy/O7EQSsS/SA
         thHp38VOizlOMz3Ke6XtLCtKEpujSjul4xmuEtP/hRSxLWC+cRCGJH7WvDUtgQ736y89
         XCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=43GxmItVf3ENfAwK24h1jbs6QJ7Tr5/fb9a8KdpnALQ=;
        b=mdICftMI5UNYRSZfWoz63LrhyUFU/F6vZ/Qt0GowzrMqGVEySo3Zf0LmaXf5lhqGFn
         zOYVHbozm2tjn+Kku62O3fv5NsAYCw3tQzB65TTWOJH2qkCF+JwER0kw6Y8yWyfK2rUs
         Uki5GQ3eyOfNK60eQwbuFUkbWE0q8o5o8YjO8YRWWSMCMGNZYniK6jM69Drrn+iCm22l
         Q7rxoXZIbaxym0s8SUoVgnKe/tMJOOoXH0WUeCCJDSO6WKdEGZZFkSOPh/od93JeeHWU
         BB2Y3r+LHuegct7BvXgkQmaIeZBNafH5ibXWrLFbNz9osai0uofNPaMxscEz5GoSpE62
         wkYg==
X-Gm-Message-State: AOAM530tbmrOuHUCugTDyDSOGLTPUsWm7BDaRnAtl86Isdi5d5bMM6z2
        vyEAG+wWXhUgmIQuegqcc3D8qQL5yMab
X-Google-Smtp-Source: ABdhPJystvOylX+iR1GTTm6D07Kb5FsHciKocNWKW8OwH+Vo7WRMYhFofs8v1FHeyNq/UupTe8A1TLvb0Rxw
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:a05:6214:12e8:: with SMTP id
 w8mr990171qvv.16.1605637005406; Tue, 17 Nov 2020 10:16:45 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:51 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-12-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 11/27] KVM: arm64: Stub CONFIG_DEBUG_LIST at Hyp
From:   Quentin Perret <qperret@google.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>, kernel-team@android.com,
        android-kvm@google.com, Quentin Perret <qperret@google.com>
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
2.29.2.299.gdc1121823c-goog

