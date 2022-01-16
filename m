Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69BB048FC8F
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 13:14:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235057AbiAPMNq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jan 2022 07:13:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235050AbiAPMNq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jan 2022 07:13:46 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29B2DC06173E
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 04:13:46 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id a10-20020a9d260a000000b005991bd6ae3eso2626794otb.11
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 04:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UO8vyFXvwX7SYghDbHUuZM8heKAVpRc2v8cLwYWVW4o=;
        b=DjeVuuDA0KdW/nC+q7IdYmQb9nZIn8j7wxygw5t2/5T4newz9evcma+miU7y1/p/0I
         eXwnj1nfNhOiiI4ws48ScbwqL+cXjT5j8t5aCZ4dgEanylNdJ7FR+7u1lg57iT/+tAVE
         ysgkLMRcOs5vvV74olBjf56f8WxLVe9FVgQg/O40Xz+7ucN2n0Q+oP7MDD1x99ondwqF
         FFR8ITiPDvE015UKgutcCc7IxeocpTcQC6JUQiAcB0xbql2rVXF+UXffzyY9kEj9M7Lo
         zQqsczhvBg5Fs1mCgIbWyUbeUHz3G9DwbuEofmpHMITCk8GEQNe6eSYW5JSp5PR1+a3O
         6sOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UO8vyFXvwX7SYghDbHUuZM8heKAVpRc2v8cLwYWVW4o=;
        b=gTYqq80ME6/KBHhwolIk1R+6pknCFoWhpLhw+IASaVHrI/Mf511URMVKasN2JY7QJ7
         cTzhat4xOuNpkYBNDreLEJhl5QOMm1CrTO8UQq4PwlYvqN/FYK82mtJW0Fx0zS+kG0m3
         si93IObN0qxJZRVsod/UBQNQHEZZxkTr4x3TS198BO5IsV6tEsrTRn4TQ+9SroVAjLcR
         RGoDSWlTEd6TvRg/N5G1m21ig2RB2xlCxsWbLuYaGI8RYyy7/ZINdTvlgx3pDHdM6qds
         QVlucr+dPc4BALaeES9ijqBY/0/X6/ApFx9OOLPjWog0UKmmMOnKgmQTB4TXNgwVRaxd
         4IvQ==
X-Gm-Message-State: AOAM5337moXhm5dAJmU4y+KEMKRIPY2hNSW7feyv2kDy3TmcmpEq1WlC
        q+cmX9sq8GFlqxY0LVoF2r9JdsZIGua9o8skJFJbEw==
X-Google-Smtp-Source: ABdhPJzdicsKDrKNgLtStCnnhN2DtxD7a6BfPYtUCC55jkQfRghWaCtzmmu1EZ0JbC7fzfUIvqyXnGrAUYFMDAGTJy4=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr13252447otg.179.1642335225538;
 Sun, 16 Jan 2022 04:13:45 -0800 (PST)
MIME-Version: 1.0
References: <20220114141507.395271-1-marcel@ziswiler.com> <20220114141507.395271-3-marcel@ziswiler.com>
In-Reply-To: <20220114141507.395271-3-marcel@ziswiler.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 16 Jan 2022 13:13:34 +0100
Message-ID: <CACRpkdb+62jojDXTjEXjgMrpo6XkZy8AZg+jDdhqt-7w6nVQig@mail.gmail.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: gpio: fix gpio-hog example
To:     Marcel Ziswiler <marcel@ziswiler.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Marek Vasut <marek.vasut@gmail.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Rob Herring <robh@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 14, 2022 at 3:15 PM Marcel Ziswiler <marcel@ziswiler.com> wrote:

> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
>
> Even if this is no yaml yet at least fix the example to be compliant to
> later schema as e.g. found in gpio-pca95xx.yaml, fairchild,74hc595.yaml
> and gpio/fsl-imx-gpio.yaml.
>
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
