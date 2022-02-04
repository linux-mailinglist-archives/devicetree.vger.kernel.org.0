Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFECF4A94BC
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 08:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236279AbiBDHsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 02:48:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232153AbiBDHsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 02:48:38 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F8F3C06173D
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 23:48:38 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id 124so15672586ybw.6
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 23:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FIpf4uvWApsh/ceG6pW+nvDB0Myo7yE0BrCqz+r4aRU=;
        b=Ko6+QR3SFKvHg4SSgkszZ4jODIJ11+H3RDlwjgPybirCTYR/6laIQjh6XPghVMbG1K
         8JMiVEuyCaRTkbjnbNDcL5cuYzFmULSwr9YHKmZmIo7X5lNr9OoJ9ChBqjh5q0fCz4mc
         2jEgsbnT3jBPks7HwE6BfzS+T2IfEap3Kuz67dokUCGqwBDSWx6og7W9HVt7oKzqLzTj
         muymnG+jv4LcQ3wHEAZWPvUd8+0iexVt3GRuX4uiwmMUGFIxavcIFjpMTNu8wyv296wb
         FR+DDkOhHvsl94ikJaqDef15dquXVjxGtdpY5eZmbFocHVQfWbNJJwwHVFf46/1JkkzW
         WnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FIpf4uvWApsh/ceG6pW+nvDB0Myo7yE0BrCqz+r4aRU=;
        b=73JWXNuuXYAIuKNST20qUFNqnoLze6w5FZ3dJXz1AFMmHspKc8AoIy9B+DiZYAmtQb
         aIdeKtUz0iGrOJ+4IuNhoCD5uanyyGWSFRzcfR+F3xmT4F4OcaO5zUrM8aRJ9VnZ5Za7
         xGT1Tiq/RE6GT0Qjnd+L01r5c6UPqVO93jJZEvB/NezYhF2EDNSN1+PxSATntoY6h++R
         jBqajgn13vwIX2VDcpYZV5wSmV0CAHwPslb1hrH5lWZDEw7rAaJNTFpk2TSLF4blSfm5
         FkalIVwVUFB1UuDWk+ZR3Ao33mwiY+j7sL8R2XpL6HDkzRLKSG7w9BPcDszdNHsgtdOw
         vVgw==
X-Gm-Message-State: AOAM5309Uk00MIpEnTx+dZxEz963B0ta6zP8WOAGsW4IHRDNgvIPSAfH
        MKq+ydxo7Dr2PsD/LlzrbGLtZV08ZigAjWDFY26ACw==
X-Google-Smtp-Source: ABdhPJxhYkG8kt166e8BIyfcFNvrkv1EXmgM2pVRAPQ1fWZMhgc4LoTlurfNWXfew+edKAsuJv+VM8vccVUqhDLXVgI=
X-Received: by 2002:a25:5143:: with SMTP id f64mr1813491ybb.520.1643960917186;
 Thu, 03 Feb 2022 23:48:37 -0800 (PST)
MIME-Version: 1.0
References: <20220203211150.2912192-1-frowand.list@gmail.com>
In-Reply-To: <20220203211150.2912192-1-frowand.list@gmail.com>
From:   Naresh Kamboju <naresh.kamboju@linaro.org>
Date:   Fri, 4 Feb 2022 13:18:25 +0530
Message-ID: <CA+G9fYsdpm+PwSkLF5qkfnL_jY7HEh5cDapQXteWa7Og+WgoVA@mail.gmail.com>
Subject: Re: [PATCH 1/1] of: unittest: print pass messages at same loglevel as fail
To:     frowand.list@gmail.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        Brendan Higgins <brendanhiggins@google.com>,
        Anders Roxell <anders.roxell@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Feb 2022 at 02:42, <frowand.list@gmail.com> wrote:
>
> From: Frank Rowand <frank.rowand@sony.com>
>
> Printing the devicetree unittest pass message for each passed test
> creates much console verbosity.  The existing pass messages are
> printed at loglevel KERN_DEBUG so they will not print by default.
>
> Change default to print the pass messages at the same loglevel as
> the fail messages.
>
> The test community expects either a pass or a fail message for each
> test in a test suite.  The messages are typically post-processed to
> report pass/fail results.
>
> Suppressing printing the pass message for each individual test is
> available via the kernel command line parameter unittest.hide_pass.
>
> Signed-off-by: Frank Rowand <frank.rowand@sony.com>

Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>

After this patch applied I see the change in test output log
from the dmesg,

It would be great if you could add fail and skip cases.
When we find failures / regressions or when tests change from pass to fail
we will report those on the mailing list.

output:
-------
[    3.290336] ### dt-test ### start of unittest - you will see error messages
[    3.298352] ### dt-test ### EXPECT \ : Duplicate name in
testcase-data, renamed to \"duplicate-name#1\"
[    3.298535] Duplicate name in testcase-data, renamed to \"duplicate-name#1\"
[    3.318485] ### dt-test ### EXPECT / : Duplicate name in
testcase-data, renamed to \"duplicate-name#1\"
[    3.319418] ### dt-test ### pass of_unittest_check_tree_linkage():278
[    3.335123] ### dt-test ### pass of_unittest_check_tree_linkage():279
[    3.341662] ### dt-test ### pass of_unittest_check_phandles():387

Test job:
https://lkft.validation.linaro.org/scheduler/job/4473059#L1019

> ---
>  Documentation/admin-guide/kernel-parameters.txt |  4 ++++
>  drivers/of/unittest.c                           | 17 ++++++++++++++++-
>  2 files changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index f5a27f067db9..045455f9b7e1 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -5997,6 +5997,10 @@
>                         Note that genuine overcurrent events won't be
>                         reported either.
>
> +       unittest.hide_pass
> +                       Disable printing individual drivers/of/unittest test
> +                       pass messages.
> +
>         unknown_nmi_panic
>                         [X86] Cause panic on unknown NMI.
>
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 70992103c07d..2cfbdc6b29ac 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -12,6 +12,7 @@
>  #include <linux/errno.h>
>  #include <linux/hashtable.h>
>  #include <linux/libfdt.h>
> +#include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/of_fdt.h>
> @@ -32,6 +33,19 @@
>
>  #include "of_private.h"
>
> +MODULE_LICENSE("GPL v2");
> +static bool hide_pass;
> +
> +static int __init hide_pass_setup(char *str)
> +{
> +       hide_pass = true;
> +       return 0;
> +}
> +
> +early_param("hide_pass", hide_pass_setup);
> +module_param(hide_pass, bool, 0);
> +MODULE_PARM_DESC(hide_pass, "Disable printing individual of unittest pass messages");
> +
>  static struct unittest_results {
>         int passed;
>         int failed;
> @@ -44,7 +58,8 @@ static struct unittest_results {
>                 pr_err("FAIL %s():%i " fmt, __func__, __LINE__, ##__VA_ARGS__); \
>         } else { \
>                 unittest_results.passed++; \
> -               pr_debug("pass %s():%i\n", __func__, __LINE__); \
> +               if (!hide_pass) \
> +                       pr_err("pass %s():%i\n", __func__, __LINE__); \
>         } \
>         failed; \
>  })
> --
> Frank Rowand <frank.rowand@sony.com>


--
Linaro LKFT
https://lkft.linaro.org
