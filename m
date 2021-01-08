Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC1E52EF235
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 13:17:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbhAHMQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 07:16:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726133AbhAHMQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 07:16:11 -0500
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com [IPv6:2a00:1450:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4759CC0612F6
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 04:15:30 -0800 (PST)
Received: by mail-wr1-x44a.google.com with SMTP id b8so4071020wrv.14
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 04:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=2AvxqWsiNZiBgTFedPJYPTYC/iX22/lJxd+Fe6flKw0=;
        b=XIyewR3btdhcaLpqgHHf31EmI/fdUcLfY2l8kYP4b62kKxx9iTpjV2a87Z2iqPdVdh
         3YXXLs/Ky8cj/4mgJkr2p7eSWVX+S+lIe4YQMowwmloU1LTRFbPQeCWsn7ja28FPpFxg
         PwX+aTx1oHZub2LCC/ssQtz+EkVTbbxzq0Eep7agFz+EkOn0+/LZFQHu6yoviR1jsOr2
         MgFkYUmjkq+qlR91UBaqCSn/hp+eCjs3Wah+TaXvMZOZq8x5mZ4WEfPjCwP3SRodjLET
         8G+W+2AnHQygsHUYleRZs3XIMWfRKcaN0SIjbYx3+NFR4g+Nhx4GGr7jVp9LAnWmo/lK
         i6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=2AvxqWsiNZiBgTFedPJYPTYC/iX22/lJxd+Fe6flKw0=;
        b=XKVtC5UCCHMrtPQi2kZxkrfgvc+AxMQskYcP7yVFSab/4H8zBW+l/HPVm9m1DEWem0
         84kEvR1lbk9osie+hZQ3lQshMgBFyrBqNZ8sC5Ks50NixpiYi4rkoZozkaMPzb/Yt3ce
         1L0GpygiLgTRcOXGGkkXO/YkWJ2SEXyLj6IHEpvQ610Nc/tmuYcKMrxzWmv0xARMzFgM
         MPFG1h1AFqYRWVa+OH+FagmpStjaGD+Z99Pis0kvmLi3zaC1ZXN2LyU1JRqt7C+yS3Ei
         601rZyKjYSqqRustOhvSgrxoi0jpaKZ3WY8AymqpXuvGFuvQdNR3qgdmSC2RSvTPC7zk
         Oa3g==
X-Gm-Message-State: AOAM5324rHCYRHBZwfkJChE1F2jmOtrHoIPsQVHsWae8uWYcUOU7Xbws
        ENZDE7GoijTHS8wUFClAea0GqSsTY961
X-Google-Smtp-Source: ABdhPJyf1ctEy51fuFCix0vOeWng0452zHo1A6Dfvf1j1eurJXucg7DaQIxlCVhea+1iolch1bleRN20EdPf
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:a1c:2c89:: with SMTP id
 s131mr1783892wms.0.1610108128579; Fri, 08 Jan 2021 04:15:28 -0800 (PST)
Date:   Fri,  8 Jan 2021 12:14:59 +0000
In-Reply-To: <20210108121524.656872-1-qperret@google.com>
Message-Id: <20210108121524.656872-2-qperret@google.com>
Mime-Version: 1.0
References: <20210108121524.656872-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [RFC PATCH v2 01/26] arm64: lib: Annotate {clear,copy}_page() as position-independent
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

From: Will Deacon <will@kernel.org>

clear_page() and copy_page() are suitable for use outside of the kernel
address space, so annotate them as position-independent code.

Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Quentin Perret <qperret@google.com>
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
2.30.0.284.gd98b1dd5eaa7-goog

