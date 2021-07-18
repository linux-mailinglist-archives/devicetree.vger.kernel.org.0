Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3A383CC702
	for <lists+devicetree@lfdr.de>; Sun, 18 Jul 2021 02:17:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231840AbhGRAUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jul 2021 20:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230502AbhGRAUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jul 2021 20:20:04 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A225C061762
        for <devicetree@vger.kernel.org>; Sat, 17 Jul 2021 17:17:06 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id s17so8981244ljo.12
        for <devicetree@vger.kernel.org>; Sat, 17 Jul 2021 17:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X1WDN9LkkfTLodn/7AZmvdlWK3elCwMaUY4+s15zcjs=;
        b=lr/rWTTelnW7nH05zdzy9FmUTLjtt9x/tUlCN50zyyz+UyWy1fPUrp4MBwEazKLI1X
         2tI09g2FvGKVdBNeR3iA0kePNjlxn4uF99kvRlbRpGmJBtM2bXfqPCvnMsV4fZEDXgOB
         cfwfCTZpRJpP8XCfwPBB5HLe6EFbcUx+r6SV3aYbkgX+R7j54g2UEufmNHwppKl+Dy60
         eOF4MHP2iIoOLUblsBzMt0mEgLB7yhdJNOCfiHkbgnmudCLvzyCDPAW4uBSYjhD/V0iB
         QzT5UmxJpzVt0uhk/TARoTkXEq7y4rI/1NwAj9vsXfO4oc8lvVdfu0NPKzeKeoGF+Sjn
         KtGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X1WDN9LkkfTLodn/7AZmvdlWK3elCwMaUY4+s15zcjs=;
        b=fuBpCTOSUdi4RILomfEPh7nb4M7TRgAWAOoZwZy7mpdS2oHOymJ0RWUBA790xPFym1
         tXg+kvK825F96569hjfNbn9AlijPTC/+iqWQUkJAg47zCMdoFDbABzi2CTV5YH0qxFv4
         V1ZJ6oM64WtQlBRe31+F9oWGKLXYdy4gv9QDXy1w4SaTyOUMDgXbtm0HNlq1yHAsyuPK
         DpZdV15l+c7Q/RVY89dTwxodHU6PfRJKpnINzwiue6X9Q7K47stfaEVKHP482ds28urz
         rbmmhECnptjVxG8UUP2u0IRtSH46NTrWbV63sfXDQN5EPh2H4ZP+tMGeI+gptxhLwfux
         V6RQ==
X-Gm-Message-State: AOAM531deycuUeCQxirZSShPweHNPee/r78L7RscAxCTuIhE9WAxraee
        ssYDAf1fBwoVB0WArqzG0503Q0LvkrdMI/C42Bd0Gg==
X-Google-Smtp-Source: ABdhPJyH8Es5S0fiHP/hznaMowGfa4CiQ/5DqH3eELfDWrap1a8f9HW2gm8T83Kn6nYavVuv3RpCOGtt2aCb7jKivCo=
X-Received: by 2002:a05:651c:160e:: with SMTP id f14mr7064711ljq.273.1626567424296;
 Sat, 17 Jul 2021 17:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <1626430843-23823-1-git-send-email-dillon.minfei@gmail.com> <1626430843-23823-2-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1626430843-23823-2-git-send-email-dillon.minfei@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 18 Jul 2021 02:16:53 +0200
Message-ID: <CACRpkdbkOY08THPsPHfOOMeToHGXZvN2DBoKG9+WHeke9jypzQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add ilitek ili9341 panel bindings
To:     dillon min <dillon.minfei@gmail.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Doug Anderson <dianders@chromium.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dillon,

thanks for your patch!

On Fri, Jul 16, 2021 at 12:20 PM <dillon.minfei@gmail.com> wrote:

> From: Dillon Min <dillon.minfei@gmail.com>
>
> Add documentation for "ilitek,ili9341" panel.
>
> Signed-off-by: Dillon Min <dillon.minfei@gmail.com>

> +  dc-gpios:
> +    maxItems: 1
> +    description: Display data/command selection (D/CX)

This is a DBI feature so mention in the description that this is a
DBI panel.

> +  spi-3wire: true
> +
> +  spi-max-frequency:
> +    const: 10000000
> +
> +  port: true
> +
> +additionalProperties: false

Please add regulator supplies for the power lines, it's fine
not to implement code handling them in the driver but they
should be in the bindings.

For the ili9341 it should be

  vci-supply:
    description: Analog voltage supply (2.5 .. 3.3V)

  vddi-supply:
    description: Voltage supply for interface logic (1.65 .. 3.3 V)

  vddi-led-supply:
    description: Voltage supply for the LED driver (1.65 .. 3.3 V)

Yours,
Linus Walleij
