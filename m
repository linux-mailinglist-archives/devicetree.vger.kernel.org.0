Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E06B4B2447
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 12:29:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237302AbiBKL3k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 06:29:40 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:47440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236888AbiBKL3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 06:29:39 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D2ADE5E
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 03:29:38 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id o19so23764717ybc.12
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 03:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HR1DCsTq8FbR4jChot452jyukpf3RSW8+TwQL0Os82c=;
        b=Oewgw1mANcEdHO97bC22n4WPZLTCVC20k22OUzh472scR9w+kXiinaBinhtSUNAJBE
         30h04hfNyANEr3E+79vKP4cOziY8SvRnHul53RlONP2GF/wdaYIDH6DtqEhCXyp5d7Q5
         XRYkAhtSHMI9XQ75cGkj9bQxrwCNYE+QkPIXr1iWbwO0Lr3RfJPUVeWRSKP0CSHA4S5b
         16fEpYa7w7XpKDpc4TjnT7yQOoWuYsgi68UtNXtIYwhJedKjvNB8UTTsiWEO6T1YXP2Z
         uHuvfBHy8bcLYQmumDUmkf5yJeMgrztrMkeq9FJwDscFwxjIUCXsu1weZjQGTmtuZkT5
         Xspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HR1DCsTq8FbR4jChot452jyukpf3RSW8+TwQL0Os82c=;
        b=q7gyLToDxm1UjotdsZQWiv4GFKJL8ftdt3VSLNr6l90EmzrAiR5ryJLLT/MfV95YgG
         XTHef/qkS9nrEJQIhfR7628vtQGS96GTCN+189kbrkOptS6+Tgn+Kd61GRPsHzMsFjPB
         1SgQi9dCTfxX4fkPtQ44I1AIGZTfuOtqSMDo9Vw0RpgpDMXTnpityxqyC5EbgkJki5nV
         x/DW+qzWJeszB2R+xM4+3MOTN+3NP64fC25JAM7DH8HUgrko4nzK4aarQfPbrReKiaYJ
         NGvTV8qzxy5yiiIpGlqGBAP1ImYK8WES6uSqUwrsrGnDNz50C5cDZJpaYY/5K3xSXnn+
         WREw==
X-Gm-Message-State: AOAM530tYJnDQFyHq547u59gJDam1ibmp0r3Bw83Ez7kvt3yXhnJDckY
        DUkMpdzuTYVU4xsrNZWc1er3bJH3EjXDkDWBrS6DaA==
X-Google-Smtp-Source: ABdhPJy9RurKC32AmfoVtPB3myBVO7shQtC7EsCY0JHURPmETIddV1Edg7rfNmYRfWt4357UrFJU1CJpEa2eHyaGgDU=
X-Received: by 2002:a81:3542:: with SMTP id c63mr1093033ywa.87.1644578977117;
 Fri, 11 Feb 2022 03:29:37 -0800 (PST)
MIME-Version: 1.0
References: <20220210230819.3303212-1-frowand.list@gmail.com>
In-Reply-To: <20220210230819.3303212-1-frowand.list@gmail.com>
From:   Naresh Kamboju <naresh.kamboju@linaro.org>
Date:   Fri, 11 Feb 2022 16:59:25 +0530
Message-ID: <CA+G9fYvuk-vhRXU1ncz51WJfbR3CZ=VgY9SZmw9Qoub6P2NeWA@mail.gmail.com>
Subject: Re: [PATCH 1/1] of: unittest: print pass messages at PR_INFO level
To:     frowand.list@gmail.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        Brendan Higgins <brendanhiggins@google.com>,
        Anders Roxell <anders.roxell@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Feb 2022 at 04:38, <frowand.list@gmail.com> wrote:
>
> From: Frank Rowand <frank.rowand@sony.com>
>
> Printing the devicetree unittest pass message for each passed test
> creates much console verbosity.  The existing pass messages are
> printed at loglevel KERN_DEBUG so they will not print by default.
>
> Change default to print the pass messages at loglevel PR_INFO so
> they will print with the default console loglevel.
>
> The test community expects either a pass or a fail message for each
> test in a test suite.  The messages are typically post-processed to
> report pass/fail results.
>
> Signed-off-by: Frank Rowand <frank.rowand@sony.com>

Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>

Test log link,
https://lkft.validation.linaro.org/scheduler/job/4529628#L1697

> ---
>
> One review comment to similar previous patch "of: unittest: print
> pass message as same lovlevel as fail" suggested to also change
> the text of the pass message to include "PASS" instead of "pass".
> I would rather leave the text unchanged to minimize churn for any
> existing users of the message.  It is my intention to change the
> pass and fail messages to KTAP version 2 format as soon as that
> version of the specification is completed.
>
>  drivers/of/unittest.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 70992103c07d..9012e6900965 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -44,7 +44,7 @@ static struct unittest_results {
>                 pr_err("FAIL %s():%i " fmt, __func__, __LINE__, ##__VA_ARGS__); \
>         } else { \
>                 unittest_results.passed++; \
> -               pr_debug("pass %s():%i\n", __func__, __LINE__); \
> +               pr_info("pass %s():%i\n", __func__, __LINE__); \
>         } \
>         failed; \
>  })
> --
> Frank Rowand <frank.rowand@sony.com>


--
Linaro LKFT
https://lkft.linaro.org
