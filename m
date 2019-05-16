Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B89F2036E
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 12:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726838AbfEPK2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 06:28:36 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39580 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726597AbfEPK2g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 06:28:36 -0400
Received: by mail-pf1-f196.google.com with SMTP id z26so1624494pfg.6
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 03:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zdJ9wOciRCFBg5OhP24ccEPW98TzZ5e0I9CMtzhtP7k=;
        b=j6TjZjdTvdf6CjCSc4yUwh0w3lHoZrsZkToyITUvilzaKO5fJ0vqwlISOAS2BDbhb6
         2VbC5h3lCINUHea8eLr5qB7bqHliBCV26+cZHkuc6/kN9BvyoxdDK0mVitXKri3MUivK
         IbYPCZMbdWKCRDRF9dlx5fQMu94ziC7y43FQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zdJ9wOciRCFBg5OhP24ccEPW98TzZ5e0I9CMtzhtP7k=;
        b=Pxb2uZZoViW9dZ5ZPJBGaiQtboXkRTOxsQpATGO3rMm3MnO/E2OK3U3t2J43Iq9X85
         ji9uY+3XkeoJIL/f8miplhLkPtOA1s5Q6C7MrX7gkKlXL0FA8pZ2Ee+IeHh0xvjyrl7D
         s5YLLwmL2m/qL4nf4VyQdAq6KtwRdhqyLduMCXXIC+FDfZc7oogAZQJHN08Pia52CMX0
         muG3sWw/QrHcsn2n8limQMOZ6ix5kayJsZTC/IKi6Zj3lew0rEF8IfqdFBT1lqw69o3B
         1fWLPRstgZiIwyE51KIMhl7PgHg7p9Wd8ywGpfc0Oa09j4jQXuQbpEdMvAoBBtBVN7Uf
         YlWg==
X-Gm-Message-State: APjAAAVeuYtZ2ritALlOpMQm9mVnGxrexgekJd60wid71YuWhVOTEU3g
        OOgdYm4wDsCRbPkPHWvUyTnBpw==
X-Google-Smtp-Source: APXvYqzPTskZH8eYovOCQmHUvgMMgQkqepD4OYCnKFG7nHyDLIhQaMeOn+J/Ld+Xt/Ggq8IM/7Zmkg==
X-Received: by 2002:a62:e00e:: with SMTP id f14mr52831963pfh.257.1558002515484;
        Thu, 16 May 2019 03:28:35 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id h123sm9338048pfe.80.2019.05.16.03.28.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 May 2019 03:28:34 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chintan Pandya <cpandya@codeaurora.org>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Subject: [PATCH v3 1/3] include/of_fdt.h: add a weak arch hook to update fdt pgprot
Date:   Thu, 16 May 2019 18:28:15 +0800
Message-Id: <20190516102817.188519-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Does nothing as default, arch can implement their function to map
fdt to RO/RW. This is convenient if arch map fdt to RO during init
but needs to write fdt in some special cases after that.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/of/fdt.c       | 13 +++++++++++++
 include/linux/of_fdt.h |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index de893c9616a1..e84971d1e9ea 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -30,6 +30,19 @@
 
 #include "of_private.h"
 
+/*
+ * update_fdt_pgprot - Arch hook for changing fdt pgprot
+ *
+ * @prot: page protection flags for fdt
+ *
+ * Architecture can implement this function if they want to chagne
+ * fdt page protection flags before or after doing modification and
+ * fixups to fdt.
+ *
+ * Default does nothing.
+ */
+__weak void update_fdt_pgprot(pgprot_t prot) {}
+
 /*
  * of_fdt_limit_memory - limit the number of regions in the /memory node
  * @limit: maximum entries
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index a713e5d156d8..406c3e7b2b75 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -109,5 +109,7 @@ static inline void unflatten_device_tree(void) {}
 static inline void unflatten_and_copy_device_tree(void) {}
 #endif /* CONFIG_OF_EARLY_FLATTREE */
 
+extern void update_fdt_pgprot(pgprot_t prot);
+
 #endif /* __ASSEMBLY__ */
 #endif /* _LINUX_OF_FDT_H */
-- 
2.20.1

