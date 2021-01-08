Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9C512EF26C
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 13:19:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727719AbhAHMRF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 07:17:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727489AbhAHMRE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 07:17:04 -0500
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com [IPv6:2a00:1450:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C52BEC0612A5
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 04:15:46 -0800 (PST)
Received: by mail-wr1-x44a.google.com with SMTP id 4so4083015wrb.16
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 04:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=j2147gnSzl9I0ScvZHWmAEizoS1X3L4ZHr3IS+13AKY=;
        b=Ns/jsJnBKAEMgPThyuR5EpWbpEFuji6DabFH+5GBY0CvrWpmvNqu9R86B3G/uacWQS
         KmN2zpRmuvtgq4B7YACdY7SURg02CGduxtogRTfv3ogluubm5YiaSF9YIp7Z01d6HSs6
         s580RGQ/bhzezrX1DLcpZQ1xub6tyD6US0n+U7l3f5mQr/Nng8tw58EvPQ+pOHn13Kbs
         m3e0q3j6/ETq9wkmQoFp8k0t3mxpKxsFtfPE+Iu6HMXj2287z9WV/eS3AJBTmYhm3rF1
         K4g+HsMOnZqEbMKeNYSPpu3EAeAydUEzoDvGYM3uBjU/V0yKSJX+qcVx62rpCysU4UJj
         8gCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=j2147gnSzl9I0ScvZHWmAEizoS1X3L4ZHr3IS+13AKY=;
        b=kZC9lgFkUQyFjNfgymTvnQ2eHfmHIiudcV3BCEZY1EIhye58fCaI7XH9XpgU33+ECG
         FNwUSR72//WbsoRr7mD7pqjhf+Vf4r32uryvlPtPqRjjKIalD6PpDPjNxpwmqfKbYvrZ
         rl5JBK3Iels9ZswZOE0fGZ9vqm2/9cL/EbG6Re8bJUzdAYDEALl8onUsEVnxd6Na/V0z
         u+njRpTMYTX9BD8LEPeH64sPUTeIXHnFuI9YR91ZB9R/DUBruynNNOIBEqJ7xNuI7+fE
         DNthtIbiGDQ2bizUtC6n+MpBhlu6788L0V+6IW0y9ea+EWPUogfSpgzMtxQQMmNpqZgq
         F3Dg==
X-Gm-Message-State: AOAM530fztoIj4qcRXgF/F1Fmhz2NhJSfV/1fyo/CJY3XIu6pYquLXAD
        94hYKfjuDhK1KesLfGGkxmGeHxDXDsgo
X-Google-Smtp-Source: ABdhPJwRmzTEPIbtvpk5L3tJWHR0GVJuAQ8eMijo/E5QxD7yqAIOXUsNUHDzy7jweXBIXi3SBPh+MOe9FUID
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:10:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:adf:fbd2:: with SMTP id
 d18mr3451456wrs.222.1610108145504; Fri, 08 Jan 2021 04:15:45 -0800 (PST)
Date:   Fri,  8 Jan 2021 12:15:07 +0000
In-Reply-To: <20210108121524.656872-1-qperret@google.com>
Message-Id: <20210108121524.656872-10-qperret@google.com>
Mime-Version: 1.0
References: <20210108121524.656872-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [RFC PATCH v2 09/26] KVM: arm64: Allow using kvm_nvhe_sym() in hyp code
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

In order to allow the usage of code shared by the host and the hyp in
static inline library function, allow the usage of kvm_nvhe_sym() at el2
by defaulting to the raw symbol name.

Signed-off-by: Quentin Perret <qperret@google.com>
---
 arch/arm64/include/asm/hyp_image.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/include/asm/hyp_image.h b/arch/arm64/include/asm/hyp_image.h
index e06842756051..fb16e1018ea9 100644
--- a/arch/arm64/include/asm/hyp_image.h
+++ b/arch/arm64/include/asm/hyp_image.h
@@ -7,11 +7,15 @@
 #ifndef __ARM64_HYP_IMAGE_H__
 #define __ARM64_HYP_IMAGE_H__
 
+#ifndef __KVM_NVHE_HYPERVISOR__
 /*
  * KVM nVHE code has its own symbol namespace prefixed with __kvm_nvhe_,
  * to separate it from the kernel proper.
  */
 #define kvm_nvhe_sym(sym)	__kvm_nvhe_##sym
+#else
+#define kvm_nvhe_sym(sym)	sym
+#endif
 
 #ifdef LINKER_SCRIPT
 
-- 
2.30.0.284.gd98b1dd5eaa7-goog

