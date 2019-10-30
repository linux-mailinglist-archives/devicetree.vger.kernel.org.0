Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA570E9CA6
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 14:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726584AbfJ3Nue (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 09:50:34 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:43570 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726246AbfJ3Nue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 09:50:34 -0400
Received: by mail-lf1-f67.google.com with SMTP id j5so1604495lfh.10
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hKvVM+Lts2ZimWoF8BpQfrXJptOfWTU/76y+dUo91Xg=;
        b=ise6gsWZjYd+YEvdWj6TeziR+YM/ap5c2m+tbfumbVKlsLneIoCe1NeOSUBSPfrMUZ
         N/N8xE70oDjDMUbzzc0L5qpmNhiyAWw/JA+P4HFtj0Yr1Om2yid5undvOgXSxfYVhNeU
         6d2nOtKI2nVBYIf8hP0DRLolprxmuJQ6E7DtPesVX0HRtIMOseA0JVNyGKxf9qieuu1w
         LMJ/sQGOmwm8f3x7mAK2e0YXXiOlL3MGOD5h4JioInkefqcKu9qSntkzQaaa/JxpJTfC
         Rdo6wFTs2A4+zIncrx88AwRkKrfFu+5h5Bq2ib9NalYH5URFOK3upX4tlIXDZGlKM2jj
         YPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hKvVM+Lts2ZimWoF8BpQfrXJptOfWTU/76y+dUo91Xg=;
        b=cW2URhXHWzicWpgoIjr0BnevM3siudS5UK0L82fa18kZxCgMievP1bFPE5t+tt+LL6
         2fq6LtJIuABOwSSVGTqU60I4KGbUJNcAgwc6j1SqVQDqp7i4KtvNQ45Bev8mWkCuW8OE
         OqWr1QLPavm6wKn4a/CpXz4RERkkRl081pUFS1/olqEHhMvnCISPTtQeZwhxD0NDKwI4
         sQo4zFmsyoR/UoFH/e0cYqGU/lKpCMoYNdVUDmHdMfhbYl4swfYU1x5QBQIz4zXl7x2b
         aHjJb6ew+WzO7GUCNYVBkNJ9ZftSdSXSDZhLubKL0r95YMjJiXkDw744zTmOcaKMlLt8
         rwpg==
X-Gm-Message-State: APjAAAUtbAlzJMSaxhiaqgceRFO/kyIpXCLqI1Pp10yC4Vv78IBMQHDV
        eddT1luvA2t3Y8c6uEk51sCVH64uoKXd5FUWA6sZGA==
X-Google-Smtp-Source: APXvYqy0c7Qf7SbNHkI8EEMumWKBAHA3H3uCgrvSX/PLtGNFb6KJ6a8grwgYyBfTZ+//S8rbMyS5lBXpJRawaWya4YY=
X-Received: by 2002:ac2:4a8f:: with SMTP id l15mr517648lfp.5.1572443432053;
 Wed, 30 Oct 2019 06:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191024114305.15581-1-linus.walleij@linaro.org> <20191025192054.GA7415@bogus>
In-Reply-To: <20191025192054.GA7415@bogus>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 30 Oct 2019 14:50:20 +0100
Message-ID: <CACRpkdZ67mC9m6inJSfbS0NqeThfJ0tUJQTP5stX3Kzw+zhEyQ@mail.gmail.com>
Subject: Re: [PATCH 1/3 v4] drm/panel: Add generic DSI panel YAML bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 25, 2019 at 9:20 PM Rob Herring <robh@kernel.org> wrote:

> [Me]
> > +    dsi-controller@55aa55aa {
> > +      compatible = "acme,foo";
>
> Eventually, I want to start reporting if compatible strings aren't
> documented (i.e. matched to a schema). This will break then...

OK I drop this.

> > +      reg = <0x55aa55aa>;
>
> This will fail because a size cell is expected.

Do you mean it will fail the day we actually check reg properties to
be properly formed under the circumstances?

Because:
  HOSTLD  scripts/dtc/dtc
  CHKDT   Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
  CHKDT   Documentation/devicetree/bindings/display/dsi-controller.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
(...)

It passes just fine.

I get a bit nervous since the schema is all about being strict about
stuff so I get the feeling that "should have failed".

Yours,
Linus Walleij
