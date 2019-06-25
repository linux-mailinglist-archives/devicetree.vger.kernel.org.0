Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D569052686
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 10:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730109AbfFYI0z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 04:26:55 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:39218 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730048AbfFYI0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 04:26:55 -0400
Received: by mail-lf1-f66.google.com with SMTP id p24so11983496lfo.6
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 01:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kVHhWnDLvxp54p0ZCf93IIcQ0pUeJTPzai6D5SvqhUU=;
        b=ahvbeOrhOMKsGcDJLfK6ZG9vmXqWuw4udju5Y7XpqqW1DUOva4Cags99u5WkqRcspN
         HKsfE6dUhaOpSzrDd4oabGF7NILel7LxJasKXak5hlqyqlquO9bAkMvXc+fIzT8iGem2
         1kPJ/qO1nmQR7V0iv+jqHp25lAGQW6wHSwol51ZC9n1BQNY2gfNpeYGVwbPWcfJ0CMrm
         kObApMSAyf1QxKXJulzk7muEB9h5a4ujPDs55PzIhEppNJXZAJZxirUmFM3sIdka9kTh
         Z5a7P48TRhVwaRzZz7ewu/ahP5ggAFRrr8gzEwwBhK+gPwAJiUj+PhTbIEcJKfa4fYKK
         w0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kVHhWnDLvxp54p0ZCf93IIcQ0pUeJTPzai6D5SvqhUU=;
        b=TSYUATVS4ca+xszoWD+HaTc8JYV963MESGojVheQtZYPlZTgj0tFY1BXe6zcyj8sz2
         EECp3jHMP9ox5LnuCy7Q1hhpz9s554y1/QTKrzeWF7Qz46ew5tZuvU/bY8BPreevSeYb
         ZSKCITbqUVTFon7vMgIByk1ckQeWImXZFqyBBM90xzSdQLJMIVXq7AOqhO1K+2FqIlgK
         sckEAxNLeS4BYXGEn6HncMoqZZMxDX+woReLO87xO/H82JqRC3bKSPiZYlIAtCOhfPEZ
         21iXHWwZjPnCIv0jgotcPC1kdOjYo/cBaKK9AZjsLcrPm9iOmU+Xuu11PZwS4UBvceS9
         FpNQ==
X-Gm-Message-State: APjAAAV0/gk4af5twidsaHkSu4k/p0TGCeAdJlvqBroD1tm7+UDPQ2cJ
        UPkzu9kA1R/KBoysSXfnBvXrJsnSrPyDEqDHhVrkJ1Jh
X-Google-Smtp-Source: APXvYqz5PlZyVZy/nlr5ViEmoOLlNZX/LuhCuxl9zXLQIre7MazQ8oPXy4S78b4Y/RNU5/ZDJwICe+jEltkCW8JxKh4=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr75934082lfn.165.1561451213189;
 Tue, 25 Jun 2019 01:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190624215649.8939-1-robh@kernel.org> <20190624215649.8939-11-robh@kernel.org>
 <CACRpkdYKE=zLJhmTeTWYGRCQNt3K8+rNNqsp5UDa2d31GG6Y2g@mail.gmail.com> <CAL_Jsq+uCMKhUFgCCK3uUetL9OwokQPaq74GJHQS2VS=UjVH8w@mail.gmail.com>
In-Reply-To: <CAL_Jsq+uCMKhUFgCCK3uUetL9OwokQPaq74GJHQS2VS=UjVH8w@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 10:26:41 +0200
Message-ID: <CACRpkdYnSZibUyhe5D8W259fCJBm05rG0_EmX+uoi=uqbrqEYA@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] dt-bindings: display: Convert tpo,tpg110 panel
 to DT schema
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 25, 2019 at 12:47 AM Rob Herring <robh@kernel.org> wrote:
> On Mon, Jun 24, 2019 at 4:13 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Mon, Jun 24, 2019 at 11:59 PM Rob Herring <robh@kernel.org> wrote:
> >
> > > Convert the tpo,tpg110 panel binding to DT schema.
> > >
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> > > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Cc: dri-devel@lists.freedesktop.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> >
> > Awesome, fixed up the MAINATINERS entry and applied and
> > pushed for DRM next with my Reviewed-by.
>
> You shouldn't have because this is dependent on patch 2 and
> panel-common.yaml. So now 'make dt_binding_check' is broken.

Ooops easily happens when I am only adressee on this patch and
there is no mention of any dependencies.

Can I simply just merge the panel-common patch as well and we
are all happy?

I can also pick up more panel binding patches, IMO the yaml
conversions are especially uncontroversial and should have low
threshold for merging.

Yours,
Linus Walleij
