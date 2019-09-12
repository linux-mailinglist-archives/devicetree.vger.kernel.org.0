Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9A5CB112A
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 16:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732566AbfILObK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 10:31:10 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:37618 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732579AbfILObH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Sep 2019 10:31:07 -0400
Received: by mail-lf1-f65.google.com with SMTP id w67so19528706lff.4
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2019 07:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GGFnevdB6/W3Bn08vXZUmYabxaeEv2/WytcSluM4/qA=;
        b=ncaEmNwJoGN+h9j/w2zBIKBQZsgZQT2H68ZJRafK8UQg1HqUSTqLYVkpITITzG6hYp
         8kNSTxCfdTHB8SlHaOYh+ZtMRu8pMEDN3T6x22PO3AiC3vRwRw+JrMqlP/Jk74y6t3mX
         ywWS24EkuibJ2tShu+SqULfWeNSIMKPpr5wJREZX7Tc1cL+bYwQCkSoznpU7aTReSWjF
         jyH9hbh2kpExgjM79iT+iG6bEqijxuIXLbmtAyZikQrSeR0MiiA079g1SNBe9hFsvZwK
         C1lQqzudFaoE/DZcKU/0HVRJdxc8hXy5dcBdFy2kIB3D3tvU/DZJjJo/WTKqNQBI+1qo
         0Y+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GGFnevdB6/W3Bn08vXZUmYabxaeEv2/WytcSluM4/qA=;
        b=s6ADYdihE3/SZveqtj5XZjUXvQ7hwAPf8O5EfUxpaKIsMIBXuVWQv/EA+eSKN6UWvz
         kcSiON1end5a9cDlnWQdtxF4w4bYReA9n8EsGX9odbVC4Y9TbnX8F9WMcg/mDS90rsbd
         5Joh7LqJgo4NUulX6JubzxWC4278Wyj4Os1V8qhYRcBr6cgngpTI2PMyn+gpknn8kdTg
         oiBfm8CALC9CTFW2L48X8NBLJd7cvJWIy8SOsYtyxSGaWPGibF35634kr7iwzhxiIsNX
         LS0v0oOKaFG5qdpOMX3ryc/zFf7b+rTRN0VnSUkdALicNH5hPDeu5rwIlN2O67uxdcjD
         48eA==
X-Gm-Message-State: APjAAAXqQBWwGnI2JU+scm3RjQc6bcul/7DSw4JGh37dEjC4zuZ1LfSM
        u3llP0PYuck46/hhfeYiJPA8M/JnrwqL2CJWmBzCdQ==
X-Google-Smtp-Source: APXvYqxO9Z8c7OrTKavPMGL2/MV6p57Y1bzJgt/HX0TZHAPCfiKQUMd+9yPlAdhhtCF+f1UbeWI7+mA8oZoL7ARgpjY=
X-Received: by 2002:ac2:530e:: with SMTP id c14mr1286884lfh.165.1568298665420;
 Thu, 12 Sep 2019 07:31:05 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568274587.git.rahul.tanwar@linux.intel.com>
 <CACRpkdb7bPo7oH9w5OhAsOoQXx=MWjJELd5JvBt3R1sPdMjnpw@mail.gmail.com> <20190912135806.GA2680@smile.fi.intel.com>
In-Reply-To: <20190912135806.GA2680@smile.fi.intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Sep 2019 15:30:52 +0100
Message-ID: <CACRpkdYcdaoA_D6YyKJuT5bfJ5QE4LWfXF8+R1y01xaWJaJZuQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] pinctrl: Add new pinctrl/GPIO driver
To:     Andriy Shevchenko <andriy.shevchenko@intel.com>
Cc:     Rahul Tanwar <rahul.tanwar@linux.intel.com>,
        Mika Westerberg <mika.westerberg@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
        qi-ming.wu@intel.com, yixin.zhu@linux.intel.com,
        cheol.yong.kim@intel.com,
        Mathias Nyman <mathias.nyman@linux.intel.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 12, 2019 at 2:58 PM Andriy Shevchenko
<andriy.shevchenko@intel.com> wrote:
> On Thu, Sep 12, 2019 at 11:11:32AM +0100, Linus Walleij wrote:
> > Hi Rahul,
> >
> > thanks for your patches!
> >
> > On Thu, Sep 12, 2019 at 8:59 AM Rahul Tanwar
> > <rahul.tanwar@linux.intel.com> wrote:
> >
> > > This series is to add pinctrl & GPIO controller driver for a new SoC.
> > > Patch 1 adds pinmux & GPIO controller driver.
> > > Patch 2 adds the dt bindings document & include file.
> > >
> > > Patches are against Linux 5.3-rc5 at below Git tree:
> > > git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git
> >
> > OK nice, I think you need to include Mika Westerberg on this review
> > as well, because I think he likes to stay on top of all things intel
> > in pin control. (Also included two other Intel folks in Finland who usually
> > take an interest in these things.)
>
> Linus,
> nevertheless I guess you may give your comments WRT device tree use
> (bindings, helpers, etc) along with some basics, (like devm_*()
> [ab]use I just noticed).

I plan to look at the patches per se but right now I don't have much
time because soon there is merge window and kernel summit,
the patches just need to age a little bit like a good wine ;)

Yours,
Linus Walleij
