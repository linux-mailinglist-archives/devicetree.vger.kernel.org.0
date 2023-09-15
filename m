Return-Path: <devicetree+bounces-639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D757A256B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22AEB281BBB
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E2615EBD;
	Fri, 15 Sep 2023 18:14:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF63410959
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 18:14:37 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A962105
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:14:36 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d815a5eee40so2248908276.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694801675; x=1695406475; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbloVE8nmpRklzhuAiR112rqAdagyUfXz/yXE+ALMUw=;
        b=pD9LDM/jSQsevy3WblHMaCVcpilmziyEba7tYSSaaFOrvpVuWkruqHyckseN4DitTJ
         wd6Y/m0hHoBdFcKMdsEM1CBqXSyMvfOWsBFm1zZw1nenYG1XHA/Ciw43LuVIkZYxLpHx
         YFhrN1+yQpOYuByKY0nI0482YFZzL+VzxEgdrP2wgf9HlYUQfkhmMRW9y1O4Dj6m2Jb5
         WdXQTr12xuDe1Xn8aIHEAKDAI3Z2ei0mo9HJnkhS4Up6Hj2RVlMdVeDelgczXRdp2HMW
         hEf9Ylu6AQVGqWwkUIdA4yhHSR7oRP+rf1FDftaLpG0jZGPK1ZldFHsnbnwPd8kHGTbG
         fLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694801675; x=1695406475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbloVE8nmpRklzhuAiR112rqAdagyUfXz/yXE+ALMUw=;
        b=R9qPnpK6l1MhVu0O+/XYaJSFzrz70A8P5H+pMojsuAOnCuGwR3+lARVeWa65PVYu9E
         tiJK52XJJVqj+NLsFnm+zBiX8OHQwJK+btNudz/lya+OcqUjwQhCZIKHO+5qykAgmJZJ
         1cvRtw+pAHDijl1EiTHbUsjkSjXW7nAOKjrVAj2+jZuoJjUnbxHh5kxmebrVb1CEGtOo
         UZpLx/MLuQqp3xVyxJJUgBm7F9bqOwSaF++P4odOSyepY1QMkJi+qgAqHfega0cDYaB7
         a+MQ/t8p7dsBH4lB4h6e38fuNG0OcvXu408cW7ngqx8o2u5KOqMrDNlTj7MeN9JBsUx+
         jfeg==
X-Gm-Message-State: AOJu0YwR8nktHH2IzPCTzbPx+bL+GtG2+S5F7afgwMuGoHPR1XJEDu10
	r27AyWhFBilQb1vVPnPcvlRSl3wzEoxqRS2tDkk+Ig==
X-Google-Smtp-Source: AGHT+IGhlDPPzTH3Fqdci1fTXm/PKLPUl8DSShnol/oSLFycRyWZpMfwroUjr2RIyQNpxuS8IG60KfH3yNBFW9UaSaI=
X-Received: by 2002:a25:9702:0:b0:d82:9342:8612 with SMTP id
 d2-20020a259702000000b00d8293428612mr97916ybo.12.1694801671461; Fri, 15 Sep
 2023 11:14:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912-gpio-led-trigger-dt-v1-0-1b50e3756dda@linaro.org>
 <20230912-gpio-led-trigger-dt-v1-2-1b50e3756dda@linaro.org> <20230915141549.GA3658872-robh@kernel.org>
In-Reply-To: <20230915141549.GA3658872-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 15 Sep 2023 20:14:19 +0200
Message-ID: <CACRpkdaG2oGGDjLGWgdi7Y-QS_1Odj7cbbuDiBX8DdNx7agOiw@mail.gmail.com>
Subject: Re: [PATCH 2/2] leds: triggers: gpio: Rewrite to use trigger-sources
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?B?SmFuIEt1bmRyw6F0?= <jan.kundrat@cesnet.cz>, 
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 15, 2023 at 4:15=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> > +     /*
> > +      * The generic property "trigger-sources" is followed,
> > +      * and we hope that this is a GPIO.
> > +      */
> > +     gpio_data->gpiod =3D fwnode_gpiod_get_index(dev->fwnode,
> > +                                               "trigger-sources",
> > +                                               0, GPIOD_IN,
> > +                                               "led-trigger");
>
> Isn't this going to look for "trigger-sources-gpio" and
> ""trigger-sources-gpios"?

Indeed. I'll simply code an exception for this into
gpiolib-of.c, it's an OF pecularity after all.

Yours,
Linus Walleij

