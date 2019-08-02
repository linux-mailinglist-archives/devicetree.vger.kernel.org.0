Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD6EA802BA
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2019 00:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731412AbfHBWb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Aug 2019 18:31:29 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:42186 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730355AbfHBWb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Aug 2019 18:31:29 -0400
Received: by mail-lf1-f68.google.com with SMTP id s19so53987713lfb.9
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2019 15:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8tQh191xW5z/uqwcXTQaR6iRlPu4dlS4JjUPIzXI1i0=;
        b=L0evPFMisUlfcr0ejK8sxz3FR7curgkYcXNQl3aE8Ndyo6Zm2gmWpA/JzsTVoihGhw
         5EWCzMH8dJbIdO1VXDSeK4S7EczFoV0sHOraDsX4ap9t9qaaHuD0ePuJc1eAHsLsr1YQ
         93BJ8OPQo7AMtWpR1+drmfGGbZarfaW6MBebCodaismcPLqwfsmajV/wb30d7Gf9czUp
         I+H4GL3RuxEU3PZjX2tgCZWhqug0csI/AbnfHt23mFD2x/rk8o2RROuPF/BesU+faH3L
         UBBl/diHpYUBcbJvSpH6gin/E/MeAvwEW3Sp9OZoqR+PXIHTtSL7SpfS63Aehyic2Bu2
         9gUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8tQh191xW5z/uqwcXTQaR6iRlPu4dlS4JjUPIzXI1i0=;
        b=fho1slNKh9yKp1ON98Ww2UuE/a8TqFGKYx4r7CJ7+JXpvbmX5x2V82vuuiuAt84PnL
         GxO2jFoYIJeB3lj3nZd9fFyTKNZWpOfq4ASq77uQmZD0auhuLuLaXNlVCm6tk43z0SFg
         P6FCs5oKOIm58+uUz2waRWc7eRZk6cLHCmHYuGsB9nqErSRFGTNp9ZgsKJM6E6F3O5Ba
         g7B4XbtVluTlQl+76hOuDqpQe2zin7+Au9Nssivt6mWTjqj4ymVB+vrCWCnJw+ElAeV2
         UiRi3S1FhHBMHn+VtqyVd9efc1nbP+0jolqKBb7ncJ1WeypRPCkQuxOldNmHI8hsCw25
         P0oQ==
X-Gm-Message-State: APjAAAXivLg9tEPOe9jbSaUHSo42ckCzTX7US/fVweZWuLRoFrh5erfg
        U1vNqdSQB30dnP6POZyfQbuhhDcQjCcXyVNtSzjY5A==
X-Google-Smtp-Source: APXvYqwDIwDheD+gFq+O5TZV6dJSFLuMVgoQGjhj+lZ8eLAYET/6IhmSX9+fvFrFVscVAgKHzz0hjQPV7iYVurKwj74=
X-Received: by 2002:a19:7616:: with SMTP id c22mr1677508lff.115.1564785087648;
 Fri, 02 Aug 2019 15:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190716215618.29757-1-robh@kernel.org>
In-Reply-To: <20190716215618.29757-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 3 Aug 2019 00:31:16 +0200
Message-ID: <CACRpkdYsYH_z55+OeHzAp9bjj+0WrnH8LoXcEahVcX=in6TTEQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: stm32: Fix missing 'clocks'
 property in examples
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 16, 2019 at 11:56 PM Rob Herring <robh@kernel.org> wrote:

> Now that examples are validated against the DT schema, an error with
> required 'clocks' property missing is exposed:
>
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@40020000: gpio@0: 'clocks' is a required property
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@50020000: gpio@1000: 'clocks' is a required property
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@50020000: gpio@2000: 'clocks' is a required property
>
> Add the missing 'clocks' properties to the examples to fix the errors.
>
> Fixes: 2c9239c125f0 ("dt-bindings: pinctrl: Convert stm32 pinctrl bindings to json-schema")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Signed-off-by: Rob Herring <robh@kernel.org>

This seems to already be upstream, but I have no memory of applying it.
Less work for me :)

Yours,
Linus Walleij
