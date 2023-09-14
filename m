Return-Path: <devicetree+bounces-232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 733587A0746
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 561161C20803
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A17221A13;
	Thu, 14 Sep 2023 14:27:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AD5D309
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:27:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5605C433C7;
	Thu, 14 Sep 2023 14:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694701647;
	bh=6I3beKN7kf1ly/W55tx7vgh+ImD+aULjlZOc4eWou3w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=AgBWK1RrlUnJl+BRslBPUz/e4p3ffDFlx2v0n+BzB78xWwqki9MNuFkXD5028I9//
	 V4yyjgPg044UrtCLkDtPc/PXKMCh4fINxbDZUpzO5cbjG9/SZluxk1UnXM8mPTCiAM
	 8iPL0WVodR62eaBsgFFt+RZvdm76sdD48P7Ff655dMKn6RPjL3bGTj1WNG9WHDuiyL
	 25wIb3Sr/vDtVHIyd3Xz5aNZ1sSJRvyHBUb5SQaWjT66/AzMsvC2PeVLblGoAQDNeN
	 IcdCRh/9n8ThUHnQgvtQUvKPi3WzXdjme4ywnDvNtTslnQM2xmItCTqD5G8VM8j4Dc
	 gLqXabIVQVClg==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-502defbb0c3so1828744e87.0;
        Thu, 14 Sep 2023 07:27:27 -0700 (PDT)
X-Gm-Message-State: AOJu0YyHZhhNeDgw4l+sVAo6/I5iV+luFlqE5dPiy7t4qGFKOfWuVWKN
	S7j3XFV1oEb4v2ni7E9OFERrAm01E4mbr+estQ==
X-Google-Smtp-Source: AGHT+IFZC4Xer+Rkd+ygcI3HA4NYr7zUFSXEVN/cNgMxyB9/zUwBmuxo3PzkRQMKM8ZDSjhNGTlgkizV/9W/zuvNJJw=
X-Received: by 2002:a05:6512:2354:b0:500:86cf:1249 with SMTP id
 p20-20020a056512235400b0050086cf1249mr5173641lfu.61.1694701646122; Thu, 14
 Sep 2023 07:27:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912-gpio-led-trigger-dt-v1-0-1b50e3756dda@linaro.org>
 <20230912-gpio-led-trigger-dt-v1-1-1b50e3756dda@linaro.org>
 <20230913133451.GA2841610-robh@kernel.org> <CACRpkdb72f9WFeEGo-tXscZaBmFH04WiePM+tJSmuuXQxxy=3A@mail.gmail.com>
In-Reply-To: <CACRpkdb72f9WFeEGo-tXscZaBmFH04WiePM+tJSmuuXQxxy=3A@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 14 Sep 2023 09:27:14 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+PizSdqJ5Yc4TpNscy5e3gBP4vjQF+ka6SRwnJhSt-0w@mail.gmail.com>
Message-ID: <CAL_Jsq+PizSdqJ5Yc4TpNscy5e3gBP4vjQF+ka6SRwnJhSt-0w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: leds: Mention GPIO triggers
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?B?SmFuIEt1bmRyw6F0?= <jan.kundrat@cesnet.cz>, 
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 3:40=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> On Wed, Sep 13, 2023 at 3:34=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> > On Tue, Sep 12, 2023 at 03:44:30PM +0200, Linus Walleij wrote:
> > > We reuse the trigger-sources phandle to just point to
> > > GPIOs we may want to use as LED triggers.
> > >
> > > Example:
> > >
> > > gpio: gpio@0 {
> > >     compatible "my-gpio";
> > >     gpio-controller;
> > >     #gpio-cells =3D <2>;
> > >     interrupt-controller;
> > >     #interrupt-cells =3D <2>;
> > >     #trigger-source-cells =3D <2>;
> >
> > BTW, this is not documented for any GPIO binding. If we want to specify
> > the cell size, then it has to be added to every GPIO controller binding=
.
> > If not, we then need to reference gpio.yaml in every GPIO controller
> > binding (along with unevaluatedProperties). Doesn't have to be done for
> > this patch to go in though.
>
> Yeah I mean this trigger-sources =3D <...>; one-size-fits-all is a bit
> weird in a way.
>
> My other idea was to simply add trigger-gpios to the normal way
> and be done with it, but now the trigger binding has this weird
> thing.
>
> Would trigger-gpios be better?

Then GPIOs are different than everyone else. I think we have to think
about other bindings too. While we could standardize the naming here
with trigger-gpios, that won't work with the foos/foo-names style of
bindings.

trigger-sources is not widely used as it is just USB ATM and a few
platforms. We could come up with something different.
"trigger-sources-<cellname>" is the only idea I have. Then the
property name gives you the cell name to read. But variable property
names have their own challenges. We would need to look at all the
current trigger sources (i.e. the linux,default-trigger ones) and see
what else might need this.

Rob

