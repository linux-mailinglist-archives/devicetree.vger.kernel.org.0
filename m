Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A536A28748E
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 14:53:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730117AbgJHMxC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 08:53:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729722AbgJHMxB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 08:53:01 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 813E7C061755
        for <devicetree@vger.kernel.org>; Thu,  8 Oct 2020 05:53:01 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id y11so6328278lfl.5
        for <devicetree@vger.kernel.org>; Thu, 08 Oct 2020 05:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FxfUEUi6zktpxu/mlP33p6/3OJKcxiReX3Cme3ajLG0=;
        b=YeojNDCsQODyiJZ/R38+vxn5EJw4k/ERri6Mi8QyXr5m4Me+jTQIAhUUzsaAahWU+X
         LszzF8mWkioTVYMHddjpOouqAwORZjKguhbls8m0LPvph5zE8AIg86ggT8Ty1xAA8li/
         18acI8/qw2KPO2xPrPxxe6+D3UdNi4tGtr/kMWBJ0c2mrBwNSoaU1i8hYT6Sz0b1/QbV
         ZJpD+T/dy4jbFyXOEUtwtcVkw9iXORXjSzA9UqBpf2aIySgyKpvSL7EgImAtb9Kzf50M
         eE0FGwFohyGIC55kjvSnsDVuNAFxtcRaSrHtjaEfHfSQEziNufD6N8jd28C1D9Oarvlv
         On4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FxfUEUi6zktpxu/mlP33p6/3OJKcxiReX3Cme3ajLG0=;
        b=TTbmyD+pVPprUQmBWe16V/GXe7DL3Sc/JYvoLNlzMzJhyfFhd3A3kqltMFc++/bxAV
         KY8/6+pNPbw6QgxNp+JCGDKuJWePE6ICxVBCVgQCGsWMO/017+YKtttf3KQHSo6oOd4p
         ml4hfc2zmQ0TNL1Hd9r9DsplKbW774AkofXqaei7eQM+gZZdoQ4IHEU6PD0PRlKSqP60
         yGImyH+apeX+4TPBrtt0SXvYqjWzUTQgsfq5K66sNA4OWcJTBqtUGeTRvHn+boJ11y9k
         ZmKl6yLfntZRsnFbDM14gr3BmMjumyJ+XveDOO8M9WlzpJOVl5ENmT7dKjxdvqy5/4XD
         6VQw==
X-Gm-Message-State: AOAM532lXQzuayTnmacp5omuxemJLnKHQAPbk8/T2Cy8LGld5+og7uQ0
        Ygpx9GrnIWwezPNHM78FBZbShhZ9fTfdy1d3Osa1QQ==
X-Google-Smtp-Source: ABdhPJxWSJs3kvo45P2YLqWbDVciugobKkAjYEoD9pfLA4jMPAe/NHoL9+PN3M50sfXIsT8DxeHkPtRiH5Tv6Jpo8p4=
X-Received: by 2002:ac2:483b:: with SMTP id 27mr2398747lft.441.1602161579900;
 Thu, 08 Oct 2020 05:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200930092053.2114-1-mike.looijmans@topic.nl>
 <CACRpkdbsYcmv9m2EiQNgPDZ0MdjPnWTxXvnqATVPvWpB=8Oqkw@mail.gmail.com>
 <20201006193235.GA2689027@bogus> <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.e0bfef86-33da-4b33-b856-e32dbc3f2992@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.6462df9b-cbe0-4101-9ae9-b09faa895eb1@emailsignatures365.codetwo.com>
 <CACRpkdZmYKn1JU8PeA+GAJDuVEtWQrH-3KijH4+df88Bt=iZtA@mail.gmail.com> <bbc77660-40b3-72b2-4829-4f1d53cbfd2b@topic.nl>
In-Reply-To: <bbc77660-40b3-72b2-4829-4f1d53cbfd2b@topic.nl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 8 Oct 2020 14:52:48 +0200
Message-ID: <CACRpkdZ6W4=MHmsAzoyzDhKu4Btgg73PZjOrOb7UV64OSHWn=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: pca953x: Add support for the
 NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Rob Herring <robh@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 8, 2020 at 9:36 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
> On 07-10-2020 11:58, Linus Walleij wrote:
> > On Tue, Oct 6, 2020 at 9:32 PM Rob Herring <robh@kernel.org> wrote:
> >> On Wed, Sep 30, 2020 at 11:50:38AM +0200, Linus Walleij wrote:
> >>> On Wed, Sep 30, 2020 at 11:21 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
> >>>
> >>>> The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> >>>> with 8 GPIOs, latched interrupts and some advanced configuration
> >>>> options. The "C" version only differs in I2C address.
> >>>>
> >>>> This adds the entry to the devicetree bindings.
> >>>>
> >>>> Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
> >>>> ---
> >>>> v2: Split devicetree and code into separate patches
> >>>
> >>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >>>
> >>> This patch 1/2 does not apply to my tree, I suppose Rob has
> >>> to apply it?
> >>
> >> Nope, no changes in my tree.
> >
> > Weird, OK Mike apply this wherever it should be applied or rebase
> > on my GPIO tree and resend if you want me to apply it.
> >
>
> Could you provide me a git URL + branch to rebase it on, i'll send you a new
> patch then.

It's this:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=devel

git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git devel

Yours,
Linus Walleij
