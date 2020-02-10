Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72BC0157013
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 08:51:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726118AbgBJHvC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 02:51:02 -0500
Received: from mail-vs1-f65.google.com ([209.85.217.65]:35726 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725468AbgBJHvC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 02:51:02 -0500
Received: by mail-vs1-f65.google.com with SMTP id x123so3513918vsc.2
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2020 23:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u3O+szgfwEJKuo4yzEkWiTVNHGumVBlqNQZE9NfjV7I=;
        b=QsC4PDi5ZlYbAjfw6pBUa0KPphhE/VVoGj6kVK1MAL7QZqo9wjmEBLb9Ikbb7Fp770
         o5u/R5ApawhiT5Waee9rnPrac69HShLMufZLupjUjI/CMI3snfnPnH5LdDWGPL7q39dr
         Evp1CxZoX8gCVNOonqGfUiXeiuwNtbZ+WegCEVukUffQd+2gilW7icSVWUk6sIYv749b
         slMXTUuMoGaFUwlQwE/ldzraKsne3DiELel3X/Jp70Dz80496OwgjZdM776TADILQLuO
         yAjl54QHAMbG0F+Y6cIXjrS11+kCEVl5NN47dW7kpuL4QC9qVts5HHxcSN5tLZgx3jY5
         Purg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u3O+szgfwEJKuo4yzEkWiTVNHGumVBlqNQZE9NfjV7I=;
        b=agqER0cqVG0uFsrVju+3snvUjnTxi4nHxP/9hkjb8tKR02SVE2fuh6CnBcmdQs/AjT
         uYZXVXm68lNMEwJh7B902GRw5FlKuZkKIdD7P9PsL2DMkXnOeGujePqkoCfHj58yZDpC
         OefZxBSVZG8EK/A9FhsulaIhQGzoMttEeG2PAZbxbRIp+wQqYAJmijAdn/ZJLpFLOkgY
         yJHV/SYpmKWZKrMidK2JkgHd2fDNlZnqEZngpmV9tO5n23IauvnxjpL712oIGQfB9dKK
         R810yySHy63SAK+5ET1MobBO5IZfMaL/0I61NKRjWp9GYQ7Nms6GKi5agbWIoWeOX+vh
         sloA==
X-Gm-Message-State: APjAAAUztZACF2aIAOi6pg0v2RixFzvSjw3VSftrP1eAl7XqxOCeKY5T
        z3Ut/Ud7qfijIIzWPq5uF5VPZGnC2XmJKhYialgqFg==
X-Google-Smtp-Source: APXvYqypbI21Yfdn+EA6ub6ed50JBoiEO60Ni/AfECIKY1ZvJ0o8EXmbyp6DUzxmNBzjRT7iyDPYhJySfgC8H0ANL9s=
X-Received: by 2002:a67:ee02:: with SMTP id f2mr5601456vsp.165.1581321061313;
 Sun, 09 Feb 2020 23:51:01 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org> <CAPDyKFoz0gUkoofWkd6dFuOkRWqeeCDrv84UHyYYowAAgTiitw@mail.gmail.com>
 <CANMq1KA+3O+G+_r=xY98eK-in5i3HWg+4B4-ONk-6qWS3a9=0g@mail.gmail.com>
In-Reply-To: <CANMq1KA+3O+G+_r=xY98eK-in5i3HWg+4B4-ONk-6qWS3a9=0g@mail.gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 10 Feb 2020 08:50:25 +0100
Message-ID: <CAPDyKFrq5KQ7CHnMSCv7GqzpQyVfDQgLYjUVzeweTwKR3AmM4g@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power domains
To:     Nicolas Boichat <drinkcat@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 9 Feb 2020 at 13:50, Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Fri, Feb 7, 2020 at 10:26 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Fri, 7 Feb 2020 at 06:27, Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > When there is a single power domain per device, the core will
> > > ensure the power domain is switched on (so it is technically
> > > equivalent to having not power domain specified at all).
> > >
> > > However, when there are multiple domains, as in MT8183 Bifrost
> > > GPU, we need to handle them in driver code.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > Besides a minor nitpick, feel free to add:
> >
> > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> >
> > Kind regards
> > Uffe
> >
> > [snip]
> > > +static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
> > > +{
> > > +       int err;
> > > +       int i, num_domains;
> > > +
> > > +       num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
> > > +                                                "power-domains",
> > > +                                                "#power-domain-cells");
> > > +
> > > +       /*
> > > +        * Single domain is handled by the core, and, if only a single power
> > > +        * the power domain is requested, the property is optional.
> > > +        */
> > > +       if (num_domains < 2 && pfdev->comp->num_pm_domains < 2)
> > > +               return 0;
> > > +
> > > +       if (num_domains != pfdev->comp->num_pm_domains) {
> > > +               dev_err(pfdev->dev,
> > > +                       "Incorrect number of power domains: %d provided, %d needed\n",
> > > +                       num_domains, pfdev->comp->num_pm_domains);
> > > +               return -EINVAL;
> > > +       }
> > > +
> > > +       if (WARN(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs),
> > > +                       "Too many supplies in compatible structure.\n"))
> >
> > Nitpick:
> > Not sure this deserves a WARN. Perhaps a regular dev_err() is sufficient.
>
> Ah well I had a BUG_ON before so presumably this is already a little better ,-)
>
> You can only reach there if you set pfdev->comp->num_pm_domains >
> MAX_PM_DOMAINS in the currently matched struct panfrost_compatible
> (pfdev->comp->num_pm_domains == num_domains, and see below too), so
> the kernel code would actually be actually broken (not the device
> tree, nor anything that could be probed). So I'm wondering if the
> loudness of a WARN is better in this case? Arguable ,-)

I see. It's not a big a deal, so feel free to keep as is.

[...]

Kind regards
Uffe
