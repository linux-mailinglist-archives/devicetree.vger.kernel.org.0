Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7110DB9A60
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2019 01:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437196AbfITXUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 19:20:51 -0400
Received: from mail-qt1-f202.google.com ([209.85.160.202]:56219 "EHLO
        mail-qt1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437118AbfITXU0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 19:20:26 -0400
Received: by mail-qt1-f202.google.com with SMTP id o34so9940023qtf.22
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 16:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=MYcfIKSKU50yEk2GBsBM2m5RiXljhL+2ZE7FFRNNMnA=;
        b=Alfuq4xKcjyE/lvI9+hnlObqPY31tSqFtCXmQsJDgKBbZcMDdLd/Xe7IG+dh2opFqi
         NkyEiOKdCjZbdWPC1fBNLUcaNtEJgBGm/C9KYrpwSGMN9kJJghCA0tF/hzhbo3QAqnOy
         G1qrxWya38IKA9aT9DrUpNHS8ofpmZs1hUked/PR+nRiVaU1VfXljtUe111C/R7on8zn
         6GrH2up+ee3CPMMeu4c4xDYF5+vRDtfCDix7aXc4nXc5AUTjcX3VMvg69w2RWR9+CCLb
         ZYb5QuoRRzIn5CjL5tKk6cztEmTrCtopo7An4Qopbv5QmyKSNuCyNb6EPWl43WB8ctZa
         XW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=MYcfIKSKU50yEk2GBsBM2m5RiXljhL+2ZE7FFRNNMnA=;
        b=FhjO9O0wcnb4C+Nrei1M0WG+JZ47GtCCrdp1TTXRbMA2FYyBwcppRP4KjD5SEuDGQH
         8Jm8PhseKGF9WWC0AGWnRP9BAgbZe4IrrGK5eXb81kWs251K2Va0+u68yALQpzId938x
         C8E0WNZm010qxdnOaYk8Pq42wN3B4//L8ha8YMu3sa9Oam6DMHcslzmU8oLvlqqBHqIA
         gH2P8ZX3DRW83cmNrg7c1PJ7Kx2qhwn2dqxCwXTomiA1hfvTYUJJXgB9nvrSBId47UYB
         AzXvDG/Zwd5cTm7XJMxNpVI7r5b6zIst44oEL0soKuQjv/leng/0yO+JFHo/HF6Ii3JB
         zi4w==
X-Gm-Message-State: APjAAAVzo0UXF3+J3bnMHS3AEsHZSbatbWJGowNJ2R4wR+p7YrjAfc1B
        JOHaQxNs52RLWwxT8YL1MukTEr3GWuejCJuq3ZYkKA==
X-Google-Smtp-Source: APXvYqwe7HUQbxjHZ88C3/yd7hKPs7v0fuapQiwWc6yF6cIi7fKh2+NHXnkd9elywqPPfmZXvk//qq7AcofxgzfIeJsK2w==
X-Received: by 2002:ac8:7502:: with SMTP id u2mr5779140qtq.216.1569021623093;
 Fri, 20 Sep 2019 16:20:23 -0700 (PDT)
Date:   Fri, 20 Sep 2019 16:19:20 -0700
In-Reply-To: <20190920231923.141900-1-brendanhiggins@google.com>
Message-Id: <20190920231923.141900-17-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190920231923.141900-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v16 16/19] MAINTAINERS: add entry for KUnit the unit testing framework
From:   Brendan Higgins <brendanhiggins@google.com>
To:     frowand.list@gmail.com, gregkh@linuxfoundation.org,
        jpoimboe@redhat.com, keescook@google.com,
        kieran.bingham@ideasonboard.com, mcgrof@kernel.org,
        peterz@infradead.org, robh@kernel.org, sboyd@kernel.org,
        shuah@kernel.org, tytso@mit.edu, yamada.masahiro@socionext.com
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        kunit-dev@googlegroups.com, linux-doc@vger.kernel.org,
        linux-fsdevel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        linux-nvdimm@lists.01.org, linux-um@lists.infradead.org,
        Alexander.Levin@microsoft.com, Tim.Bird@sony.com,
        amir73il@gmail.com, dan.carpenter@oracle.com, daniel@ffwll.ch,
        jdike@addtoit.com, joel@jms.id.au, julia.lawall@lip6.fr,
        khilman@baylibre.com, knut.omang@oracle.com, logang@deltatee.com,
        mpe@ellerman.id.au, pmladek@suse.com, rdunlap@infradead.org,
        richard@nod.at, rientjes@google.com, rostedt@goodmis.org,
        wfg@linux.intel.com, torvalds@linux-foundation.org,
        Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add myself as maintainer of KUnit, the Linux kernel's unit testing
framework.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a50e97a63bc8..e3d0d184ae4e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8802,6 +8802,17 @@ S:	Maintained
 F:	tools/testing/selftests/
 F:	Documentation/dev-tools/kselftest*
 
+KERNEL UNIT TESTING FRAMEWORK (KUnit)
+M:	Brendan Higgins <brendanhiggins@google.com>
+L:	linux-kselftest@vger.kernel.org
+L:	kunit-dev@googlegroups.com
+W:	https://google.github.io/kunit-docs/third_party/kernel/docs/
+S:	Maintained
+F:	Documentation/dev-tools/kunit/
+F:	include/kunit/
+F:	lib/kunit/
+F:	tools/testing/kunit/
+
 KERNEL USERMODE HELPER
 M:	Luis Chamberlain <mcgrof@kernel.org>
 L:	linux-kernel@vger.kernel.org
-- 
2.23.0.351.gc4317032e6-goog

