Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C49941C222
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 07:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726879AbfENFoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 01:44:14 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:49468 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727006AbfENFoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 01:44:14 -0400
Received: by mail-pf1-f201.google.com with SMTP id r4so11201446pfh.16
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 22:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=hN9qf7+RrypIPHqUONQZmMGddOrdEANVDvigURbu6dA=;
        b=qpNcWD3Y0kl9+eBKEvbxHFNU7HSbifNewSYRx7Bf6o8l7Ke6/csSYyO5zv2WxAMwCw
         1clrx6usnqE/8tMeKdicTsHMdxaZhGE855zAfB2p5ktCxpqm1UvjHy6jbopoVHrKXTJu
         7XToK69m2OAEcktEp/sBKtsjQNLSLcqQn8GVwbQygY2DUZPUX/dOS5KbgqmQtNUtZYCp
         wrnJaamR7NoH4ePJwr456aJvpPNQSuIxVgAj7VigLO+2F4t6B5mXO5pvBmfaC8rN7V+L
         Ao7V5ERz7Y4bh1lVVQIOh9Hgtblw6vSKRA0X1/2C5pRc1A4nWNmmsMlR061f9/7kgHWi
         mU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=hN9qf7+RrypIPHqUONQZmMGddOrdEANVDvigURbu6dA=;
        b=ZODfON1Eiyg6yHGBsAelaZdsCrUe0XtBkIZKb7iYSoKb2upg730F7xXm38rCCnv2a1
         cqhiG40UZLKjDqXZPCH2EZQs6g8UDuWjRE0mqL8FhEHZ2JtDJYd2eQRh8dg+PIFQraUP
         wc5dPW293AFl8CeRKflE6v0bW4mQwDAdzwspRQ9ZFz+iL9LWozGkQintojG6WJcz28Yk
         xeM1Q5ehE69JHtZO9HpTydSxUNjVtecZTO8B43r2Bb50VuRZVFs56SfnwIaFpQ0I0/VJ
         QGJ9v5AAHAuuAN+sbO2LGPYtHQ8ic1HUAjg9Ig5caUw+U99ESSsQDlOMIdT1qqQhk/M2
         rsOw==
X-Gm-Message-State: APjAAAUtFtZ9mVkmvETdFkOt5m7gthDBabE5IOpSXs2m+jlYFZnR383M
        /74Ep+6DMW4usFY83eSInporYwzI1/syp63CVu7F0A==
X-Google-Smtp-Source: APXvYqypLujpnV/Vdl1pYHMXICHGFoX6Lv2fPwDbCH6fHgKJkPC2sx/Vc0HPXqG6cBw7dhDlnlPRD7bdIYYvS4bGxpiVHg==
X-Received: by 2002:a63:8741:: with SMTP id i62mr35837456pge.313.1557812653206;
 Mon, 13 May 2019 22:44:13 -0700 (PDT)
Date:   Mon, 13 May 2019 22:42:39 -0700
In-Reply-To: <20190514054251.186196-1-brendanhiggins@google.com>
Message-Id: <20190514054251.186196-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v3 06/18] kbuild: enable building KUnit
From:   Brendan Higgins <brendanhiggins@google.com>
To:     frowand.list@gmail.com, gregkh@linuxfoundation.org,
        keescook@google.com, kieran.bingham@ideasonboard.com,
        mcgrof@kernel.org, robh@kernel.org, sboyd@kernel.org,
        shuah@kernel.org, tytso@mit.edu, yamada.masahiro@socionext.com
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        kunit-dev@googlegroups.com, linux-doc@vger.kernel.org,
        linux-fsdevel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        linux-nvdimm@lists.01.org, linux-um@lists.infradead.org,
        Alexander.Levin@microsoft.com, Tim.Bird@sony.com,
        amir73il@gmail.com, dan.carpenter@oracle.com,
        dan.j.williams@intel.com, daniel@ffwll.ch, jdike@addtoit.com,
        joel@jms.id.au, julia.lawall@lip6.fr, khilman@baylibre.com,
        knut.omang@oracle.com, logang@deltatee.com, mpe@ellerman.id.au,
        pmladek@suse.com, rdunlap@infradead.org, richard@nod.at,
        rientjes@google.com, rostedt@goodmis.org, wfg@linux.intel.com,
        Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add KUnit to root Kconfig and Makefile allowing it to actually be built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
Changes Since Last Revision:
 - Masahiro reported a number of issues here on the previous revision;
   however, all of the changes actually needed to happen on earlier or
   later patches.
---
 Kconfig  | 2 ++
 Makefile | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

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
index 26c92f892d24b..2ea87a8fe770d 100644
--- a/Makefile
+++ b/Makefile
@@ -969,7 +969,7 @@ endif
 PHONY += prepare0
 
 ifeq ($(KBUILD_EXTMOD),)
-core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
+core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/ kunit/
 
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
-- 
2.21.0.1020.gf2820cf01a-goog

