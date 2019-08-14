Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A69D8CB27
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 07:53:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727841AbfHNFxC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 01:53:02 -0400
Received: from mail-pl1-f202.google.com ([209.85.214.202]:35453 "EHLO
        mail-pl1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727831AbfHNFxB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 01:53:01 -0400
Received: by mail-pl1-f202.google.com with SMTP id s21so64107424plr.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 22:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=wKRiEgRg+/DU2DEnW3JXAo2ALm03Zt5EFSXAgxYeqSQ=;
        b=e8FnE4mzksKwKvHVDlhEsFZll89sGvciMN+IkbM+27IPEZvPiJyQZInF8yV9NhMYq5
         vs+LUwYUb20DCcYCn6SgBoTbY0tfpRpCJoQOagxYzblakC9sr9JOvrg2Z+ToMmRMwvzh
         W+3DTHzK7xnkQZVQ6KUpVxkAPxTGGt6gMvmYWcNyb4TdDD2AZp6DkCO9LxTIB6gc2NkR
         bYLd8E3VZQ28b+NnVnfDxgRPMzHrRVicrIjbAMBpySYF0hIPz5mX7m0RgEkpsqWHBtlN
         y2eydwtd5RoWffNSECN7w7xvCO4q2ycFf/Ue1TR7mmJyNY9xmsOr5bUS2NW6Xg+zMMY4
         HQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=wKRiEgRg+/DU2DEnW3JXAo2ALm03Zt5EFSXAgxYeqSQ=;
        b=PRZu2ZnLa+uPXDe+9MZbXTn6eHYU7f1TUHDGjIiXKcQ5i5djSLDkUojhvJ//Cgg9ME
         +sC/CxUSSEsn9/7QtjFgckMjFrvqCWd9S8SGTDVyX286nbd9uW5ZeY9HA15yT8sLeNed
         JbfsQ12cWIqnwXwtUDctHmJBKDeDsTfSbdieHlPjfE2jvpIjmofFF+IMGIQ8/q06GHgX
         4CapQ+v8Sacwn9BjPz1336eA99gpfBpI5zFinIH3vuZi5TlyvVKpJ7co0673DqaAXYIW
         SYqENgBuRz/saCo7SZKLd9ph3McgAKNb/6YdWtj6N4yVJg1Ytln661t589elgZhrZzis
         Awzw==
X-Gm-Message-State: APjAAAXtlwPsClGL1GwG9PM2Vozrogv1MxSiRIUKVW+lkQd0LnzqgRsv
        XNiBbKTMjnPYi1i+gs+Fn3YvPr5Lv2QZtH5TjO4aRg==
X-Google-Smtp-Source: APXvYqx8XUDmNFB1JCe6JK97kDtNg7kpWNPeo7m6HD2zKnDH3s9T3hzazsfNitBEdvd+5JAN+R311UbpJ0stRAJs22yoRQ==
X-Received: by 2002:a63:be0d:: with SMTP id l13mr568158pgf.357.1565761980273;
 Tue, 13 Aug 2019 22:53:00 -0700 (PDT)
Date:   Tue, 13 Aug 2019 22:51:08 -0700
In-Reply-To: <20190814055108.214253-1-brendanhiggins@google.com>
Message-Id: <20190814055108.214253-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190814055108.214253-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v13 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
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
        Iurii Zaikin <yzaikin@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section,
and add Iurii as a maintainer.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Cc: Iurii Zaikin <yzaikin@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Luis Chamberlain <mcgrof@kernel.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f0bd77e8a8a2f..0cac78807137b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12965,12 +12965,14 @@ F:	Documentation/filesystems/proc.txt
 PROC SYSCTL
 M:	Luis Chamberlain <mcgrof@kernel.org>
 M:	Kees Cook <keescook@chromium.org>
+M:	Iurii Zaikin <yzaikin@google.com>
 L:	linux-kernel@vger.kernel.org
 L:	linux-fsdevel@vger.kernel.org
 S:	Maintained
 F:	fs/proc/proc_sysctl.c
 F:	include/linux/sysctl.h
 F:	kernel/sysctl.c
+F:	kernel/sysctl-test.c
 F:	tools/testing/selftests/sysctl/
 
 PS3 NETWORK SUPPORT
-- 
2.23.0.rc1.153.gdeed80330f-goog

