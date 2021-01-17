Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 688CD2F94FA
	for <lists+devicetree@lfdr.de>; Sun, 17 Jan 2021 20:44:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729404AbhAQToD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 14:44:03 -0500
Received: from mail.kernel.org ([198.145.29.99]:43788 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729248AbhAQToC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Jan 2021 14:44:02 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A8A2224DE
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 19:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610912601;
        bh=+86Plp7l6rjnoZJxBCIfp6sVMGYq9EHo8dv5Nj7H9qs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=NYN6BM0xd2edIFYnYQUWydRWbvkzVLx2A2q1rYM8v2izEPOU/thxt/5hAhDD4TY7H
         HLsxzkiOiovcpVX+P7AHsIvzqgaz1IrEVjJoMyTCXF95lhdWMOBqqmN4qiFscfh7Jz
         e1uTe5nX0Z2pqA1YqsHFbXb0EmulGVrW5bke5gaAy2Y7uaGK3EP89ZGviO9Sq74gTj
         WPCXXfBDujo1GA6+v3xY/+uFMk7m5rcZE4R3K7+yxvUAsJtKrShxWPC40LGBSaf1A/
         NFt7x52v2Bpd5tkY0Oc5Ug3390TBKG0kBg1syirr1zObcsNWQSUPTTfCdSvdFGZ7Rf
         YY6RNCdjUOG9w==
Received: by mail-ej1-f50.google.com with SMTP id by1so14345395ejc.0
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 11:43:21 -0800 (PST)
X-Gm-Message-State: AOAM533bQWvwdQzeXEiBiC6g+BnvzMWg0f1vu9gkVYlPfjwb7DZ5mbl9
        UpssXiZt5jSnqO6+UnNz/b7j2lkUqlsXLfKbQg==
X-Google-Smtp-Source: ABdhPJwQQ7/qFpWc6J/UK+mAcC/uBCKWvqFXeGOhx3YOVpuUxrv48rFUWjb0VL0HpEGzM5cYh1nWGoH7TkaNyzIxGa4=
X-Received: by 2002:a17:906:25c4:: with SMTP id n4mr15403774ejb.359.1610912599686;
 Sun, 17 Jan 2021 11:43:19 -0800 (PST)
MIME-Version: 1.0
References: <20201209072842.amvpwe37zvfmve3g@pengutronix.de>
 <20201211170432.6113-1-nicola.dilieto@gmail.com> <20201211170432.6113-3-nicola.dilieto@gmail.com>
 <20210117123440.6ziqtrjodf7ahx7w@pengutronix.de> <20210117131005.ecdaby7rwb72xecd@einstein.dilieto.eu>
In-Reply-To: <20210117131005.ecdaby7rwb72xecd@einstein.dilieto.eu>
From:   Rob Herring <robh@kernel.org>
Date:   Sun, 17 Jan 2021 13:43:07 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLOqcYtSXJ3eNi7uZZwm8Bi2yXEQEjK1F7-2FBbNmg1uA@mail.gmail.com>
Message-ID: <CAL_JsqLOqcYtSXJ3eNi7uZZwm8Bi2yXEQEjK1F7-2FBbNmg1uA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pwm: pwm-gpio: Add DT bindings
To:     Nicola Di Lieto <nicola.dilieto@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 17, 2021 at 7:10 AM Nicola Di Lieto
<nicola.dilieto@gmail.com> wrote:
>
> On Sun, Jan 17, 2021 at 01:34:40PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> >Hello,
> >
> >On Fri, Dec 11, 2020 at 06:04:32PM +0100, Nicola Di Lieto wrote:
> >> Added Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
> >
> >this looks fine to me, but this patch should be sent to the dt mailing
> >list (devicetree@vger.kernel.org) to catch the attention of the people
> >who have to Ack it.
> >
> >Best regards
> >Uwe
> >
>
> As suggested by Uwe, I am copying the patch here. The original post is
> at https://lore.kernel.org/linux-pwm/20201211170432.6113-3-nicola.dilieto=
@gmail.com/

You need to resend the patch to the list. Then patchwork picks it up
and automated tests run.

Of course, I'd rather just have the other one I already reviewed applied.

Rob
