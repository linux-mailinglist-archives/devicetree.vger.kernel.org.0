Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1700A64261
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2019 09:17:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727148AbfGJHQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jul 2019 03:16:38 -0400
Received: from mail-qk1-f201.google.com ([209.85.222.201]:53853 "EHLO
        mail-qk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726246AbfGJHQi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jul 2019 03:16:38 -0400
Received: by mail-qk1-f201.google.com with SMTP id d11so1169109qkb.20
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2019 00:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=i+cHtqqH4D1BH2a9iTheu+r071sQgiMbeMpUxd8ISoM=;
        b=rXtTc/GOsRHQaJA6Ws9m+pPNjzj+5rLwHJOomjY2PFfSoikcebfEh5U/5Io+IpJ2JJ
         sM4s5p4wN84uuPK2wawFNwAGeY9GYiSz3gKcm4jFzMNbWra728QlSnFcIoeT+m1EAIpQ
         QYGB2VP1qrToWeK1FH7eNgzJf3m412kAZCT3ZN31EcDBjPTkvFUL4JSVf1OOOQLhkPxP
         qhKxwtWnOPYc2lStgRZSCL7PBZzLS8fq+h81Z2b/9gBDtF2PmASidrMput/8CQSYTF8q
         QhARbBGrlb61/UdpbwVrR2rxDIQXadxthWMUWtQilvHubiBfryuBwCriKQkCnPf+VzpZ
         Hp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=i+cHtqqH4D1BH2a9iTheu+r071sQgiMbeMpUxd8ISoM=;
        b=GtyBMiP/3dZHaVs0DGD64vleL5NKtpCzSkh6zbdmN68F4IPjcZIHpO3kCkVhEypDyD
         XMHtggjCSzrR+3XIYMInPFYmMdsao3Aat5/mHWuwkGuIcqQGLr78Ld3lrE4j+CGlF74R
         wQAPm8nXadPDd0KMl1XrytawwSeLGG4G1Y392NPhU2aEDv6dxik9CJoOp4G5rzP2eLXy
         UVTfP1OlReOAICnC/YKIjyb1VoCO4qQy/b94pyg24nYIorQpz6HgGlUosWirgRK/x6ri
         x/eE8GeyG2cz/wtaHjv7BbsdeMuBJ3qQfSG/WJrXOsC2eaz9V+76CLAfoo44gE0Gz6bD
         aTXQ==
X-Gm-Message-State: APjAAAUV5SyHwmv52gSX870DCSpAzTVDEYMAysTXbl82IUqGG+HvwfyB
        h8joG8dy3ex/N6NhB3tNIDPWuHXvkfVGu4SUCNTmZg==
X-Google-Smtp-Source: APXvYqzYNxURl6tjKPLLeSDRwuA+Ulct62WFYCncfJUl0k0d7oT8xpOt/Y76tt3BkIrOVTj039P4TCLZz7hT/KHUodnwGg==
X-Received: by 2002:a0c:f20e:: with SMTP id h14mr19332341qvk.246.1562742996789;
 Wed, 10 Jul 2019 00:16:36 -0700 (PDT)
Date:   Wed, 10 Jul 2019 00:14:58 -0700
In-Reply-To: <20190710071508.173491-1-brendanhiggins@google.com>
Message-Id: <20190710071508.173491-9-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190710071508.173491-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v8 08/18] objtool: add kunit_try_catch_throw to the noreturn list
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
        kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the following warning seen on GCC 7.3:
  kunit/test-test.o: warning: objtool: kunit_test_unsuccessful_try() falls through to next function kunit_test_catch()

kunit_try_catch_throw is a function added in the following patch in this
series; it allows KUnit, a unit testing framework for the kernel, to
bail out of a broken test. As a consequence, it is a new __noreturn
function that objtool thinks is broken (as seen above). So fix this
warning by adding kunit_try_catch_throw to objtool's noreturn list.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>
Link: https://www.spinics.net/lists/linux-kbuild/msg21708.html
Cc: Peter Zijlstra <peterz@infradead.org>
---
 tools/objtool/check.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 172f991957269..98db5fe85c797 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -134,6 +134,7 @@ static int __dead_end_function(struct objtool_file *file, struct symbol *func,
 		"usercopy_abort",
 		"machine_real_restart",
 		"rewind_stack_do_exit",
+		"kunit_try_catch_throw",
 	};
 
 	if (func->bind == STB_WEAK)
-- 
2.22.0.410.gd8fdbe21b5-goog

