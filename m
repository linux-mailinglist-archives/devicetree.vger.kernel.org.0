Return-Path: <devicetree+bounces-155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E008C79FE9B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:41:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E407281B35
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B94491CFBC;
	Thu, 14 Sep 2023 08:40:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEA71CFA9
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:40:52 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A831BF9
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:40:52 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d8181087dc9so682220276.3
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694680851; x=1695285651; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rBgKOX9HU0Cqf61gn84yvvVhKTbuYZo7XwNQLZJ6zZQ=;
        b=n+HADZPRDaVcTgqRN5ARP3ajMfJkvybXCSDh3gpfl44JUiypjc0/2V2H9xRDnMa02L
         GogX8fQVXn0s381cAovCMd06foZrauZjhyOBap0mLDCAPHe3mXoT2aiP6eFCtCELQtf0
         No3nDZ3MqXZpg/BBorPaKFo+cw34NcuLUlb1PflEN1Z3qw/tn81HcLFh+y2UyWJT2Sor
         PtE7Yj/2gQpR8iGR+T0IZvUC8JSH9v9x2pEJ0M3a5Mwf6x456JRwPNAMXKiFoPEb4AGR
         /1O+1HTjQPjbydRY9fcyGmp6UfLzwETv4QUkc7rt+QZfoDy0B6DzDfhHbfbv1lemzh8j
         fgRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694680851; x=1695285651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBgKOX9HU0Cqf61gn84yvvVhKTbuYZo7XwNQLZJ6zZQ=;
        b=mHmTD7OwsEFj3ydjgHznSbsIT2Gu36OdV5cfXWBryxDzEmvMVUwdsAbTbkq/Gwr0Iy
         tItlWbc6hR+UYql+mGKbIn6GJ+Fpo1Pkb5viva0StQ+00hmzdC9tXAI9uoXviRV+mKDV
         Fjvu6196uOKoHRues4eQ4O+35pit6VmzC1/gbG+gCAcHzud7cG5/DPQuOpYRO65f6bTc
         YPCOyjt4pbx/Gmei1Oyyj7TCWSbfxvTwMh6m9/AFQr/UfagRQ+SVd0kbL0k28uPPaiGH
         /Ev7ixKz1dnz1KtrimF2i5Dqd6U3IlEFI1vxv3LhnHAcVE9qK82l5ZNABXkfFraYEZ4n
         bing==
X-Gm-Message-State: AOJu0YwxhM3ssRvFdF8KoTvF0y/xcGw7UPGTo2L+72NXVbihvow/Znb5
	6LRWyEklxi3/wrGRZ+6snnzkMv+Yh8rcELl1dEBIcw==
X-Google-Smtp-Source: AGHT+IFwZobHxcqKOc9i9F0FwU196xwcuhkf7p5VMd50HiyGLwvFBTBzw2gNzhm4i/jnEP5lPJDUpXQSAPyK3EQ0058=
X-Received: by 2002:a25:8001:0:b0:d4b:6a0:fe2b with SMTP id
 m1-20020a258001000000b00d4b06a0fe2bmr4591638ybk.36.1694680851406; Thu, 14 Sep
 2023 01:40:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912-gpio-led-trigger-dt-v1-0-1b50e3756dda@linaro.org>
 <20230912-gpio-led-trigger-dt-v1-1-1b50e3756dda@linaro.org> <20230913133451.GA2841610-robh@kernel.org>
In-Reply-To: <20230913133451.GA2841610-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Sep 2023 10:40:40 +0200
Message-ID: <CACRpkdb72f9WFeEGo-tXscZaBmFH04WiePM+tJSmuuXQxxy=3A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: leds: Mention GPIO triggers
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?B?SmFuIEt1bmRyw6F0?= <jan.kundrat@cesnet.cz>, 
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 13, 2023 at 3:34=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Tue, Sep 12, 2023 at 03:44:30PM +0200, Linus Walleij wrote:
> > We reuse the trigger-sources phandle to just point to
> > GPIOs we may want to use as LED triggers.
> >
> > Example:
> >
> > gpio: gpio@0 {
> >     compatible "my-gpio";
> >     gpio-controller;
> >     #gpio-cells =3D <2>;
> >     interrupt-controller;
> >     #interrupt-cells =3D <2>;
> >     #trigger-source-cells =3D <2>;
>
> BTW, this is not documented for any GPIO binding. If we want to specify
> the cell size, then it has to be added to every GPIO controller binding.
> If not, we then need to reference gpio.yaml in every GPIO controller
> binding (along with unevaluatedProperties). Doesn't have to be done for
> this patch to go in though.

Yeah I mean this trigger-sources =3D <...>; one-size-fits-all is a bit
weird in a way.

My other idea was to simply add trigger-gpios to the normal way
and be done with it, but now the trigger binding has this weird
thing.

Would trigger-gpios be better?

Yours,
Linus Walleij

