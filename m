Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F28B4216CA8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2020 14:18:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727044AbgGGMSS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jul 2020 08:18:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726540AbgGGMSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jul 2020 08:18:18 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02D26C08C5E0
        for <devicetree@vger.kernel.org>; Tue,  7 Jul 2020 05:18:18 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id k17so11795593lfg.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2020 05:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SOnszkcT7TNdqVrzh07A8SyMxgSxeV8gTnMwaKIquLk=;
        b=N/OvAqBuFoj3Pd62waZt9/FVEceVBKbXkq4lTVip5frbC/0py1e7qlSOX/CaOcJ9KN
         0ebXE5iiaXIXyQ4zZoZ/VQWHhEOelXphjkuL5AH8WTrx3FrDh+7Lq7yQMGJnjPLYPGjf
         JlYqdmHB0kc4EsvML9Dg+v5OpEY/f1e+X5c3iVVMyrMs/Vj8caqxoTOpjfK6uHf7rAxS
         HCtI7caAC/hBKCsbr+Otirw4x55NLo9xlDxOyYY2pg0EfJv7aYkbVXr7eZT1NSwSEi88
         XvcPSH8TDp6QBHWzKhtfH++wuwbFvJXZZ9qs7kic+y2B6FLOMsY3iYjf8g7y4gqTI4K1
         nxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SOnszkcT7TNdqVrzh07A8SyMxgSxeV8gTnMwaKIquLk=;
        b=DwAALihZFiZ0PFUuhVqVlzw7hVK1mUGwhZeKJoTX9cl3XCxqg5TeofZK2qkDe4g3/p
         Yg5COrGSFPe+BfwoHjspNubGzX29lqLW1tMXYkMLdB2OawQWwR64/NKDHjgfWs8rMT7f
         I9kfKyvzxtfGDlZsyW8fKpjTQfMqLSHg0Z1pQTcnW70o5szqngg++QfacPcoCo0+udlW
         8IP9OgBk1GO4QqXhzeZLy6+ol/gzKx+Hk81nRwm0GGFE6+LpdXkgxV5RNfit/k26coES
         m0y5mYOENOr+HH6Qc7gaSfOViuWY/iF9BCqax7h38gUQHFPhu97DD94yd39KANfAtFCJ
         zkCA==
X-Gm-Message-State: AOAM530EN1nkXSBYOltGPAH8YLgcAKq7LLp5P2SeMjQOa1vifvJWMNU/
        bmZIjUcyFJLDn8k/harljKE0xrejrhdo9T6XNOYZQVnVQpw=
X-Google-Smtp-Source: ABdhPJxH0G4kh8NlF9pHPkG/HVOhx9RJ/tQnhLrHOKjaGWMKl3J+G1CqdUSXg1kIkjYFLaEAugmTgoODVIXAf9jL/7E=
X-Received: by 2002:a19:745:: with SMTP id 66mr32931901lfh.77.1594124296456;
 Tue, 07 Jul 2020 05:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200622113740.46450-1-paul@crapouillou.net>
In-Reply-To: <20200622113740.46450-1-paul@crapouillou.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Jul 2020 14:18:05 +0200
Message-ID: <CACRpkdYsH9B4_6XLuc-8koMsA6JdFSaMokcF+k9KK=mz-CtUBA@mail.gmail.com>
Subject: Re: [PATCH RESEND v2] dt-bindings: pinctrl: Convert
 ingenic,pinctrl.txt to YAML
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Rob Herring <robh+dt@kernel.org>, od@zcrc.me,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 22, 2020 at 1:38 PM Paul Cercueil <paul@crapouillou.net> wrote:

> Convert the ingenic,pinctrl.txt doc file to ingenic,pinctrl.yaml.
>
> In the process, some compatible strings now require a fallback, as the
> corresponding SoCs are pin-compatible with their fallback variant.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>
> Notes:
>     v2: - Use 'pinctrl' instead of 'pin-controller' as the node name
>         - remove 'additionalProperties: false' since we will have pin conf nodes

Patch applied.

Yours,
Linus Walleij
