Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA10D563F0
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 10:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726341AbfFZIDI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 04:03:08 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36683 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbfFZIDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 04:03:08 -0400
Received: by mail-pg1-f196.google.com with SMTP id c13so836016pgg.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 01:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nwcdyZlVJNYhzqAX8drYdwwlincSCC0RlYdtVUa7uAU=;
        b=IkHW2/q5zYf/AiFOwOUn62sZGCukGK93pV5qaXaFIqAD6rVurvvvVguZ0CQNqSK004
         PUW6XYRD1tpIvu/H8uK2xdNaMWkc3s+ZreXHoEsItZgP1H729MJ8nowT1aehVpl1AnJq
         rAPmVbRpyeOR+0aKXV1iywesPypOO3F4fwUcKnHNHDKkSlnXU9KrB33bQAymKu7tZx6G
         yt/Ix8apmwB+zPUY0f7g7GrCvvhKCA2B8FFf68JI9BW8d/snEU6oOmLqSE4EOwMnXWLP
         uFddQ1SWm8yfpnKxzglfseoQZZbmazxOSGTrgVrxfJIOk1+YhP4zhoDMctTsB330F1Sn
         /4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nwcdyZlVJNYhzqAX8drYdwwlincSCC0RlYdtVUa7uAU=;
        b=dWBH12y599+e0DUcgkv9Ro037JP7DaLmgP7BnnKRdEievqu5PbdEICu+o0WYkkFxxm
         OBAayxA+uKk383ic+fg4xc8xReA55GGGiXyIOU9Vn9qDVH28+iizFQcrB8T/pmlKFIdI
         0PTSxd+JoFnn1/Nq5SzsqNRXRCseSNZpyBNG9RsOiYU7rZnu5p0vl316QRzJAwkQ6B5l
         viLy/3FcaqA20h8gIDU1OEwe4XfJIlTEzy/lEkXO6MYrBmtY6KEQX0O3uvJLyHzTpHnb
         86ItzZ+6cejuHBYvz0uZkw6qmPDxKrSBXBCcvcZ9sE8PYo5BvK9DI2mXtzPF7xhwm7tT
         G8Zw==
X-Gm-Message-State: APjAAAXpYuciRkmrnUORgEWBgBz+vod1oaKpuEx+ndpFkwAjH2v4MLoV
        OP5HHBxEXIzetRnuHqh1b3vPx2/3ms0plm0wMeGiDA==
X-Google-Smtp-Source: APXvYqzSvFzyXqC4mv+sYfABQnmt0YNMhvFTkgdzLZZeovItyFY3wThgA7+iWx0YSEf5WS6vtdXjsfVxGyJkZN8WaD8=
X-Received: by 2002:a17:90a:9382:: with SMTP id q2mr3140021pjo.131.1561536186861;
 Wed, 26 Jun 2019 01:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-14-brendanhiggins@google.com> <20190626000150.GT19023@42.do-not-panic.com>
In-Reply-To: <20190626000150.GT19023@42.do-not-panic.com>
From:   Brendan Higgins <brendanhiggins@google.com>
Date:   Wed, 26 Jun 2019 01:02:55 -0700
Message-ID: <CAFd5g44kkepB2hZcpYL-NB5ZHYE5tP7W-0yducGCX7Khd9gd9w@mail.gmail.com>
Subject: Re: [PATCH v5 13/18] kunit: tool: add Python wrappers for running
 KUnit tests
To:     Luis Chamberlain <mcgrof@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Josh Poimboeuf <jpoimboe@redhat.com>,
        Kees Cook <keescook@google.com>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        shuah <shuah@kernel.org>, "Theodore Ts'o" <tytso@mit.edu>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        devicetree <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        kunit-dev@googlegroups.com,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        linux-fsdevel@vger.kernel.org,
        linux-kbuild <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:KERNEL SELFTEST FRAMEWORK" 
        <linux-kselftest@vger.kernel.org>,
        linux-nvdimm <linux-nvdimm@lists.01.org>,
        linux-um@lists.infradead.org,
        Sasha Levin <Alexander.Levin@microsoft.com>,
        "Bird, Timothy" <Tim.Bird@sony.com>,
        Amir Goldstein <amir73il@gmail.com>,
        Dan Carpenter <dan.carpenter@oracle.com>,
        Daniel Vetter <daniel@ffwll.ch>, Jeff Dike <jdike@addtoit.com>,
        Joel Stanley <joel@jms.id.au>,
        Julia Lawall <julia.lawall@lip6.fr>,
        Kevin Hilman <khilman@baylibre.com>,
        Knut Omang <knut.omang@oracle.com>,
        Logan Gunthorpe <logang@deltatee.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Petr Mladek <pmladek@suse.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Richard Weinberger <richard@nod.at>,
        David Rientjes <rientjes@google.com>,
        Steven Rostedt <rostedt@goodmis.org>, wfg@linux.intel.com,
        Felix Guo <felixguoxiuping@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 25, 2019 at 5:01 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 01:26:08AM -0700, Brendan Higgins wrote:
> >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
> >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-crash.log
> >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-failure.log
> >  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-no_tests_run.log
> >  create mode 100644 tools/testing/kunit/test_data/test_output_isolated_correctly.log
> >  create mode 100644 tools/testing/kunit/test_data/test_read_from_file.kconfig
>
> Why are these being added upstream? The commit log does not explain
> this.

Oh sorry, those are for testing purposes. I thought that was clear
from being in the test_data directory. I will reference it in the
commit log in the next revision.
