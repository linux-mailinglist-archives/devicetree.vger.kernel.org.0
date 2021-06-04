Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B04A39B47E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 10:01:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbhFDIDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 04:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbhFDIDG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 04:03:06 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADE22C061761
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 01:01:20 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id i9so12694828lfe.13
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 01:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2Bw4taStS0TYq1pg5UC4LSk9Au6BM49fh5en5WhcGhE=;
        b=ur14HaR+Deo/iMCQLi4x+4jC05/k1wiyntjUayr32Bcbnj+5gVjebq9KEm/HJEJ8+v
         0p5vibE++OtpvxWXz40k9GbfxEaBflRCeigjtInQQ2bQPi0AiR6CiKvsB6goJowfAQGw
         dOZk5wd/2I155FXqj5h4Kl8bMunugGzElqEwCf4N5NxuTlinMyetl+YLfXr4vGGqC1kI
         QqgTKT0qtNCS/JbMQjXG1Pzdde16POOcPApsifjmoL3okk4PqYyCtlfzgd3eCfakaCph
         Mlfhs0qfhJdK9wd7ssmMRGjuafYUtSkBwxfrEGsgrFs9gSAr5kix4/lkWHoTVI96KZ4e
         eUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2Bw4taStS0TYq1pg5UC4LSk9Au6BM49fh5en5WhcGhE=;
        b=QLrm8uMfJi6ZakZfPAR3CWse44fJSFu6g8ArQrve8/lA6cTod1ut3WNadNAghA7LDm
         AU4s/Ts3jwXMsDX8aEm+NVrzX0ViXaz5xFSwiXgOGrQpnj///aP1UQOfNOAs0nl891DI
         sE565ePWET36AdCsoWt+7E/aEg1oXOb7qzgS6T02PhEJSTowoaGVI5jBRpAai3dxvD3u
         jYqxai41/zVRtv13d0YFueT95nMAa/Mf5l1BKYRfqJdZ9JVRYck8KEmzgiM7xbr9AXDD
         OWsqZqg+phia9FvpBWXsXoiGXLhlJ8d872P5pU4EyxB97l++cSU1mnnzC1GvxxDVSgSM
         UAaA==
X-Gm-Message-State: AOAM532ItpPF2UBOrrp4ruxzOu/mVxu9Bfh6e73RyxQ6qnHRqksQk0lf
        WmZOy+Oj8swRsMMMntK737gaNapQexm8zTU8moKeQQ==
X-Google-Smtp-Source: ABdhPJwBqdYA3oPQgKBi2zU4QEMvIT3pto2rMxLubgXqM5I09bxsqOjHjuGSYlqFDkF4xp8cjxOitNwbigTvKyKt4U4=
X-Received: by 2002:a19:f616:: with SMTP id x22mr1904400lfe.291.1622793678476;
 Fri, 04 Jun 2021 01:01:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210602120329.2444672-1-j.neuschaefer@gmx.net> <20210602120329.2444672-4-j.neuschaefer@gmx.net>
In-Reply-To: <20210602120329.2444672-4-j.neuschaefer@gmx.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Jun 2021 10:01:07 +0200
Message-ID: <CACRpkdY7AqcE4CMAdZHR-DfV-3ZCO3h9kYUZoZCUodLQmyyfXw@mail.gmail.com>
Subject: Re: [PATCH 3/8] ARM: dts: wpcm450: Add global control registers (GCR) node
To:     =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Joel Stanley <joel@jms.id.au>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 2, 2021 at 2:04 PM Jonathan Neusch=C3=A4fer
<j.neuschaefer@gmx.net> wrote:

> The Global Control Registers (GCR) are a block of registers in Nuvoton
> SoCs that expose misc functionality such as chip model and version
> information or pinmux settings.
>
> This patch adds a GCR node to nuvoton-wpcm450.dtsi in preparation for
> enabling pinctrl on this SoC.
>
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>

As noted I would name this architecture-neutral with
syscon@...

Yours,
Linus Walleij
