Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5FD138C452
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 12:04:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231627AbhEUKFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 06:05:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232008AbhEUKFv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 06:05:51 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D947EC06138B
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 03:04:25 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id c15so23257428ljr.7
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 03:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y703Ccx+OTVaWUBCSYH8WB2pCfwJTEkBdShX5aoEd5U=;
        b=FK4Uxegv3dlbXSHmfZkIILoMjTrkUnCadXvOCTXwz61zBEqo8XuxaRLI477qridtDX
         KWRqC0Xsyy0RaSBAfI6HDwck/LKYxEk94TEDa96tzAY98IC0ure6vHgQGuXZUV/0XYOe
         1byrlbnUhRcixOf3T1VQq+B04CvZyvvz6tG+DBF4g3Sok9dofTiV0jMkvyyiZSqCs/z6
         e7lV7gcjVa3MfE9TgNzQj7WnkfmpOF2UlkJ7vIpEVMrPfud5DKKbcPSZFcXpqMZFIllr
         T6sTGSQtx5RTFo2r9r6qO8uQ33iyoHjb2iat48Ts9zBk5bMolvT4PaaI7DjVSkCgjqVf
         +7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y703Ccx+OTVaWUBCSYH8WB2pCfwJTEkBdShX5aoEd5U=;
        b=k0nrRrhrrnQTqQXk+ndjrnBcvtFWBNMjVMcaW8WzwElOU+bcAyrjFgmvYeItt2hHP2
         bIAkQYHSkQ3w1o/U8H2a8ppwDbW3RaqhJMKzQLJScot9wYqk3MKEaF2Tjyzw3I16QN5O
         c/1GQ4BqKYuIjgOBRxNu6HaJ81h1r4ziMhe+IgC9JTcIbHZmt8FC9mLyIPByVRhRiGCy
         hHGNQBKXcq1u9QN+pY6XDIvdD/ovuKvJ+IxYYdlUX4s5dw2vOcZJPTExIRtqZm1g4g5c
         z6im43mQeFzNndCc27BUQmKG1zujvuR5tyjmfPRhjiJj1nU1OzIdZnP25J/Nve/VOdEs
         ZFxg==
X-Gm-Message-State: AOAM533Jm8sAnp51GyP46+fK5DDwGIY7dgqYhTR3PLHq4p/MuxZwLwSM
        CJI8CN0ep5VCJYqcZM3PjJ97cK8n5nxNKuw5UDdutA==
X-Google-Smtp-Source: ABdhPJxYYlDb+WDA9clSQo27j62lQA1sN33Wn6ony6XmM/ZkiSizwZPVoBxp6VVDs3T+PGjG3ATJK87UTncv58xBVOI=
X-Received: by 2002:a05:651c:4c6:: with SMTP id e6mr6517419lji.326.1621591464170;
 Fri, 21 May 2021 03:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1621583562.git.geert+renesas@glider.be> <52df0592c81ac000d3f486a9ba5a4d84b0f42c47.1621583562.git.geert+renesas@glider.be>
In-Reply-To: <52df0592c81ac000d3f486a9ba5a4d84b0f42c47.1621583562.git.geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 21 May 2021 12:04:12 +0200
Message-ID: <CACRpkdbQE1-WgD_BBkHx9DvJ=GfW7-PCoF-73TKGpgh4c6Epxw@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: gpio: pcf857x: Convert to json-schema
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Jan Tuerk <jan.tuerk@emtrion.com>,
        Shawn Guo <shawnguo@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux-OMAP <linux-omap@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 9:54 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Convert the PCF857x-compatible I/O expanders Device Tree binding
> documentation to json-schema.
>
> Document missing compatible values, properties, and gpio hogs.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

(...)
> Perhaps the "ti,pcf8575" construct should be removed, and the few users
> fixed instead?

You would rather list it as deprecated I think?
It is ABI...

> +  gpio-controller: true

So this is implicitly using the generic schema in
/dtschema/schemas/gpio/gpio.yaml

> +  lines-initial-states:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Bitmask that specifies the initial state of each line.
> +      When a bit is set to zero, the corresponding line will be initialized to
> +      the input (pulled-up) state.
> +      When the  bit is set to one, the line will be initialized to the
> +      low-level output state.
> +      If the property is not specified all lines will be initialized to the
> +      input state.

Is this something we standardized or something that should
actually be a custom "nxp," property we just missed it?
(Looks like the latter... oh well, now it is there.)

> +patternProperties:
> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
> +    type: object

But this is already in
/dtschema/schemas/gpio/gpio-hog.yaml
for nodename, isn't that where it properly belongs?

I'm however confused here Rob will know what to do.

> required:
>   - gpio-hog
>   - gpios

This is already in
/dtschema/schemas/gpio/gpio-hog.yaml
as well?

Yours,
Linus Walleij
