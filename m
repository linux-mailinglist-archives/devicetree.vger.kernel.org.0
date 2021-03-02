Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4511C32AB71
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:32:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446250AbhCBU2L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:28:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1575724AbhCBPfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:35:10 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75698C0611BE
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:31:11 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 18so23336726lff.6
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fL0AumZD+ZV7RDH5XqYhmB5OulPM6pG2ol2pOztokaY=;
        b=yG3i7iz/rEBxhg/9yaFCE017PRiu8UQYzvqpTXVz7+qqlbWT8yIxJ+4AsNwt4++VTj
         H8BwQsDP0JkYDinVG4+5nmWp4lyFKLEyBJ0L4z5YNMvCFDxlqhrAkleFkoFzuhldfqPe
         vq/ngnv+tGJKyYuqxSV8uzVfPKIrTrjuW6LbAFeAZ5qqcM41wv9fdYR4yELa/aAwUS31
         2leRshpu4SxH91IwatuegYY+ZQZJosi/oTJiqJS3XkdWjXUMbw49xGKB/vSgJt6sfXzc
         vlYF2ATOgXIIj+z0WWnRNJDrBYLoM3hcEhRfM90c208VKTsMz2OFeVpDVG2/3DnLpFWN
         bU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fL0AumZD+ZV7RDH5XqYhmB5OulPM6pG2ol2pOztokaY=;
        b=rqGAIVgdoyHpJ9ruU2pUMnqWhdsG0QZ2M/cl5vlw1Qd61OHqySNaX98P1VC19zoeRr
         GjqbLnuXvYxTjoCBixcu6PXy8SUJPQdG1NIBc+Bxa8IbPYhsjKHbw5+kvV6TtXaYeRoG
         7xx45dWGdTFa6zpli3BRbkjOxlTGl8QC3Rsr20I5EYfmPJymTfPECQSYPvX7SjSXIqHy
         K/0WFN0HjMLCLpYUaFslznHznXqa2rEOGIG9UW+2u7fP7DuRtanEAOmoeBzEQsflxew2
         yN6MlcqVjEgsFG24gzOzUFlSbKpsYD6K3HPWwuD44oiUnn35yiZW3lmoGDn9Ybzhp/+9
         QfCQ==
X-Gm-Message-State: AOAM531pKakoFK4qAsJffi4y37A3sEpzyqi0RCEKLt6rHbAbaTTUJ9Pe
        KYRLYPQgs1geZiuY/gTQIUMcoVCFlYGDDb8Bh4DiIQ==
X-Google-Smtp-Source: ABdhPJyF/0gX8VnffeJrG1RyJd6Yz/yaX9phga01OuwC40B8O7VAx0FsD7hVckpnvKypLK4OM9edN/3JLx6x9C20ZLU=
X-Received: by 2002:a05:6512:74a:: with SMTP id c10mr12816686lfs.586.1614699070004;
 Tue, 02 Mar 2021 07:31:10 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-7-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-7-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:30:59 +0100
Message-ID: <CACRpkdYvkr_8mJMjUsLWq09HYaOey7cmWivOxscnX9jrhA-E=Q@mail.gmail.com>
Subject: Re: [PATCH 06/12] pinctrl: add a pincontrol driver for BCM6362
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:

> Add a pincotrol driver for BCM6362. BCM6362 allows muxing individual
> GPIO pins to the LED controller, to be available by the integrated
> wifi, or other functions. It also supports overlay groups, of which
> only NAND is documented.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>

Same comments as the other drivers!

Yours,
Linus Walleij
