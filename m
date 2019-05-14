Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EA631D07C
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 22:21:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726281AbfENUVy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 16:21:54 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40224 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726254AbfENUVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 16:21:54 -0400
Received: by mail-pg1-f195.google.com with SMTP id d31so120383pgl.7
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 13:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references:from
         :subject:cc:to:message-id:user-agent:date;
        bh=uoDtYNLxmfnyjmhDNW5zHRT+qpnOIDg1B+bgK/5yGhQ=;
        b=Pubk5GZB+S9VSfa/+8ROmv0paRWXtaHvd9Eb4XUsxxAFpVqlM0O7utgESaWXXCx+Un
         Gk+0xj8JlhPyiGJ3qgD+Kdl3DY2s+worBbIhiEQvWPJSJ/wI0Pu+tp64NeclZePm/Srk
         7a8yI6zo82+amZ01sBZV9NjyGENsTdIiO8OrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:from:subject:cc:to:message-id:user-agent
         :date;
        bh=uoDtYNLxmfnyjmhDNW5zHRT+qpnOIDg1B+bgK/5yGhQ=;
        b=ZssVNVg6S6heWjlon+wG+WjrliLjFs5rIupAVbMk/iH0O0i3aOjkbuEt9B76aZTtWD
         2yIYY3AdSoCbdWHcELELDES9JSGDXSaGQjkXOrLpyRdbRNjBEPtytcECsMz7+2G93e/A
         lm8+s2vFaMeNA7RdoCQKT9qpn2LjH9fh2cZyEna58YWDws33z0cgjjuk0W2qkbzxOKE6
         DCPeijfybh+KoD8SGPn0hwtOhSICwNayYdi+MCf0YeAVSnM3k2eDkcjoNu/nGGxix0GS
         KY/LChVpNutGlVyHTQ5U9rVgTw6vbRcoXcXwZthwwbEOssYfD40fR3RbwU/ErReCC9ac
         FPGg==
X-Gm-Message-State: APjAAAWFxmfckPNgiujnWnsq1BTbM9gvn6253mnjo85VufAu8Z1p/90C
        +WMxcQxWTe1ysY+9iNbfDqEA9A==
X-Google-Smtp-Source: APXvYqxXGBNRmgPxLiKFL8HDdQEfnCh+4jfSEGdOV62mSUK+/IODzykYRi5fWBEy3/rJ0E4sAGBE+g==
X-Received: by 2002:a65:628b:: with SMTP id f11mr38563258pgv.95.1557865313003;
        Tue, 14 May 2019 13:21:53 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id t78sm9978524pfa.154.2019.05.14.13.21.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 13:21:52 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAL_JsqKS5KgNpVvunhax+M4+NceP9uy_V=2cYk54kg5eOfxXwA@mail.gmail.com>
References: <20190509215538.93346-1-swboyd@chromium.org> <CAL_JsqKS5KgNpVvunhax+M4+NceP9uy_V=2cYk54kg5eOfxXwA@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 1/2] of/fdt: Remove dead code and mark functions with __init
Cc:     Frank Rowand <frowand.list@gmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Message-ID: <155786531142.14659.11567557677090725305@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date:   Tue, 14 May 2019 13:21:51 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2019-05-14 10:06:48)
> On Thu, May 9, 2019 at 4:55 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > diff --git a/Documentation/devicetree/bindings/common-properties.txt b/=
Documentation/devicetree/bindings/common-properties.txt
> > index a3448bfa1c82..1c50d8700ab5 100644
> > --- a/Documentation/devicetree/bindings/common-properties.txt
> > +++ b/Documentation/devicetree/bindings/common-properties.txt
> > @@ -25,8 +25,8 @@ Optional properties:
> >  If a binding supports these properties, then the binding should also
> >  specify the default behavior if none of these properties are present.
> >  In such cases, little-endian is the preferred default, but it is not
> > -a requirement.  The of_device_is_big_endian() and of_fdt_is_big_endian=
()
> > -helper functions do assume that little-endian is the default, because
> > +a requirement.  The of_device_is_big_endian()
>=20
> Hum, we shouldn't have kernel functions in binding docs. Can you
> reword to remove both functions.
>=20

Ok. I'll resend with this sentence cleaned up more.

