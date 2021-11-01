Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18093442423
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:36:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231455AbhKAXjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbhKAXjZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 19:39:25 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F5F7C061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 16:36:51 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id v29so16098126qtc.10
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 16:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pmid3FU5YvCxo0zgOGInuBcMmgEuXW80FVg90+iTmBQ=;
        b=TI5IZanq3Fhrg9BqUaGHomQGExeanmPBRt6rkePMxm+nhhpNKkkWjJOc0GsInRMNk7
         VPlRfeqdhel3q3OV8PBcmLt79mL3j2cNQ6RJ8mmzNWYqOf7SBgHXjQFzYyKKzHKIGCkt
         dJv7isjhUh3GOcHeYHSDDq426L916mLlzJGUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pmid3FU5YvCxo0zgOGInuBcMmgEuXW80FVg90+iTmBQ=;
        b=znl8kafc9GXEtYqUy9iPSNtLgUk3D0/onaCCDvN5Uu1CTO3jO1ZBF5/dBJXtWxgDuR
         y4/2brMkjIHEYtaDEjdv/D5BqyFXrZwLjeqYDs4AtHXB1/ssv1L+GeNcOPnj9nYYbwgd
         JoMb72D5Yk7uHFuo6gdD/aoVsa5LiYa1pL2Rn0HvvquMAqgr2DkuaaaHPwpQNQMv5kvf
         QcndGjUR6xAMXnbgm56fv8zUrs0MJHeIhs/2XYRuaGeWlCkTRLI9g6tNZWDlYmW1Wc2N
         s4M9tN2N0SWJ+Ez7bBdSx88IXZNQ2+YHcIrUiSKpCQMNPbXD2PZI2kgOeTmD7Ivc/uG1
         GzjA==
X-Gm-Message-State: AOAM532i6BDzaCVUXomdTIKtw7/t4ay9d29UG2265Hz1EKrMuz72U3CS
        an0UcV1tWkLWc3oRhg1cuQbNsA/m/Fk8r/l82JM=
X-Google-Smtp-Source: ABdhPJyRea5xbiVxpgagPn5g8jYKHqnv1Wr8Iudl5+8G0cJaDNMGFdAblrI+/llOFZb3xgPlWKt9BlHm3lZ6cZ5SSD8=
X-Received: by 2002:ac8:5e49:: with SMTP id i9mr32849455qtx.145.1635809810659;
 Mon, 01 Nov 2021 16:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 1 Nov 2021 23:36:38 +0000
Message-ID: <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
To:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Zev Weiss <zev@bewilderbeest.net>
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
> Hello all,
>
> This series is for appliying below fix to all Aspped LPC sub drivers.
> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>
> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
> can be registered ahead of lpc-ctrl depends on each system configuration and
> this difference introduces that LPC can be enabled without heart beating of
> LCLK so it causes improper handling on host interrupts when the host sends
> interrupts in that time frame. Then kernel eventually forcibly disables the
> interrupt with dumping stack and printing a 'nobody cared this irq' message
> out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK individually
> so this patch adds clock control logic into the remaining Aspeed LPC sub
> drivers.

Thanks for sending this out!

This will resolve a few of the issues we have in the issue tracker:

https://github.com/openbmc/linux/issues/210
https://github.com/openbmc/linux/issues/130

The patches look good to me. I think you've just missed Corey's PR for
v5.16, but I will stick them in the openbmc tree once they've had a
review.

Cheers,

Joel

>
> Please review this series.
>
> Thanks,
> Jae
>
> Jae Hyun Yoo (4):
>   ARM: dts: aspeed: add LCLK setting into LPC IBT node
>   ipmi: bt: add clock control logic
>   ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
>   ipmi: kcs_bmc_aspeed: add clock control logic
>
>  arch/arm/boot/dts/aspeed-g4.dtsi   |  1 +
>  arch/arm/boot/dts/aspeed-g5.dtsi   |  5 +++++
>  arch/arm/boot/dts/aspeed-g6.dtsi   |  5 +++++
>  drivers/char/ipmi/bt-bmc.c         | 24 ++++++++++++++++++++++-
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
>  5 files changed, 61 insertions(+), 5 deletions(-)
>
> --
> 2.25.1
>
