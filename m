Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91FDB21BF1
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 18:48:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727615AbfEQQrz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 12:47:55 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:39314 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727586AbfEQQrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 12:47:55 -0400
Received: by mail-pf1-f194.google.com with SMTP id z26so3949012pfg.6
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hE0fe9lMVv6/FQxLkF3fQ4UQY6bw1uWnd2q8EpUNjIc=;
        b=ZhDwx/7uQqUnTIHD1PA1Upu1Y8Z3YXS3B9HztVGpVhQ1tAXH449NhmdQCurju4ZJB9
         vNhIXcRedwThXY2BekwHNiWsmcH7xI5RXQTxVxFuMqKhuiq90bGAcOc8hj9Vd5FEss09
         u6kj7HIYJx12jSex16z82pa6RCUW1/cmEbwHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hE0fe9lMVv6/FQxLkF3fQ4UQY6bw1uWnd2q8EpUNjIc=;
        b=E0QnPABF8QOoVH/160kFofNeBVwkZ/+f3xlVhgZiownLuJVl6L4QMUi/qnPUscLT6b
         2nWOlxdwB5NqVKl8deVLJIioX7RDrqgbmNknaMu+ClAPtzbd5UwSU67NX5Lw0ykq0z4n
         R3VVnO7HNN1Bo8zlYh5Qe90bU9pxBphuliXVz9bCrchBfNWd2ufJi8+ohBij3lG5hC7Y
         b7nw0q1i0KoICXlTtKYrTN56WeWnCxg6/Xif3FtyfUDlb8PSoRMuLNexr2sitPUDMZVX
         apkcEhpSsjM7nitvnRhhPGW8+kpSsFuXqUNxWq5Vu1NhA8Zjsm0LxizRIMjjl0Mje3jH
         aKUA==
X-Gm-Message-State: APjAAAU8NVxh0HUKSnPigBDFAOV4HOi9KvwQegX8IbIe0/1Rmpa5ZmyE
        OOlHp3/Uk+eH6a/3lUaegFUjFg==
X-Google-Smtp-Source: APXvYqzuCXeovIOaR4RbpVXx1csND1I5sP1Zmc0ZU68p58V4I5232ilFAA9A/gPdohyIIkl9VXHhPQ==
X-Received: by 2002:a63:785:: with SMTP id 127mr54984321pgh.230.1558111674612;
        Fri, 17 May 2019 09:47:54 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 May 2019 09:47:54 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dan Williams <dan.j.williams@intel.com>
Subject: [RFC/PATCH 4/5] arm64: Add support for arch_memremap_ro()
Date:   Fri, 17 May 2019 09:47:45 -0700
Message-Id: <20190517164746.110786-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
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
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index 8bb7210ac286..245bd371e8dc 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -185,6 +185,7 @@ extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 #define ioremap_nocache(addr, size)	__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
 #define ioremap_wt(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
+#define arch_memremap_ro(addr, size)	__ioremap((addr), (size), PAGE_KERNEL_RO)
 #define iounmap				__iounmap
 
 /*
-- 
Sent by a computer through tubes

