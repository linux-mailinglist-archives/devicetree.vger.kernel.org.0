Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74DA1668F3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2019 10:19:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726701AbfGLISK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jul 2019 04:18:10 -0400
Received: from mail-pf1-f202.google.com ([209.85.210.202]:52246 "EHLO
        mail-pf1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbfGLISJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jul 2019 04:18:09 -0400
Received: by mail-pf1-f202.google.com with SMTP id a20so5099927pfn.19
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2019 01:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=tRWxB/VAAV03ErbuMUlwG4nfr04i5uXxvmyjeK/eYMw=;
        b=fHwJnLlLISoqqvDLfyGk8Vw3/9WOMxJ7OvlFCg60FTmh8rrkGX1XqrgWqeHGbkOsY9
         +9oig5zdjDaOqX38pwXJ11qc7zDS9xm51tLG8d25Pjl1qnpFQ00DiM7DgsXnHCHhAf4u
         nWPLyei0fJyAgxO/X1UeAkr7Vthrx42va4uBivgP+bj8Y81BwkUY+zTsBlN4qLRnMdWU
         WEsrFUyDNb2QC4wmy18R655kwuWcHYQFH6bB1A4/qso+3SZixPG89crgQSo4SlPakdWA
         lNMkNruO9RTX0Na3yK694/C+DuZRUD9DprT3tYjpbz8Q1UNMfW9LI+przQMH/Z0msupI
         vhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=tRWxB/VAAV03ErbuMUlwG4nfr04i5uXxvmyjeK/eYMw=;
        b=uPKQAz6bdBymqzqfh1OAF1KZ+4QEJifNYnY09DUbFv9BE4uqPQkJ9N1IBLeVzJuKx/
         qnx7UqrPXF/JXZnHJJ+IHC/aIYoUtTIdoQ6VwOHiptIgBdchlZlb6fV4hdQ5TzdQdipI
         B6bzCxhAW97I/SmhudPdbYNukk6YHa4JEhVPShBN0HwjfCivsC46/rRalDIvRUahRQwP
         iYRuukKmu7IFnmWgeZY84Yq5VEYpqelSvj6vpO9/OjaAkPWHe4oPge5U5CyIrMiS4ISo
         FSO4/9HX6a9ifV2BywjCZ0BzaGYbdJ6h6yCBQqNisjjL0JWmqhpQ95qVFQTGB3djeSHi
         N/uA==
X-Gm-Message-State: APjAAAWHYLAqjtv+pyrNABPp2u2FBtGZ8A/xjW5jKGwykLX5p7ia6X5a
        6PDo3xKqX+QMorsLqqSIH4ZxwWrAN3ndilDsn1FD2g==
X-Google-Smtp-Source: APXvYqzSxxZhDV/VHuvjEAx+PSSV2CXvVreQjca+MxOlfBW78VEVBMXf9ELB10VRLpFN34tmpwg5o+RRVIJafuHGXJT+dA==
X-Received: by 2002:a63:755e:: with SMTP id f30mr9386006pgn.246.1562919487340;
 Fri, 12 Jul 2019 01:18:07 -0700 (PDT)
Date:   Fri, 12 Jul 2019 01:17:32 -0700
In-Reply-To: <20190712081744.87097-1-brendanhiggins@google.com>
Message-Id: <20190712081744.87097-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v9 06/18] kbuild: enable building KUnit
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
        wfg@linux.intel.com, Brendan Higgins <brendanhiggins@google.com>,
        Michal Marek <michal.lkml@markovi.net>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

KUnit is a new unit testing framework for the kernel and when used is
built into the kernel as a part of it. Add KUnit to the root Kconfig and
Makefile to allow it to be actually built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Michal Marek <michal.lkml@markovi.net>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 Kconfig  | 2 ++
 Makefile | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Kconfig b/Kconfig
index 48a80beab6853..10428501edb78 100644
--- a/Kconfig
+++ b/Kconfig
@@ -30,3 +30,5 @@ source "crypto/Kconfig"
 source "lib/Kconfig"
 
 source "lib/Kconfig.debug"
+
+source "kunit/Kconfig"
diff --git a/Makefile b/Makefile
index 3e4868a6498b2..0ce1a8a2b6fec 100644
--- a/Makefile
+++ b/Makefile
@@ -993,6 +993,8 @@ PHONY += prepare0
 ifeq ($(KBUILD_EXTMOD),)
 core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
 
+core-$(CONFIG_KUNIT) += kunit/
+
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
 		     $(net-y) $(net-m) $(libs-y) $(libs-m) $(virt-y)))
-- 
2.22.0.410.gd8fdbe21b5-goog

