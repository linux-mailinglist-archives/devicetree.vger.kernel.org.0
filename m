Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8CC9017D85
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 17:51:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727545AbfEHPvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 11:51:22 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:44914 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726723AbfEHPvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 11:51:22 -0400
Received: by mail-ua1-f67.google.com with SMTP id p13so7531337uaa.11
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 08:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t0+i9e5mIEn3rqSN9LgCUbC0Q8KXmle2bNSZz9uk/D0=;
        b=dHartrG0pnAxze09Q/OtM6IG1uxSV/PvDV9j0oxDlVKKb2h7aaldV397hX1Mq/x86e
         zwPrwM9sTsbPUgkg6dmMgn+4qgx+Bpio+OUc54RUBEcp+4qBLiA/e55Sw1L1KXOMz4x7
         S8RKLl7jH8js3Gyn95doc2ozC39rKeKL5orTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t0+i9e5mIEn3rqSN9LgCUbC0Q8KXmle2bNSZz9uk/D0=;
        b=gnCb6+xtGfeSc2BCiPzF+0BAMPM9CT2sdoFIkGZDH0FNkGIuFYsOFsYehhmGyJDbbG
         TwL6ZwoBsEbRtOcMc0qPZk8pNowxe/oa2E/EJj+gRdN6I+CzBpEmfZ/7QVur2xIN3lav
         iPz8qGIQVbgldHAseb/SOIGvWx4m0LrLj7FjTzkrFUJqI+NIcGYYO1IA0quZDj0kP7EO
         dppcSLlG+pzCvadHkGgezTeqD/xIwsQHrePms7nIcBcCDdUKiC0HdMY1cJjkim/CzkjQ
         Y4PKgFB8/zOJrG9IZFD3kgZJ9QkAUveKQL4b06Az30w8pmDRhvcEuSIUVxrCU7dmBcBW
         sTDg==
X-Gm-Message-State: APjAAAUUkrDdbcEQxLYt4ktXmZEzOZ6oyxtKcnfgbR5hHkWgifaj4FnC
        0UXPZViWthpicNzGkHEHRHL8NCV3UNM=
X-Google-Smtp-Source: APXvYqz2JrD4tK0Ow+IwSI8v0yhPBOhGkZT3bATctY5Zsn3EjD0biYHKtCXdHWTWSXWzXy4W/CJZpg==
X-Received: by 2002:ab0:790:: with SMTP id c16mr2605492uaf.103.1557330681417;
        Wed, 08 May 2019 08:51:21 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id d133sm6240136vke.19.2019.05.08.08.51.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 May 2019 08:51:20 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id q64so2208161vsd.1
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 08:51:20 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr20090469vsc.20.1557330679806;
 Wed, 08 May 2019 08:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
 <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com> <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
 <18324244-cca8-a836-5c2e-c626ca8771aa@gmail.com>
In-Reply-To: <18324244-cca8-a836-5c2e-c626ca8771aa@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 8 May 2019 08:51:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WFNjvm9Swe_jRO1X3yn-OV596_4yhA9m_yD4Coq1qTWw@mail.gmail.com>
Message-ID: <CAD=FV=WFNjvm9Swe_jRO1X3yn-OV596_4yhA9m_yD4Coq1qTWw@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Julius Werner <jwerner@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 7, 2019 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/7/19 10:59 AM, Doug Anderson wrote:
> > Hi,
> >
> >
> > On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 5/6/19 9:48 PM, Douglas Anderson wrote:
> >>> We'll add a dummy to just return false.
> >>
> >> A more complete explanation of why this is needed please.
> >>
> >> My one guess would be compile testing of arch/sparc/kernel/prom_64.c
> >> fails???
> >
> > Ah, sorry.  Needed for:
> >
> > https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com
>
> Got it.  I went and looked at that.  I think a better approach would be to
> check parent node not "/reserved-memory".  I am making this suggestion in
> that email thread.

OK.  Assuming that people are happy with that approach [1], we should
consider this patch abandoned.  Thanks for your reviews!

[1] https://lkml.kernel.org/r/20190508154832.241525-1-dianders@chromium.org

-Doug
