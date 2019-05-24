Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7FB429FDB
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 22:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403886AbfEXU2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 16:28:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:60528 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2403852AbfEXU2V (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 May 2019 16:28:21 -0400
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 57F5A217F9
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 20:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558729700;
        bh=13Mev8YkM54Ft9qzcl+x5Ege3YgKV8krYwHCuAy8n9s=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ZMfBw04KE2lgy0GFPFtrPQRhDtq6HIYZW/+lSlMpoK2O6sn79QXl8wMbU3Uy7PPdY
         Vt7QuacZvFDMCb0WFWXOXLPao2gLk/c36Yzir93shYKu/ob+dGWrfC173uC/xV/VfW
         DFMXj8J3ayjsyR4usp2AB7J8FMYT0HpDzgdWXzjw=
Received: by mail-qk1-f170.google.com with SMTP id b18so3423317qkc.9
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 13:28:20 -0700 (PDT)
X-Gm-Message-State: APjAAAVOCtDv0YGE+ntARs9N6D2ADMYf3+J3FGQ/Cwea9jWZhahj/m8m
        GmDMQT0cCkSV2SoDUD+1RZePQ+fX/EKCOAlhIw==
X-Google-Smtp-Source: APXvYqwFu0E2ViqG6ck5yEC45obusb6XaWVgj3mDLmugudIWnwPrUeNty9XTMypvF9XYoRSwGbANG2G8NHwGCeYqT6I=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr84475836qvv.200.1558729699650;
 Fri, 24 May 2019 13:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 24 May 2019 15:28:07 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKX==vmpbW=EERnJHRwL-o4R903p-9p_x0abFHJjWGvMw@mail.gmail.com>
Message-ID: <CAL_JsqKX==vmpbW=EERnJHRwL-o4R903p-9p_x0abFHJjWGvMw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: sound: Convert Allwinner I2S binding to YAML
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
> The Allwinner SoCs feature an I2S controller across multiple SoC
> generations.
>
> However, earlier generations were a bit simpler than the subsequent ones,
> and for example would always have RX and TX capabilities, and no reset
> lines.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml | 100 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/sound/sun4i-i2s.txt                |  45 +--------------------------------
>  2 files changed, 100 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-i2s.txt

Reviewed-by: Rob Herring <robh@kernel.org>
