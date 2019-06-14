Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 719DF46A55
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 22:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726950AbfFNUha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 16:37:30 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:44304 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727656AbfFNUhX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 16:37:23 -0400
Received: by mail-pl1-f195.google.com with SMTP id t7so1447115plr.11
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 13:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ctzVWLxLHqItydbbPUXjVh0gv8n1U7GRnaTqF8ILaog=;
        b=BDM1M+271IQoGfkSDrl85T8Rg7KP/lRKJEOPCJCfChPITi0i6Zs3pcycaA0GBFCgll
         ZQD1tlZUFKuxGUoqIjPaF/Qk+ZU199aERuJ0yHM5V4ez2VXIdzvl/L2iaeThCLAIVS2b
         DdSbS6oQg5U5nGMrQ1vc6prTrvy5arXwJE6ZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ctzVWLxLHqItydbbPUXjVh0gv8n1U7GRnaTqF8ILaog=;
        b=fFDe0OeWv486qJ9EELwapycteoCTnxd1QOwGOv5x5Mce7vCmVrz5lSPrYDcomZLKxc
         bGMLdf0cMqa0uGbQMbCUhbj+dKWSFi6Iih6DGgbYEmgpScqN77U6woFxsztPaTUTefLt
         R/66/2frJee8BnhVCBkdaPJAPNq09vwhab9wpm50RIJ0ALTTFw+1OdO/1voDD2mqJxHZ
         bEOOE7u5QEgLlHowHjDQtRJ1R6FcyqeGLTEHkxpap3dXFjQJlS0G2S3uQ5GyFZjkD5zj
         O0TvQgND/jGRTOKXBllGk6g4IZ8Xzx+vcbbgk2HHWnmqMCq4sM/WZ58z9Mn1l7egCkyy
         +0OQ==
X-Gm-Message-State: APjAAAXCx0naJjiHvoovSoRoKMzc7L6NstTV+aZWXH0f+cTCc3hq6pzC
        xjfPUIT/3VyuqJstmj/Xj352SA==
X-Google-Smtp-Source: APXvYqw21FhItxYFfLoN4gG820hTamDRhMvYBgFH74z4L0jEESW79mOUdZTsiokL1tAuHIASvtvreQ==
X-Received: by 2002:a17:902:f204:: with SMTP id gn4mr77051069plb.3.1560544642914;
        Fri, 14 Jun 2019 13:37:22 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.22
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 14 Jun 2019 13:37:22 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Dan Williams <dan.j.williams@intel.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 4/5] arm64: Add support for arch_memremap_ro()
Date:   Fri, 14 Jun 2019 13:37:16 -0700
Message-Id: <20190614203717.75479-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pass in PAGE_KERNEL_RO to the underlying IO mapping mechanism to get a
read-only mapping for the MEMREMAP_RO type of memory mappings that
memremap() supports.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index b807cb9b517d..cc33f4c8647b 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -183,6 +183,7 @@ extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 #define ioremap_nocache(addr, size)	__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
 #define ioremap_wt(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
+#define arch_memremap_ro(addr, size)	__ioremap((addr), (size), PAGE_KERNEL_RO)
 #define iounmap				__iounmap
 
 /*
-- 
Sent by a computer through tubes

