Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCBFBF7F81
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2019 20:14:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726957AbfKKTLg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Nov 2019 14:11:36 -0500
Received: from mail-io1-f65.google.com ([209.85.166.65]:33941 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727140AbfKKTLg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Nov 2019 14:11:36 -0500
Received: by mail-io1-f65.google.com with SMTP id q83so15818557iod.1
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2019 11:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2HgDUfvYTFbpP69aWKc0kGJILBYPdrw3d304UudQR6Y=;
        b=eTbtsuOY1bdhKdbXYiPZJ/aG2Qace47DkAJbL4Op2wp42tGwtELx5aJ26CvJ9Jb3qT
         vlhJLgZkDCviw9bLoBdRKzAEYECphGMJH3AnxorVg1SBo/rDG5z1xL1PRUcddapYELJc
         JlDIgnKwPtZybDPnZO/Vil39jXyaJ3tn4cWD3olZQTk/Xys15Qnjc5WHDiyzLrr1dhpI
         gUDI74hAWak5E6pqdOxyvLhSsu+bf3+IfPyWmb5suN58S2X3MoWTIFC9SW4Y0R3aIW+5
         ErM2InmMnwLQIG+6QpsYESxWHX25EqnFNz7/WEo+Dks7zTq3u5LsV9tqWiolA629rCzm
         iHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2HgDUfvYTFbpP69aWKc0kGJILBYPdrw3d304UudQR6Y=;
        b=JPg0Dxqehji5iGPpoWJ11pGZguG3JMqH3/jBAd6VYFBQxFD/4rr9a26m8+pnpNF2p2
         7+ScrxO7MLjPNuxGGcqlyaFXPl2KG0VDbPW4dvuWEfjgIQUW7dRCx6A98dGVa1NaAEbR
         PWAgVOaiObD0mX0+gjCAo9YKUamWykTaka+ELGT18l5JFQkFWl5NEz7dosfCM5LNcv/F
         hocFf8VDG+nGmacGuvJ72sLoYAEEjP36jkf1X2C8eTC/bw+WgCy4seI9jR67mlhuxXuT
         IsoxCe5r6Dfv1cyRQROp7HEDei9qDnNTCKd3SMbcwBKvBwtCBbofLEQH+IrJnDjMBzS8
         D3fA==
X-Gm-Message-State: APjAAAUA3cFKZxAL/3l+CaXPWlxyTyG7epKUbSsVWN1WvVWRYTxu7gxG
        DZBoYkXhsuLYY2BhLP6jtwWp58tHYnXtWZgZgzXE8w==
X-Google-Smtp-Source: APXvYqy1znbPoGeXemeR0vFArovOl/+lq8cNdMivbT38ZF3jpW8pGC7IQIdwYmdC0F0dJSIodB17Xximee0fFWz8NMY=
X-Received: by 2002:a02:c54b:: with SMTP id g11mr2199988jaj.136.1573499493869;
 Mon, 11 Nov 2019 11:11:33 -0800 (PST)
MIME-Version: 1.0
References: <20191021124428.2541-1-brgl@bgdev.pl> <20191021124428.2541-6-brgl@bgdev.pl>
 <20191111080837.GF18902@dell>
In-Reply-To: <20191111080837.GF18902@dell>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 11 Nov 2019 20:11:23 +0100
Message-ID: <CAMRc=Me_b5c_e+qZ1s=TgTh7k_bQqrqthC8VTb7ak8+3AOEugg@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] dt-bindings: mfd: max77650: convert the binding
 document to yaml
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Linux Input <linux-input@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pon., 11 lis 2019 o 09:08 Lee Jones <lee.jones@linaro.org> napisa=C5=82(a):
>
> On Mon, 21 Oct 2019, Bartosz Golaszewski wrote:
>
> > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> >
> > Convert the binding document for MAX77650 core MFD module to YAML.
> >
> > Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > ---
> >  .../devicetree/bindings/mfd/max77650.txt      |  46 ------
> >  .../devicetree/bindings/mfd/max77650.yaml     | 149 ++++++++++++++++++
> >  2 files changed, 149 insertions(+), 46 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/max77650.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/max77650.yaml
>
> Applied, thanks.
>

Hi Lee,

FYI this series is already in next through Rob's DT tree.

Bart

> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
> Linaro Services Technical Lead
> Linaro.org =E2=94=82 Open source software for ARM SoCs
> Follow Linaro: Facebook | Twitter | Blog
