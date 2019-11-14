Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B5F84FCEC1
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2019 20:30:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726598AbfKNTaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Nov 2019 14:30:01 -0500
Received: from mail-il1-f193.google.com ([209.85.166.193]:46743 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726289AbfKNTaB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Nov 2019 14:30:01 -0500
Received: by mail-il1-f193.google.com with SMTP id q1so6393976ile.13
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2019 11:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C9I8Z4v8szG7Sk2RVim/tFozyJuElI2LAeZNFm3LQmo=;
        b=RcNSGWc9oIJ3wGGS7RicxqKlvRj2R4x+H9oboiSA1Cm0mBhmMmbgDqCWPxJChGth66
         ZFUKlnwNVHNplfw2KPwNZwhaYLIz5AGb92S2fHN2dV8xXaZTXPgKd4i/kLeZYKG9Gmsg
         838ibPi+oAkSKBSx2tsHkIl99sh6cUwcmQpco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C9I8Z4v8szG7Sk2RVim/tFozyJuElI2LAeZNFm3LQmo=;
        b=gt7F6v7tsjpFni9nbiPT5hPYOx264XMD2g6pDOO8gr5rFUdcW22zYJFRZEys19CimU
         LTnp+mTgoFzMRzVYr1oNbpMiDm4FPB3c58Oi9nLO95tkoDTrtlFYIcLHuUsJ9U1od52t
         uU2PV3+ewplzBNvRHNfGeuw+vhNejRbe4e6fn9QiO+15afaF4vpIeVOexp1AILQsLEzG
         HiK7Bka7QNm8eyTXxBz8PX3g9RmWNHXPYjMKxH1E77H6sNVGFRVSZYmZOnrS6hIcVXow
         celgEq6lkPUJ9CC4f09NaIJWDAZw9zWWJkW6jdt+FHJ9c+F6B7AwN+2Oc0rUR1rB7YQU
         Gifw==
X-Gm-Message-State: APjAAAWc7JWI6GrcwuajF4EnIgQPeTnhtZn73WyhY7He3oD6VGlHsx8b
        LzWvOtQyAGRE3POYT26F0AjE3ig7yzM=
X-Google-Smtp-Source: APXvYqy9pvfSYThoyMMvf1b64NGdZak5yLuG1kAWW68oHc+w5bEacIYKYRFaCJXnMY3+/BldrvMzPw==
X-Received: by 2002:a92:5850:: with SMTP id m77mr12137338ilb.203.1573759800560;
        Thu, 14 Nov 2019 11:30:00 -0800 (PST)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id m84sm901671ill.14.2019.11.14.11.29.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2019 11:29:59 -0800 (PST)
Received: by mail-il1-f175.google.com with SMTP id q15so6404385ils.8
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2019 11:29:59 -0800 (PST)
X-Received: by 2002:a92:ba1b:: with SMTP id o27mr12281795ili.269.1573759799235;
 Thu, 14 Nov 2019 11:29:59 -0800 (PST)
MIME-Version: 1.0
References: <20191112230944.48716-1-abhishekpandit@chromium.org>
 <20191112230944.48716-5-abhishekpandit@chromium.org> <CAD=FV=UfGDAtePrDmsEsdCNsHQZwDkU8z6E=qzSu=opht7evpQ@mail.gmail.com>
 <CANFp7mWT2GwkSEcE5SkxRnfOebHq2aYLoLh6dmCZ-HktUe+mYQ@mail.gmail.com>
In-Reply-To: <CANFp7mWT2GwkSEcE5SkxRnfOebHq2aYLoLh6dmCZ-HktUe+mYQ@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Nov 2019 11:29:47 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XPK9YHBCRWnksgeqPQ3v8Tmm413oie-x6ESzpTFtezqQ@mail.gmail.com>
Message-ID: <CAD=FV=XPK9YHBCRWnksgeqPQ3v8Tmm413oie-x6ESzpTFtezqQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] dt-bindings: net: broadcom-bluetooth: Add pcm config
To:     Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Cc:     Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-bluetooth@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        netdev <netdev@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Nov 14, 2019 at 11:20 AM Abhishek Pandit-Subedi
<abhishekpandit@chromium.org> wrote:
>
> > >  Example:
> > > @@ -40,5 +45,11 @@ Example:
> > >         bluetooth {
> > >                 compatible = "brcm,bcm43438-bt";
> > >                 max-speed = <921600>;
> > > +
> > > +               brcm,bt-sco-routing = [01];
> > > +               brcm,pcm-interface-rate = [02];
> > > +               brcm,pcm-frame-type = [00];
> > > +               brcm,pcm-sync-mode = [01];
> > > +               brcm,pcm-clock-mode = [01];
> >
> > I'm at least marginally curious why your example has a leading 0 for
> > all numbers.  It makes me think you intend them to be represented in
> > octal, though I don't know offhand if dtc uses that format for octal.
> > I guess it doesn't matter since all your numbers are between 0 and 5,
> > but it does seem strange.
>
> It's a bytestring with a length of 1. See bytestrings under
> https://devicetree-specification.readthedocs.io/en/latest/source-language.html#node-and-property-definitions

Oh, right!  ...except that now it's just one value and not an array of
values, just make it a normal number.  Don't worry about the fact that
it'll take up 4 bytes instead of 1--it's clearer for it to just be a
normal number.

...I would also note that the definition of the properties talks
nothing about them being a bytestring.  ;-)

-Doug
