Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB48833B4D0
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 14:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbhCONmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 09:42:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbhCONmL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 09:42:11 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4654C061762
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 06:42:10 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id f26so16272465ljp.8
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 06:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X5pbXwp0jQ2rf0gS7DhWdzLYC/FdH6bN4erEwcj2Y3w=;
        b=eRplPfivqS4zqfEYdF7516756o43/GB69SM030Lbw5+KTM9ZUInXX/BsqvDJOCTrSJ
         T7E3OChMVSid26+uM2F2wdfKttRfMWparxKTulKyxeUFZoyGmFZzXE3mIeX3HWMZHy8k
         xuvNEXQv6GSE8rTrBlpxyZC8+AWImHRr0wx/Gp5aUttX1MjU15Ysl6yNHPbG9rdQoq7R
         o1lPpIhZ+goNEheJUcJBvq4LczBIX7twM/7vGM791jYQm6tXSVC0Z1/S3hj4ENKIHEU4
         I777yFwNAYg6JAe4kzRaSC50HptYWMybYuAynnqkEnNJUwuTHQpmCmh11JDhDcmlo/OF
         /6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X5pbXwp0jQ2rf0gS7DhWdzLYC/FdH6bN4erEwcj2Y3w=;
        b=T+bZZrSYuX7ULenaIQs/C8wtFoxUI7x4wx5TaFk9wfBn5Ewr9p2vPQPax9I3emxezC
         AL2noMUKYhJpSxm2Zpgn19hoNGlG3A+gmSgMqr+uOrHy/5nSG2E0Eys8ke5C4NmSxxds
         6NL7ymIPJkS4HgMyqenl/3KBwleumwC2Q1sIXXVb+pGrQEflUNlw+Hrqapa2iMizlzP/
         FycBYkRrLbmnlDG8Z0thuRkQK4yyr65oEpqprtLJuajDP6+mNzRMU4WoEP8xPtRA+U52
         JImlIPXZzKdid8a5xhxVcIiIososLpWXF61UHInsQYCVcpDqjX8W4gNn4k3SJgQHCxnq
         csCQ==
X-Gm-Message-State: AOAM533FAYQO5yVGyksKPYrtryjxLXRfbjSP6O10KrWgqcVGDf2b4EIo
        d7skFaJh/WG/1FcORuETRBFkYkAPpM9TBQ6qLY8IaA==
X-Google-Smtp-Source: ABdhPJyUx7DcXAXEJVIgv4ihoNgOoMUF8D64squn8PsmV1cihZWhRtLWq6RORu3j6jnE9W9WyqQlmCiNzfnWCPRvJWk=
X-Received: by 2002:a2e:864a:: with SMTP id i10mr10195795ljj.467.1615815729288;
 Mon, 15 Mar 2021 06:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210309015750.6283-1-peng.zhou@mediatek.com> <CACRpkdYTkW7b9SFEY6Ubq4NicgR_5ewQMjE2zHvGbgxYadhHQQ@mail.gmail.com>
 <YEpqkAq6wOZ+TpR9@gmail.com>
In-Reply-To: <YEpqkAq6wOZ+TpR9@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Mar 2021 14:41:58 +0100
Message-ID: <CACRpkdb7vmFgH0XTG3Z6OzFv0CfPsBguKqVAZt=PZ+ms2-0WjA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] mmc: Mediatek: enable crypto hardware engine
To:     Eric Biggers <ebiggers@kernel.org>
Cc:     Peng Zhou <peng.zhou@mediatek.com>,
        linux-block <linux-block@vger.kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Satya Tangirala <satyat@google.com>,
        Wulin Li <wulin.li@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Eric,

thanks for stepping in and clarifying! I get it better now, I though
this was some other encryption scheme "on the side".

There is one worrying thing in the patch still:

On Thu, Mar 11, 2021 at 8:08 PM Eric Biggers <ebiggers@kernel.org> wrote:
> On Thu, Mar 11, 2021 at 02:48:23PM +0100, Linus Walleij wrote:
> > On Tue, Mar 9, 2021 at 3:06 AM Peng Zhou <peng.zhou@mediatek.com> wrote:

> > > +       /*
> > > +        * 1: MSDC_AES_CTL_INIT
> > > +        * 4: cap_id, no-meaning now
> > > +        * 1: cfg_id, we choose the second cfg group
> > > +        */
> > > +       if (mmc->caps2 & MMC_CAP2_CRYPTO)
> > > +               arm_smccc_smc(MTK_SIP_MMC_CONTROL,
> > > +                             1, 4, 1, 0, 0, 0, 0, &smccc_res);

So MSDC_AES_CTL_INIT. Assumes we are using AES and AES
only I suppose?

> It happens in the same place, cqhci-crypto.c.  Mediatek's eMMC inline encryption
> hardware follows the eMMC standard fairly closely, so Peng's patch series just
> sets MMC_CAP2_CRYPTO to make it use the standard cqhci crypto code, and does a
> couple extra things to actually enable the hardware's crypto support on Mediatek
> platforms since it isn't enabled by default.  (*Why* it requires an SMC call to
> enable instead of just working as expected, I don't know though.)

Now I don't know the limitations of cqhci crypto. Clearly it only supports
AES today.

However would the cqhci crypto grow support for any other crypto
like 2Fish or DES and the user request this, then I suppose there is
no way for the MTK driver to announce "uh no I don't do that"?

Or will this cqhci hardware only ever support AES?

Yours,
Linus Walleij
