Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1069939B60E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 11:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbhFDJht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 05:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbhFDJht (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 05:37:49 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FCC5C06174A
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 02:36:03 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id v8so13111679lft.8
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 02:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=aYp1Adr5CMzSylwvBButnic0kZJJSgzI/e/jfoc5XXY=;
        b=zInM2KVNPb/0QPFcMUuLjrX59X+MSPyOsPXAiH3/QeJdWAGWbbnaRTPHS24RvPGmhr
         1c/s7uWCp98bhXSvtHnmma4hxMKj2wkELcRP+NW8x4BhYVcl7Wb9OOmOAoZonNLEktjv
         f2GNReyAgIRUBqQ8e7dj4F0fjf2WoHlRjuhmhoG/EVs4gN3buzRA5qQ5eVJpspTvDXS7
         4kXp7Z6GCmiEQiovkQ6T+dw7y2+dMgjt9+vbFYwK6JWAMY0KocQsTXw4Cm6oKlnnJb0j
         KuJ5dOhdjhcfWgh6ghhZpWAQeFdQTklOzHk9JKZfwIMnCavpwhvEG5mnqRGyRTrrfBBV
         Go7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=aYp1Adr5CMzSylwvBButnic0kZJJSgzI/e/jfoc5XXY=;
        b=sk3gg8sRTlGwt/TpScAhcUNNipnOPkLrpqELTpVg7gRzZWX2iTlUUMS6ddTx1NDjih
         L5nYl/mlqQP1aGkUBDgKEubitN81YiRtvIteeYXUf8lk4sz9bJY3F7HCCrAEOsHaDwzF
         m87bmN86F+bcJOk1VWS0T9EH6vsCc85A/R4wZbXrEZN2H9LsZyoEFbv44Axb/QLDvPZ+
         pWqbsnO3p1W6dG/+s3RPca8+7tTtS89PQxrTVcpmyWar7eJxDGORMj/TEW3hfgIWKc63
         fTAANSAAR0YOMau3cTJ2dkW4M+BLpltnhGDpDQts4lh7DhWzWL3vKjLLrw03lCC+yOtk
         a4RQ==
X-Gm-Message-State: AOAM5307A8dgRZLlwM0TN1OfFTUN5DqW96KLiNy5VZ9N7S1Lu4gTJOFo
        eEzIG+sB6UMgUBfB4tP2+pwgLlqR9fWuF0OseX3hMg==
X-Google-Smtp-Source: ABdhPJwRz2Ggev+bmlNahkOO4PO7MbTDQi1yWOTrON9QwGEWdv0Ln2lES8Z8v6XjQDOxumVe/uHb7ZSWxPmgPct3veg=
X-Received: by 2002:a19:c753:: with SMTP id x80mr2236380lff.586.1622799359520;
 Fri, 04 Jun 2021 02:35:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210602120329.2444672-1-j.neuschaefer@gmx.net> <20210602120329.2444672-5-j.neuschaefer@gmx.net>
In-Reply-To: <20210602120329.2444672-5-j.neuschaefer@gmx.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Jun 2021 11:35:48 +0200
Message-ID: <CACRpkdY6c750Dnh2H_6uEhOHJv-kLd_OpHqnuDKu4DQezZ2C_w@mail.gmail.com>
Subject: Re: [PATCH 4/8] dt-bindings: pinctrl: Add Nuvoton WPCM450
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

Hi Jonathan!

thanks for your patch!

On Wed, Jun 2, 2021 at 2:04 PM Jonathan Neusch=C3=A4fer
<j.neuschaefer@gmx.net> wrote:

> +  interrupts: true

maxitems 4 right?

Make an enum:

interrupts:
  - description: what IRQ0 is for
  - description: what IRQ1 is for
  - description: what IRQ2 is for
  - description: what IRQ3 is for

And describe how these interrupts are used. Because I am suspicious that th=
ey
actually correspond to 4 different GPIO blocks, which should then be their =
own
nodes.

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    pinctrl: pinctrl@b8003000 {
> +      compatible =3D "nuvoton,wpcm450-pinctrl";
> +      reg =3D <0xb8003000 0x1000>;
> +      gpio-controller;
> +      #gpio-cells =3D <2>;
> +      interrupts =3D <2 IRQ_TYPE_LEVEL_HIGH
> +                    3 IRQ_TYPE_LEVEL_HIGH
> +                    4 IRQ_TYPE_LEVEL_HIGH
> +                    5 IRQ_TYPE_LEVEL_HIGH>;

So these.

> +      rmii2 {
> +        groups =3D "rmii2";
> +        function =3D "rmii2";
> +      };
> +
> +      pinctrl_uid: uid {
> +        pins =3D "gpio14";
> +        input-debounce =3D <1>;
> +      };

I challenge you here and encourage you to put a node for each
GPIO "port":

  port0: gpio@0 {
 ....
  };
  port1: gpio@1 {
 ....
  };


> +    gpio-keys {
> +      compatible =3D "gpio-keys";
> +      pinctrl-names =3D "default";
> +      pinctrl-0 =3D <&pinctrl_uid>;
> +
> +      uid {
> +        label =3D "UID";
> +        linux,code =3D <102>;
> +        gpios =3D <&pinctrl 14 GPIO_ACTIVE_HIGH>;

Would be gpios <&port0 14...>

Yours,
Linus Walleij
