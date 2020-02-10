Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C354B1582C7
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 19:39:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727778AbgBJSjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 13:39:14 -0500
Received: from mail-vs1-f68.google.com ([209.85.217.68]:35682 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727584AbgBJSjO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 13:39:14 -0500
Received: by mail-vs1-f68.google.com with SMTP id x123so4846927vsc.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2020 10:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kopismobile-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kkofZ98GV9LrfTaHrQ4QXlvW8pxoiPCKhSeZwyB4myE=;
        b=f41NLCMZXey4Ys9A7uP5rM9ZV2mSGKtW4NtWxbjNETiTUOUdIJNqz8nbHeSOvyv2wh
         61gNGEMmqTXeEtKWvlalwKkev2VYjDsl9ytHugeSN4WTO9AdMo8NsrVQIb9bcy3iyxs6
         da1077AlGkSdO+VrqL3xsuHnOs2DV+kaKX+o8WWTCRQGgiLatxztTE++MOfAyBcS5+uT
         0A6uBB6NM+HS1/0iM0aVAzcb3KA1SwMB7LGd3d+z3H5NehWluDsDk/0f6qh4hFMTTdzw
         Hm2JQ/XucerYluY1Fpi7W6WHWcV99glkrmsZZxhdQmcc1G5c+QFXR/VqAlEKkjt1b231
         df/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kkofZ98GV9LrfTaHrQ4QXlvW8pxoiPCKhSeZwyB4myE=;
        b=UjaR3dpmA69vNRbGnYIGrVzGXI5r9gAph9/yAhbjwdiBCWYtQfv/IZlwHtmAu9b3ji
         udc71JgGmtCTVBExHd4kZRQMREAW2imyMHfpMIrEgjHhEqNlCXDEFhvb47buxLTZ3DHd
         97QFkJ1YskZaKbTvCY2DOyhG+Mt3tgJ0nvBbm5YOAMz2AMHpqWZH4wZDi6k8sud5bO90
         rLMqod5b6b4WJRVm0FPcAkT9rqmxZkglU9/25h8vo4J2d8t3TI8v6b+Bj5YJ8NQUotAZ
         jW/TGuhHb8FqhG8YTepykJ3AzuRzFE7z6y265dWBvCrBkwfb/R85ZdmMGHSqaxPZxP/Z
         MdYw==
X-Gm-Message-State: APjAAAW/QMXFhkKEQUnEx+P0cvNWiqXWv6UAdyNOz+U7CVGmOhJQikQF
        03dwVdp2o8Ej4pwRLjqYebSxMjsO+mIeUY1zdC8n3g==
X-Google-Smtp-Source: APXvYqylS31EeYY2TQEyhA2fZwtOWVmw0I810y+f36CA662rAeY9S7L2kcOPcBQ2w32A7f/Jm9+pPA3P3wkATxmK+F8=
X-Received: by 2002:a05:6102:22e7:: with SMTP id b7mr7433450vsh.57.1581359950389;
 Mon, 10 Feb 2020 10:39:10 -0800 (PST)
MIME-Version: 1.0
References: <20200210174942.14182-1-ghilliard@kopismobile.com>
 <20200210174942.14182-3-ghilliard@kopismobile.com> <20200210181156.fbq66yazb5j5quvn@pengutronix.de>
In-Reply-To: <20200210181156.fbq66yazb5j5quvn@pengutronix.de>
From:   George Hilliard <ghilliard@kopismobile.com>
Date:   Mon, 10 Feb 2020 12:38:59 -0600
Message-ID: <CALM8J=f1HV8BucyLVAz8cje392F98uOPoYdOMTSL0970eJnAcw@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: imx serial: Implement support for reversing TX
 and RX polarity
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 10, 2020 at 12:11 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
> On Mon, Feb 10, 2020 at 11:49:42AM -0600, George Hilliard wrote:
> > (confidentiality spam)
>
> Hmm, sad, I would have had some review feedback that should be addressed
> before application of the patch. As I only noticed the footer after
> looking at the patch, it was already too late to stop me reviewing it.
> As I don't have an expressed permission I will at least not share it
> (and I expect that Greg will also refuse to apply a patch with such a
> footer).
>
This is fixed now. Apologies - added without my knowledge. Should I
simply resend a v2 without the notice?  Happy to CC everyone else you
included.

George
