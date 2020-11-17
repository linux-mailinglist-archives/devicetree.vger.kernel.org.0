Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA9502B6CD1
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:16:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729976AbgKQSQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:16:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726731AbgKQSQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:16:23 -0500
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com [IPv6:2a00:1450:4864:20::34a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7B05C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:22 -0800 (PST)
Received: by mail-wm1-x34a.google.com with SMTP id o19so2144400wme.2
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=wfMub1Dq2/zzWvEJdcb9YkOg3Kk4cyIQtTysz5FPZ9k=;
        b=i29eJtch8pt4MddWICqOePgkq/MwJTbTc/hOyGFj3909KVEBPm5n0cRj+EplVnonKY
         WbI373E5+4cYXjRgWXgB7yoEj51rISpjpUCCpNubJ4wb3DMp/jUm/ja856YXPM1roevU
         DCSoS5kmz/1ross0mm9LO5aO5Df0pZvR0PhjdaR8ldJFyvyqiVcNi/BAVeb15byHXn9C
         8IMifCCt418cG8UX7UZpo+rA5552KYu5sl1fjIkWTaOGhboJk+EaVtU77VEJh1fdvKKP
         1csKvBXdENtZrlIOODJUyxJZCWUu3IhGdceC5DZsOslbPK2hFkR/d4psXG8fA7BWlsm1
         lmjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=wfMub1Dq2/zzWvEJdcb9YkOg3Kk4cyIQtTysz5FPZ9k=;
        b=We+JKN9EAjkFR1+nOr5x6mbTSTUkVJf5/NM61jOhkMwGrXW/gx89FcLhPgcfGHTxU2
         dxuoY/jC2v4cl63YaUAT9YY4Mnz3tJJUK5iXWwzhDCf0E+Gnyyef1n4qoPRs37aIsKE1
         QXvSpN2mLeSMuBfFj6+q0AbZ7alOrlMnaTXIzklqPOm6VfR/la5ZIqvCgBNESPRpWcQe
         mbV1Lg+qK5p6VPYUtMjHt+Pc5+hhUDqKjZzePzd8zl3gPMfErxfB57HFnF6a4VhrZQrS
         zvQyRH7Mn8aoxCh9j31KxwInyG9pILF/F2Qp1V7BWIlh4Bl/D3ScU1/f8sp21H+pF6Hg
         EZNA==
X-Gm-Message-State: AOAM532S7PyBF/URMyedrqDfbO0dBGNzl3MUyqd1ZH62/vHz+lFSjul3
        Clb4DFkJgjqe8WFUmTPMFIiJTj9l/CNO
X-Google-Smtp-Source: ABdhPJwLzQmM3f+/yXxfkHBpPHMIy89xImU6xwZzUPy415BoTaClg6AeXK5YHYslpqgilPliowk09nC1PT5L
Sender: "qperret via sendgmr" <qperret@luke.lon.corp.google.com>
X-Received: from luke.lon.corp.google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
 (user=qperret job=sendgmr) by 2002:a1c:3d54:: with SMTP id
 k81mr389168wma.144.1605636981668; Tue, 17 Nov 2020 10:16:21 -0800 (PST)
Date:   Tue, 17 Nov 2020 18:15:41 +0000
In-Reply-To: <20201117181607.1761516-1-qperret@google.com>
Message-Id: <20201117181607.1761516-2-qperret@google.com>
Mime-Version: 1.0
References: <20201117181607.1761516-1-qperret@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [RFC PATCH 01/27] arm64: lib: Annotate {clear,copy}_page() as position-independent
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
        android-kvm@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Will Deacon <will@kernel.org>

clear_page() and copy_page() are suitable for use outside of the kernel
address space, so annotate them as position-independent code.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/lib/clear_page.S | 4 ++--
 arch/arm64/lib/copy_page.S  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/lib/clear_page.S b/arch/arm64/lib/clear_page.S
index 073acbf02a7c..b84b179edba3 100644
--- a/arch/arm64/lib/clear_page.S
+++ b/arch/arm64/lib/clear_page.S
@@ -14,7 +14,7 @@
  * Parameters:
  *	x0 - dest
  */
-SYM_FUNC_START(clear_page)
+SYM_FUNC_START_PI(clear_page)
 	mrs	x1, dczid_el0
 	and	w1, w1, #0xf
 	mov	x2, #4
@@ -25,5 +25,5 @@ SYM_FUNC_START(clear_page)
 	tst	x0, #(PAGE_SIZE - 1)
 	b.ne	1b
 	ret
-SYM_FUNC_END(clear_page)
+SYM_FUNC_END_PI(clear_page)
 EXPORT_SYMBOL(clear_page)
diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index e7a793961408..29144f4cd449 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -17,7 +17,7 @@
  *	x0 - dest
  *	x1 - src
  */
-SYM_FUNC_START(copy_page)
+SYM_FUNC_START_PI(copy_page)
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	// Prefetch three cache lines ahead.
 	prfm	pldl1strm, [x1, #128]
@@ -75,5 +75,5 @@ alternative_else_nop_endif
 	stnp	x16, x17, [x0, #112 - 256]
 
 	ret
-SYM_FUNC_END(copy_page)
+SYM_FUNC_END_PI(copy_page)
 EXPORT_SYMBOL(copy_page)
-- 
2.29.2.299.gdc1121823c-goog

