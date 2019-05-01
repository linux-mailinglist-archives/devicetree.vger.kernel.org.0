Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 844BA10FFF
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 01:05:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726385AbfEAXEr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 19:04:47 -0400
Received: from mail-oi1-f201.google.com ([209.85.167.201]:49504 "EHLO
        mail-oi1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726285AbfEAXEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 19:04:44 -0400
Received: by mail-oi1-f201.google.com with SMTP id i203so326682oih.16
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 16:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=chqbiB4K0p/zEKsVbXe4iW2Xpj6yAVIrWQhjpUaEvyA=;
        b=GE0P464mBtC8wrhfBO7g793E4I4dqW2RIP7+tHwU/PC57hjNo6fmzw5HElvCwVJ32i
         ZkuQrQPVcHSfFt6v723klhDSf/BCGNNvLIImZbUWeECzTjsM5G6js6Y4BB5vjlq16LAN
         nySbgJK0p0eYO+3PMfew/5txRXxjgd1tovWq5YKZjGYzlDxEQ+Q6GSZnOMuy+DFhqKMT
         uJ3lLNt16MIjzkoA11kKC2qDuhYsfvUVFDvaTEF8ASb3zPAzcT2kDwqalnmACvYsWp+Z
         7T2yCIRZwzp4TkmtK1c2L5CoSAeNHI4xKfYHm9/xZ7l5IMHM0zff93mqcrZ2D4EpNlPo
         NA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=chqbiB4K0p/zEKsVbXe4iW2Xpj6yAVIrWQhjpUaEvyA=;
        b=WRWm1PwYmTzAHX48dt5e208+3ZMiLP8lWfmbl1JH7BABncCr3to761oYN9Efbnn5gD
         JWYLt8ACAelzwGY05Og1qeQbTswrz5etGU5e2aO+T2cB81658boALe7Ta2Vt4E61XAbK
         AEx+p84YefUI2DwOu7dr+xW3ncgQYrl4pcAqckg4kG0Ya+79ST3R9jBQwYAZmbu5Jyuk
         1c/iL4ynbXZF2nZiz0WLWPh6YFBOArK4Jr/VA9dp3UIieukjneZd3azN5KL8HX9PJRf9
         dCzHTESjw28FllRwe2O3PW6m8dToxnF4B6Z51punSzF51xtjihSfVV6eq3MoNMB7bNby
         4uKg==
X-Gm-Message-State: APjAAAXQN+Q4R1CmFCspkNYYdNeJMUhxqnCjRDYxC5ROCF5+1kiNfZkx
        lm5tay4BMCQ/Q0xmDVd8ynpSpmb4df/TsSCQgltydA==
X-Google-Smtp-Source: APXvYqziahGWgdBZbQfWG2ft5ebLp+ozkgppLiv8kSSis3P9fMvGcrL9eofrdvhLG15CPkadoMaZYjcvL9G8Pk6lBON+yg==
X-Received: by 2002:aca:cd88:: with SMTP id d130mr481038oig.63.1556751883876;
 Wed, 01 May 2019 16:04:43 -0700 (PDT)
Date:   Wed,  1 May 2019 16:01:22 -0700
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Message-Id: <20190501230126.229218-14-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190501230126.229218-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 13/17] kunit: defconfig: add defconfigs for building KUnit tests
From:   Brendan Higgins <brendanhiggins@google.com>
To:     frowand.list@gmail.com, gregkh@linuxfoundation.org,
        keescook@google.com, kieran.bingham@ideasonboard.com,
        mcgrof@kernel.org, robh@kernel.org, sboyd@kernel.org,
        shuah@kernel.org
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
        pmladek@suse.com, richard@nod.at, rientjes@google.com,
        rostedt@goodmis.org, wfg@linux.intel.com,
        Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add defconfig for UML and a fragment that can be used to configure other
architectures for building KUnit tests. Add option to kunit_tool to use
a defconfig to create the kunitconfig.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 arch/um/configs/kunit_defconfig              |  8 ++++++++
 tools/testing/kunit/configs/all_tests.config |  8 ++++++++
 tools/testing/kunit/kunit.py                 | 17 +++++++++++++++--
 tools/testing/kunit/kunit_kernel.py          |  3 ++-
 4 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 arch/um/configs/kunit_defconfig
 create mode 100644 tools/testing/kunit/configs/all_tests.config

diff --git a/arch/um/configs/kunit_defconfig b/arch/um/configs/kunit_defconfig
new file mode 100644
index 0000000000000..bfe49689038f1
--- /dev/null
+++ b/arch/um/configs/kunit_defconfig
@@ -0,0 +1,8 @@
+CONFIG_OF=y
+CONFIG_OF_UNITTEST=y
+CONFIG_OF_OVERLAY=y
+CONFIG_I2C=y
+CONFIG_I2C_MUX=y
+CONFIG_KUNIT=y
+CONFIG_KUNIT_TEST=y
+CONFIG_KUNIT_EXAMPLE_TEST=y
diff --git a/tools/testing/kunit/configs/all_tests.config b/tools/testing/kunit/configs/all_tests.config
new file mode 100644
index 0000000000000..bfe49689038f1
--- /dev/null
+++ b/tools/testing/kunit/configs/all_tests.config
@@ -0,0 +1,8 @@
+CONFIG_OF=y
+CONFIG_OF_UNITTEST=y
+CONFIG_OF_OVERLAY=y
+CONFIG_I2C=y
+CONFIG_I2C_MUX=y
+CONFIG_KUNIT=y
+CONFIG_KUNIT_TEST=y
+CONFIG_KUNIT_EXAMPLE_TEST=y
diff --git a/tools/testing/kunit/kunit.py b/tools/testing/kunit/kunit.py
index 7413ec7351a20..63e9fb3b60200 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -11,6 +11,7 @@ import argparse
 import sys
 import os
 import time
+import shutil
 
 import kunit_config
 import kunit_kernel
@@ -36,14 +37,26 @@ parser.add_argument('--build_dir',
 		    'directory.',
 		    type=str, default=None, metavar='build_dir')
 
-cli_args = parser.parse_args()
+parser.add_argument('--defconfig',
+		    help='Uses a default kunitconfig.',
+		    action='store_true')
 
-linux = kunit_kernel.LinuxSourceTree()
+def create_default_kunitconfig():
+	if not os.path.exists(kunit_kernel.KUNITCONFIG_PATH):
+		shutil.copyfile('arch/um/configs/kunit_defconfig',
+				kunit_kernel.KUNITCONFIG_PATH)
+
+cli_args = parser.parse_args()
 
 build_dir = None
 if cli_args.build_dir:
 	build_dir = cli_args.build_dir
 
+if cli_args.defconfig:
+	create_default_kunitconfig()
+
+linux = kunit_kernel.LinuxSourceTree()
+
 config_start = time.time()
 success = linux.build_reconfig(build_dir)
 config_end = time.time()
diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
index 07c0abf2f47df..bf38768353313 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -14,6 +14,7 @@ import os
 import kunit_config
 
 KCONFIG_PATH = '.config'
+KUNITCONFIG_PATH = 'kunitconfig'
 
 class ConfigError(Exception):
 	"""Represents an error trying to configure the Linux kernel."""
@@ -81,7 +82,7 @@ class LinuxSourceTree(object):
 
 	def __init__(self):
 		self._kconfig = kunit_config.Kconfig()
-		self._kconfig.read_from_file('kunitconfig')
+		self._kconfig.read_from_file(KUNITCONFIG_PATH)
 		self._ops = LinuxSourceTreeOperations()
 
 	def clean(self):
-- 
2.21.0.593.g511ec345e18-goog

