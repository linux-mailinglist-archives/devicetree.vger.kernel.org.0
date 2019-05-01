Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC23B10F80
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 01:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726137AbfEAXCL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 19:02:11 -0400
Received: from mail-vs1-f73.google.com ([209.85.217.73]:51341 "EHLO
        mail-vs1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726152AbfEAXCL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 19:02:11 -0400
Received: by mail-vs1-f73.google.com with SMTP id g67so31471vsd.18
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 16:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=De7JrG6+3XL344zZMScSqunmKbgZceVjMJC0FL9AbxY=;
        b=qtzfVeePMbJhJqE+Yf+Kv1DhoZE9ng7nvFaWF8RJXgdCikBdWv36SI916RGwYzUukq
         xZ9iRq7CanllZWM7N5EMvSrH76h/QHHPUoEYCnmM+oUL1rzrZdP/C9kf6bQfkkH2oii8
         V97WCJiEG/EbkMT96CrHZ3ULLAQCRx09BXRHAZU8A+nmmtZPD4qqi9tcI9XX7ENyOW6Q
         pByKUepLMJrt85M4mkzTyPvyDYRRbm2pwYxrVTb6Gm/Oqz+saBFL/hmmcJKeXHcDy2/O
         6eNpA52lwMEF/MP27yaxHbVokdjjs1RKVkQH0OPZY00rCv9fgG3G1mGLf74KJ8HBy8CY
         U+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=De7JrG6+3XL344zZMScSqunmKbgZceVjMJC0FL9AbxY=;
        b=EXTEMZvHU5X40vCmcq/ckfNzAGHY86mTxKouiVnyKO/B3wEJW34tJ+LpKsnJJzXRGk
         Az043vifZ7qmMtmVnV90rZ35J6ebbLk8XoBG7ohDyYgANtJxb5jeYOyUsly4iSwYlKLw
         eXTw0mLTtZmoapMSk47Aw1g5hD4oH8Cl8iMAGWP+XiaG2j+3xxP/o6rhBM2EPWY+AWu9
         df8oe7U7vezrWlToPL01J08s7uFZmfJANYlTyxXchuvfuvafv/i0zrlTmHkDaaeAANDN
         Ab/G4hI3NE6SbaOkhESfg66aD7+ZxvvGjB9j5rx5RDklRD12OlXy58ia6yckqMIFrN5J
         ICOA==
X-Gm-Message-State: APjAAAWGq/21Z9KQd/qOXWljGKjOjw+XKFw4fkUJ9w/VMSI+k/9QFNfO
        EiQGPTkNG6zx+uic5T/VWHW+TeSOsit1W37uPOf00Q==
X-Google-Smtp-Source: APXvYqytaGaXIlQSl5wsYvREjZvXVeqTJ4FhNvP2xNvz38NyshdL0U4pqVOMRR/ps0I6/FLnggB5b5wmfrnXtO1aUnE0lA==
X-Received: by 2002:ab0:20a1:: with SMTP id y1mr213208ual.101.1556751729917;
 Wed, 01 May 2019 16:02:09 -0700 (PDT)
Date:   Wed,  1 May 2019 16:01:09 -0700
Message-Id: <20190501230126.229218-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
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

## TLDR

I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
5.2.

Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
we would merge through your tree when the time came? Am I remembering
correctly?

## Background

This patch set proposes KUnit, a lightweight unit testing and mocking
framework for the Linux kernel.

Unlike Autotest and kselftest, KUnit is a true unit testing framework;
it does not require installing the kernel on a test machine or in a VM
and does not require tests to be written in userspace running on a host
kernel. Additionally, KUnit is fast: From invocation to completion KUnit
can run several dozen tests in under a second. Currently, the entire
KUnit test suite for KUnit runs in under a second from the initial
invocation (build time excluded).

KUnit is heavily inspired by JUnit, Python's unittest.mock, and
Googletest/Googlemock for C++. KUnit provides facilities for defining
unit test cases, grouping related test cases into test suites, providing
common infrastructure for running tests, mocking, spying, and much more.

## What's so special about unit testing?

A unit test is supposed to test a single unit of code in isolation,
hence the name. There should be no dependencies outside the control of
the test; this means no external dependencies, which makes tests orders
of magnitudes faster. Likewise, since there are no external dependencies,
there are no hoops to jump through to run the tests. Additionally, this
makes unit tests deterministic: a failing unit test always indicates a
problem. Finally, because unit tests necessarily have finer granularity,
they are able to test all code paths easily solving the classic problem
of difficulty in exercising error handling code.

## Is KUnit trying to replace other testing frameworks for the kernel?

No. Most existing tests for the Linux kernel are end-to-end tests, which
have their place. A well tested system has lots of unit tests, a
reasonable number of integration tests, and some end-to-end tests. KUnit
is just trying to address the unit test space which is currently not
being addressed.

## More information on KUnit

There is a bunch of documentation near the end of this patch set that
describes how to use KUnit and best practices for writing unit tests.
For convenience I am hosting the compiled docs here:
https://google.github.io/kunit-docs/third_party/kernel/docs/
Additionally for convenience, I have applied these patches to a branch:
https://kunit.googlesource.com/linux/+/kunit/rfc/v5.1-rc7/v1
The repo may be cloned with:
git clone https://kunit.googlesource.com/linux
This patchset is on the kunit/rfc/v5.1-rc7/v1 branch.

## Changes Since Last Version

None. I just rebased the last patchset on v5.1-rc7.

-- 
2.21.0.593.g511ec345e18-goog

