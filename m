Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 282FD29FDE
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 22:28:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403852AbfEXU2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 16:28:47 -0400
Received: from mail.kernel.org ([198.145.29.99]:60748 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2404104AbfEXU2r (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 May 2019 16:28:47 -0400
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9E9F0217F9
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 20:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558729726;
        bh=JjLuxZd15YS8ce7/3JtjMDPYXP1vrOBgwkAGODXovT4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KE1BLQu8Cu1pCpNeczUH4dYXqrtrrzfNqKBdd6wr2r/z7xUN4GGfWvy2knIZqfcxq
         RiundfM2719VjQMzI99idOdhy2rri7wCHPJR9EfzvBT+qBWmlM4XQu7KkMudQQtAEO
         dV4jXEL8R5ayOCVMOJs5Rl/bmIthFWfLp04LJIqM=
Received: by mail-qk1-f179.google.com with SMTP id i125so7266504qkd.6
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 13:28:46 -0700 (PDT)
X-Gm-Message-State: APjAAAU1AKhTtQe31BOyNODQ0Bl9F1tbyOTVFn5J/GyUNS0RMGh1RkAP
        vlkC7WU59yyDMlGry5n9h4qou0RxJ/aIxSN5HA==
X-Google-Smtp-Source: APXvYqxT5HWriyhnIaLdL0b/p0ngf0zs/2jWKzDWRP9XaMqr1OulKXi1LfCoHWUvOZ/tnkBIYrecedFFkoN9Xet7zIg=
X-Received: by 2002:ac8:7688:: with SMTP id g8mr59899359qtr.224.1558729725948;
 Fri, 24 May 2019 13:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
 <9b280f9ce894e4e2ea7259db505cbe1a3e00120e.1558702660.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <9b280f9ce894e4e2ea7259db505cbe1a3e00120e.1558702660.git-series.maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 24 May 2019 15:28:35 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKhP0DvZSAEHA47d4UY6LQYKobZdfAxSk_9FWuBS9UJgQ@mail.gmail.com>
Message-ID: <CAL_JsqKhP0DvZSAEHA47d4UY6LQYKobZdfAxSk_9FWuBS9UJgQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: sound: sun4i-i2s: Document that the RX
 channel can be missing
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 24, 2019 at 7:58 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The A83t and compatibles controllers don't have any reception capabilities
> on some instances of the controllers, even though it was never documented
> as such in the binding before.
>
> Therefore, on those controllers, we don't have the option to set an RX DMA
> channel.
>
> This was already done in the DTSI, but the binding itself was never
> updated. Let's add a special case in the schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml | 52 ++++++++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 42 insertions(+), 10 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
