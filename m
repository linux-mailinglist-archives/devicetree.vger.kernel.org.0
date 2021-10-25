Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 185E643A825
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 01:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235023AbhJYX2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 19:28:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234945AbhJYX2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 19:28:50 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCE14C061767
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 16:26:27 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id z6so359106lji.12
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 16:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/yg9hgJMvA7baky1gPxmKx1/8p6roc03HL0AMsIkWjo=;
        b=ZNDjDv6/XWgw9Ehv4qSnugcZ4A0nWxeA5Oj2IqHy2QXhYUp+XKRzAfwoOxtA1WMHoA
         TSxEblXMvj0Bz0S/hS5VFWG80V2APvb0VX9zGsbqpA6ylIBo7dv2XvmFIy4OWYdjSnl1
         4r88Q1H9wCs8vcex9V9hcE+CUn+F7N3hzv+WeLp2qVjN9vXpXWlYU7RNm4WI/WbXjsWP
         /RnsN3a3Cas9m1Hfs/zayGyQdjllTZU7sCS27/96puperA6AMTS1LO30jo68+jPOLBVL
         xv+v7Yfk3RW9CZrTpQUtF9W5aQvkhRlIe/cGaZtwNWLoApw/+UUzzlCjUcTjKTXIlYFC
         x7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/yg9hgJMvA7baky1gPxmKx1/8p6roc03HL0AMsIkWjo=;
        b=gyNhTjl9dK+Z4gMi/dw+sJschEDT2tw2oH75OY407bvq0+CNvw2k73bQ+/eAndgqqM
         CVKQZsr2ov4/bZg9qoLEZ68qcDHPqITABcEf3i7RgXuj66hd3DVQ3frdcKhUpnR6qCgi
         D+vLJr1u5W6JfUki5sx1IcxdVz8L8MDEGQ3xfqzKYuEbo+KGOJNRpHw53WTNWLJpy5gL
         KougKStylKtCUr1vugtOpxz9XPrgCuhSe9mgPfvzERe1Q7mLtz5jx19gKi9HmNK6VyS2
         JFrUw5RakC/tcRshGaKym9BBtRumQmJGXvzoqG3uqhlsqDFUTCnYfChrjw6dmKEcs9pq
         BsFA==
X-Gm-Message-State: AOAM533Dq0fkhqzj3TZ/5ThzsH6PPS9yhc0Uvb3Vajl9FuqT09sFNXxs
        7XdtkYPRd4Gtxq2HCCy6+rJhCKSpTLedVaMhUUPPlA==
X-Google-Smtp-Source: ABdhPJz5oMKaC6A0znmMVRUW2QmwpIkB3WFzuOVijgqTXtns0MEAe26tQYWP1HMgvt4u07l1BqyR0v4p7iqMtDBdMB8=
X-Received: by 2002:a05:651c:111:: with SMTP id a17mr21602317ljb.145.1635204386221;
 Mon, 25 Oct 2021 16:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <20211024101838.43107-1-joey.gouly@arm.com> <44f573d2-4e77-a235-c45b-079eeb6a45a9@marcan.st>
In-Reply-To: <44f573d2-4e77-a235-c45b-079eeb6a45a9@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Oct 2021 01:26:15 +0200
Message-ID: <CACRpkdatSbH0+PnHe9PRPBgcfyFmHjn3vVSNR7s6cHk5K=yKOQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] pinctrl/GPIO driver for Apple SoCs
To:     Hector Martin <marcan@marcan.st>
Cc:     Joey Gouly <joey.gouly@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 25, 2021 at 11:13 AM Hector Martin <marcan@marcan.st> wrote:
> On 24/10/2021 19.18, Joey Gouly wrote:
> > Hi all,
> >
> > Here is the v4 patchset for the Apple pinctrl/GPIO driver.
> >
> > Changes since v3 [1]:
> >    - Applied Marc Zyngier's review/patch (with exception noted below)
> >    - Removed "apple,t8103-pinctrl" compatible from driver
> >    - Applied Acks/Review tags
>
> I mentioned two nits in a reply to #4, but nothing worth blocking
> merging over, so this is:
>
> Acked-by: Hector Martin <marcan@marcan.st>
>
> Linus: You can take everything but the MAINTAINERS patch, I'll push that
> one via SoC together with everything else for this window to avoid merge
> hell :)

Excellent Joey can you respin the series with Hectors fixes on patch #4
and add in the ACKs and review tags also Marc Z:s, so I can queue
this for v5.16 ASAP.

Any remaining issues can certainly be ironed out in-tree.

Yours,
Linus Walleij
