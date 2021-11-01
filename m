Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE78A442404
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:32:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbhKAXfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:35:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbhKAXfM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 19:35:12 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CB79C061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 16:32:39 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id bl12so3855861qkb.13
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 16:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+2AekMdRuUmfOF7hhTuIxKtH3t+eGKh3B1xilMoKACM=;
        b=Jp0dzjCcHMjdLxHSiQYMeJjotS4CWEV+xV5wUqv2FCfd8S6n8/a+8yzv9m94JTRNtk
         XhrGnn0FwdRRmoOKp0+beuC4ACgLpZAxXDqsB+6KbmXx1ub0GP8i35r0Yt5p0J+eQY4c
         L56WI5Gn1IT7cwDkHiTeUWV7sNJ99pWs2nTtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+2AekMdRuUmfOF7hhTuIxKtH3t+eGKh3B1xilMoKACM=;
        b=AdWKHuJRJpYNKGsXE4rO+2K+5MezrC/1WVHMOe4KmnXR+ksNiGRn0Ap8OmYuYrneBI
         waWXVC4wfUD4pEPC0Uk5pIdE/0eqrLIZy7DgYTrld66fXHkgPPb2wD1ehrf4JzS+N8wG
         VBAxKAfz6/srBSiW91FSpTr35rwcEciQ0tWoi9giPW9mLdIdx8QauhPy39ZIWCHs4AYi
         mw/wUrLIUGVaRwB4h+rGUNf1nYwlPWgV87DIv0OAmGeQ18mQ7KMt1tlkKI4J2N3tTNs6
         DZXKm1Sk7UqS4vRsEIh/Sh5p5rw/h5nnXpFYchu9Md+7RBfulpWDZ1aC11m1B/LaOidI
         /UYA==
X-Gm-Message-State: AOAM531ewOMHg1u5iSVWl+BMuH9tkTpJdYB9XeqkOt54q/oGhfWK2CC/
        zjSNKP8vC/3+7B3lyAjoKp2nbTn6LiulSXsHDOk=
X-Google-Smtp-Source: ABdhPJwl3foI/6kisHiZGLKmg+JxVJubW0Q7Ez6VewrfNRBphIvGg4bOcd8M2Wj3eAHSQO3KK1ed65VJIOIQSICSmMc=
X-Received: by 2002:a05:620a:4588:: with SMTP id bp8mr18490618qkb.292.1635809558119;
 Mon, 01 Nov 2021 16:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com> <20211101233751.49222-3-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-3-jae.hyun.yoo@intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 1 Nov 2021 23:32:25 +0000
Message-ID: <CACPK8XeF2UZDmhXE69pgXXRzJW6Ni=86O=QRNCo2Y1+wyf0YwQ@mail.gmail.com>
Subject: Re: [PATCH -next 2/4] ipmi: bt: add clock control logic
To:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds clock control logic into the LPC
> BT driver.
>
> Fixes: 54f9c4d0778b ("ipmi: add an Aspeed BT IPMI BMC driver")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/char/ipmi/bt-bmc.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index 7450904e330a..a20f92cc7b18 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -5,6 +5,7 @@
>
>  #include <linux/atomic.h>
>  #include <linux/bt-bmc.h>
> +#include <linux/clk.h>
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> @@ -62,6 +63,7 @@ struct bt_bmc {
>         wait_queue_head_t       queue;
>         struct timer_list       poll_timer;
>         struct mutex            mutex;
> +       struct clk              *clk;
>  };
>
>  static atomic_t open_count = ATOMIC_INIT(0);
> @@ -423,6 +425,19 @@ static int bt_bmc_probe(struct platform_device *pdev)
>         if (IS_ERR(bt_bmc->base))
>                 return PTR_ERR(bt_bmc->base);
>
> +       bt_bmc->clk = devm_clk_get(dev, NULL);
> +       if (IS_ERR(bt_bmc->clk)) {
> +               rc = PTR_ERR(bt_bmc->clk);
> +               if (rc != -EPROBE_DEFER)
> +                       dev_err(dev, "Unable to get clock\n");
> +               return rc;
> +       }
> +       rc = clk_prepare_enable(bt_bmc->clk);
> +       if (rc) {
> +               dev_err(dev, "Unable to enable clock\n");
> +               return rc;
> +       }
> +
>         mutex_init(&bt_bmc->mutex);
>         init_waitqueue_head(&bt_bmc->queue);
>
> @@ -433,7 +448,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
>         rc = misc_register(&bt_bmc->miscdev);
>         if (rc) {
>                 dev_err(dev, "Unable to register misc device\n");
> -               return rc;
> +               goto err;
>         }
>
>         bt_bmc_config_irq(bt_bmc, pdev);
> @@ -457,6 +472,11 @@ static int bt_bmc_probe(struct platform_device *pdev)
>         clr_b_busy(bt_bmc);
>
>         return 0;
> +
> +err:
> +       clk_disable_unprepare(bt_bmc->clk);
> +
> +       return rc;
>  }
>
>  static int bt_bmc_remove(struct platform_device *pdev)
> @@ -466,6 +486,8 @@ static int bt_bmc_remove(struct platform_device *pdev)
>         misc_deregister(&bt_bmc->miscdev);
>         if (bt_bmc->irq < 0)
>                 del_timer_sync(&bt_bmc->poll_timer);
> +       clk_disable_unprepare(bt_bmc->clk);
> +
>         return 0;
>  }
>
> --
> 2.25.1
>
