Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D386727BB18
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 04:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727649AbgI2Cmd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 22:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727300AbgI2Cmc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 22:42:32 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87B79C0613CE
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 19:42:32 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id y194so2060043vsc.4
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 19:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uw5nh9RN7R8U+ZfvbK0LtQsN77w7IZwaYJoxj3Q8zTU=;
        b=E7VInnTq9YtJfNECE3WhKz1gAcEfu2eoQ9hfsWJ+pYVHD/ULkNL/f47iZFimBIyzNM
         jgyB/Lq+OZDNtdGMnuHz15GEfjV0VeT5k96cpLK9NUxVewPXsNuGNoU4oImBlZ+u/2SC
         BmPs988t0J8fGIfP+xfMYtcUe828ipQuQnLdeaJUePjpbUjrrDqFaNIn99x09WfBsHyZ
         KOqZVGs62a/Yz+9ZWJwtmO7fDeNcfNoZpRW8ldbc2XJLUIOYlhyr/IcvmHH7qLNluvTD
         tJ6f6laWejUu2optt11xWdWX9fW2PHA2RN8zg1NShsr112WGQ9u5GNaKxIRhd5+riSHc
         iang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uw5nh9RN7R8U+ZfvbK0LtQsN77w7IZwaYJoxj3Q8zTU=;
        b=eq7KSlrWpprws7YGcZXEDcHHGGBQRlhg7/jM5IRdno8AQ9SVjrc5XJ/F8gH1haVDys
         C9DXl5mWLqSAOOAJSKJWUgz2KWNbswQjR9oqufvpiXOaebx5+e1Fmy+wWjl+N5HQ1uHN
         cU+Vp6MDgLw73QtKWmogHCTJSAqySurqqXLrl3Ceg/Mh/KWr2ARoRLtkzHV15s7Cpzbv
         KKh9rQiRVm6o5KZe+uc0gl4r2ZBKYDp2n2R1HhpB5t1y139vYDc0/y2I7AyYJdKwQ+E2
         Clyma4xIhWZhfDFqWKD6ISuSmxDkWVrGrlPY0VKiDyj56ZW6A3SsLv1cFvFo9PT4GIlx
         iZwQ==
X-Gm-Message-State: AOAM531cHnAuU7vFzk64JJu/7UuaaTVi4G8Cf6ZuWRRGHXsoWffV0yHR
        9kE0PoVPR5TI2TDw5zI6oi9q8V/loP5cBPJLU/rghg==
X-Google-Smtp-Source: ABdhPJzUOhalNuyQlawgnc0Ao2D/WTkcabtSxp8DpUZ9Rx7W8PpIMnHiINcJa7hNtuSHiG6LpOi0mMD/whksr4Je/ac=
X-Received: by 2002:a67:e3d4:: with SMTP id k20mr1614553vsm.60.1601347351497;
 Mon, 28 Sep 2020 19:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200921195555.1050731-1-badhri@google.com> <20200921195555.1050731-3-badhri@google.com>
 <20200922155910.GA2759479@bogus>
In-Reply-To: <20200922155910.GA2759479@bogus>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Mon, 28 Sep 2020 19:41:54 -0700
Message-ID: <CAPTae5JijeJEZUzFQK18rzevYj1231_-0OKKzQj84PXEAKm1OQ@mail.gmail.com>
Subject: Re: [PATCH v8 03/11] dt-bindings: usb: Maxim type-c controller device
 tree binding document
To:     Rob Herring <robh@kernel.org>
Cc:     USB <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <treding@nvidia.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Prashant Malani <pmalani@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 22, 2020 at 8:59 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, 21 Sep 2020 12:55:47 -0700, Badhri Jagan Sridharan wrote:
> > Add device tree binding document for Maxim TCPCI based Type-C chip driver
> >
> > Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> > ---
> > Changes since v1:
> > - Changing patch version to v6 to fix version number confusion.
> >
> > Changes since v6:
> > - Migrated to yaml format.
> >
> > Changes since v7:
> > - Rebase on usb-next
> >  .../devicetree/bindings/usb/maxim,tcpci.yaml  | 63 +++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/maxim,tcpci.yaml
> >
>
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> Error: Documentation/devicetree/bindings/usb/maxim,tcpci.example.dts:38.36-37 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/usb/maxim,tcpci.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1366: dt_binding_check] Error 2
>
>
> See https://patchwork.ozlabs.org/patch/1368587
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
>
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
>
> Please check and re-submit.
>

Fixed in v9 and have sent it out.

Thanks,
Badhri
