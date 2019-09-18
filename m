Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA29B6A7D
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 20:25:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388815AbfIRSYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 14:24:54 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:33966 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388793AbfIRSYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 14:24:51 -0400
Received: by mail-io1-f67.google.com with SMTP id q1so1560402ion.1
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 11:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9gPHsl5MGafDizMhJaXlJwLXsMzDh1ZKR3owfwW7eEw=;
        b=KS7mlFR2kYZtKZLYic9KTEy8y8YhqrWC5gUb9WrC/SSt6dH2xLi5fyfB/IM9nURwQz
         DUekaLCyNL1i8ITYPCZLY8Flwm/fzYSvKtMI9KJT+w8tPLuuwJ3zJICqSBQTqXISknro
         ew4MTUtCP5sGGMDVAKzpG040d6oFFUAVnLJMxMJw0rUoOY9zZx0IsLwegNvTjEiVy3fL
         U4zN7gPCjvhfmtqjm37dJwPBXyTpyWZ0aTz7xeBwpfKePUwCanSzWXODZg3khJTvtznz
         lQNOy8kDW5X+A9BKks9UgwPd43GkXChYA+gH+RdTqg5nOG6eLwvA4IBQAaN3rRT3mgA7
         evSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9gPHsl5MGafDizMhJaXlJwLXsMzDh1ZKR3owfwW7eEw=;
        b=OkAttcg3vS/KXgZXYWthAVZhUYYQ0I7Pp7dkANr1u+Sbaqe/94oqE5SZ0MKNvENwyd
         mxAPtx68BQLTiJfpa8OOrA95OViC+B5JSo/V/nJeMxRlnpz4eslaCJHKxoVIzUlJGujS
         Cfl7foBkFFOvllC8mWqxhPXVKtg9IzrK6esn0bTp2P2902fleLMas5JfD/YO5MzSt+O5
         tV4xqMW7hfUXMaQd6JTR6r+uu8js3zs/mWGU/itTpDQLTqBKEp0n2BydfyyMr3ww/8Hv
         H8AQ4R1u5URA8wwHtYPdXP2GOmHcUY7gWxE5BLV46zP+wi9lbPTvHyiUEmMw2enRrNbu
         ihAQ==
X-Gm-Message-State: APjAAAVhb+A96aKpzIwcaju9kKahdr8o6wt006rn5ZG2m9eMoTBs7UZN
        Q84I6LmJ0OE7bYCJIrwrWYmgk9htdu+s5pR5+D+irg==
X-Google-Smtp-Source: APXvYqwTNqNxGkvhQrvIve8ulxfhIJR74fxSNr+7tatQwwBPQBCBy+Miqdmsa3o8F93SsRvO4dlzQ+KDmRdNEzHO5z0=
X-Received: by 2002:a5d:8b07:: with SMTP id k7mr740866ion.20.1568831089859;
 Wed, 18 Sep 2019 11:24:49 -0700 (PDT)
MIME-Version: 1.0
References: <1568815340-30401-1-git-send-email-pragnesh.patel@sifive.com> <CAL_JsqJwsLkQGjjoS_RvBXjSq4irrVPEpwrwTv7wL732YHM4dg@mail.gmail.com>
In-Reply-To: <CAL_JsqJwsLkQGjjoS_RvBXjSq4irrVPEpwrwTv7wL732YHM4dg@mail.gmail.com>
From:   Pragnesh Patel <pragnesh.patel@sifive.com>
Date:   Wed, 18 Sep 2019 23:54:36 +0530
Message-ID: <CAN8ut8LObxfEEQbhmncToG8u=Ec6rESLYHcriT5cu7RAHxbDqw@mail.gmail.com>
Subject: Re: [PATCH] regulator: dt-bindings: Fix building error for dt_binding_check
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 18, 2019 at 7:58 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Sep 18, 2019 at 9:02 AM Pragnesh Patel
> <pragnesh.patel@sifive.com> wrote:
> >
>
> The subject could be more specific rather than being one that applies
> to any dt_binding_check breakage in regulators.
>

Thanks for pointing me out, I will take care this in future patches.

> > Compatible property is not of type 'string' so replace enum
> > with items.
> >
> > Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/regulator/fixed-regulator.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> > index a78150c..8d4a7b2 100644
> > --- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> > +++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> > @@ -29,7 +29,7 @@ if:
> >
> >  properties:
> >    compatible:
> > -    enum:
> > +    items:
> >        - const: regulator-fixed
> >        - const: regulator-fixed-clock
>
> This means you expect: compatible = "regulator-fixed", "regulator-fixed-clock";
>
> Did you actually run 'dt_binding_check' because it should fail on the example?
>
> I gave you exact change to make. Just remove 'const: ' on each entry.

Thanks for correcting me, i rechecked "make dt_binding_check" and it's failed.
I will send the patch again with the updated subject line.

>
> Rob
