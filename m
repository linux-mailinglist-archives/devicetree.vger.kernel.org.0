Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3891E381DA
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 01:34:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727823AbfFFXes (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 19:34:48 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:45560 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726997AbfFFXes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 19:34:48 -0400
Received: by mail-io1-f66.google.com with SMTP id e3so1559168ioc.12
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 16:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qR1bZGe4vZm5UNM1Z3o+ewA8qVQUfKgaPaOusQDXksw=;
        b=I/ACQPIJwUGFXqdnJIbKbjzdmB0UBGRIgx5tpAiVHCXp/jq+cxts/g7R6X7z458Qrn
         oafYfY0GoAEmiecfYTfwNOBXIasDEPAmDImaUF7+ffjBO3r1ylpEVF/6BhoHsQNwzDrT
         cqVC1GatOBNJb6HoaHjbfJkRo261MMOibkOYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qR1bZGe4vZm5UNM1Z3o+ewA8qVQUfKgaPaOusQDXksw=;
        b=KUFhdlDyCOpziV2XX3/6DSWdkyXnFDPvzUM2T2wDdgeYfIaEdnOQGyLhZXnTGtPJDj
         h1ZF0Af3xqcEQcF11ktXAvzr1/A8DVVtgpDoJ0NmPatM3CgdNHWpIkmqeh1zJr7vFGfW
         ke/8StwwOd1r27A7lPYd0SFlqANwULLLM/nRmKv29HcXAUVPqyHUokJfh++jaqV49/xX
         aL6AIkKnXANttt+H0cPGIPGd707tmTquuZtegqXcyzcuq2jX1k0nvXQsdxa77yWjqMZB
         KIqtzPjLqY53/KEWidV7gQZKNd/oARo9zPNpFZlDDTMj+CYV0E326ILGtHcZmguoiq+S
         AQkw==
X-Gm-Message-State: APjAAAXi0YIWMqgy19Gx2sU5Wpgm6kOXFfbKOxUZFLI/UTqkECPQy5BH
        vQ9OBryTU3UmyDo6XcKuL8ljLvizU9Y=
X-Google-Smtp-Source: APXvYqzCI7gcAzM3IvJcRN/5dE9oSM/GpVqUg8bpibA5QI1ICsQBpRpKRXtkkTzcvHrRkH5SIVCeMQ==
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr13409276iot.141.1559864087523;
        Thu, 06 Jun 2019 16:34:47 -0700 (PDT)
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com. [209.85.166.182])
        by smtp.gmail.com with ESMTPSA id t5sm116898iol.55.2019.06.06.16.34.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 16:34:46 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id a186so105526itg.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 16:34:46 -0700 (PDT)
X-Received: by 2002:a24:5a06:: with SMTP id v6mr2374588ita.160.1559864085929;
 Thu, 06 Jun 2019 16:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190605204320.22343-1-mka@chromium.org> <20190605212427.GP40515@google.com>
 <2828678.vPWIEPrON5@diego> <3394571.WlNFeu2Orz@phil> <20190606175654.GQ40515@google.com>
In-Reply-To: <20190606175654.GQ40515@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 6 Jun 2019 16:34:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U-BOF79yJOW7S1CRudTqDN0BA8Ur3mJfg3C-+8P6fCew@mail.gmail.com>
Message-ID: <CAD=FV=U-BOF79yJOW7S1CRudTqDN0BA8Ur3mJfg3C-+8P6fCew@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        Brian Norris <briannorris@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 6, 2019 at 10:56 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Thu, Jun 06, 2019 at 12:46:03PM +0200, Heiko Stuebner wrote:
> > Am Mittwoch, 5. Juni 2019, 23:52:00 CEST schrieb Heiko St=C3=BCbner:
> > > Am Mittwoch, 5. Juni 2019, 23:24:27 CEST schrieb Matthias Kaehlcke:
> > > > On Wed, Jun 05, 2019 at 11:11:12PM +0200, Heiko St=C3=BCbner wrote:
> > > > > Am Mittwoch, 5. Juni 2019, 22:43:20 CEST schrieb Matthias Kaehlck=
e:
> > > > > > This enables wake up on Bluetooth activity when the device is
> > > > > > suspended. The BT_HOST_WAKE signal is only connected on devices
> > > > > > with BT module that are connected through UART.
> > > > > >
> > > > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > > >
> > > > > Housekeeping question, with the two Signed-off-by lines, is Doug =
the
> > > > > original author, or was this Co-developer-by?
> > > >
> > > > Good question, it's derived from Doug's patch for CrOS 3.14 and
> > > > https://crrev.com/c/1575556 also from Doug. Let's say I did the
> > > > porting to upstream, but I'm pretty sure Doug spent more time on it=
.
> > > >
> > > > Maybe I should resend it with Doug as author and include the origin=
al
> > > > commit message, which has more information.
> > >
> > > It's just that the first Signed-off should be from the original autho=
r.
> > > (And the sender the second)
> > > In the co-developed-by case (see Kernel documentation) the order
> > > doesn't matter.
> >
> > Holding off on this patch till we could clarify the authorship.
>
> I'd say let's attribute the authorship to Doug. FTR, the original
> downstream Chrome OS patch is https://crrev.com/c/278190.
>
> Not sure if the information in the commit message of the original
> patch is relevant for the upstream version, in the end it seems LPM
> was never implemented, so it should be sufficient to say what is
> actually done today.
>
> In summary, I propose to take the patch with the current commit
> message, with Doug as the author. Heiko, can you change the authorship
> or should I send a new version?
>
> Doug if you have objections or want updates in the commit message
> (yours tend to be more verbose ;-), holler.

It's fine with me.

-Doug
