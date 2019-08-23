Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7CBE99A904
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:38:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731748AbfHWHiu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:38:50 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:38712 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732849AbfHWHiu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:38:50 -0400
Received: by mail-lf1-f68.google.com with SMTP id f21so1470732lfc.5
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Lz2W/Er+vhSnNSGXtvI+raF02sxjt0QdGmNNXiXbeZ8=;
        b=xSbUP94itBW5D+EIP6J+VeADRYAq49B6u3tO5t95hiQ3LqFqEQ+LFuJEBkPwIvl6NJ
         rdHJD228PuvuWY4ayKaABZy0R7ZgUsv1KoJKe1+B4yBMntOltSIwBMnp0zedzqrv87zL
         FyQiEkp4NI1BU+dGZ0yLr0aX/BmREJwiUiVaQP7m7hDwK2klVCy6+CigyrmqkaynwxUX
         i9hJB5OCNPeM/9T9HUThretRY6cbh94rGzMPh3Hx8QHO9Re1SquQiiwQO2kbIgauukEr
         DUTZbK0uzXVvytwctPYRyQDuMKG6qUb+FWGnnGyZvGsYO7gI58znr1Ne4ZP01V0cDmVx
         f3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Lz2W/Er+vhSnNSGXtvI+raF02sxjt0QdGmNNXiXbeZ8=;
        b=qnDbMwVe+T1KYm2Xsh+aTqgmZjut6OOTz70vIVrOyiM/dT+yYfEOklMEbajziNziRg
         6osQ3fZXO2Ir8oTG1Xvdu23dxo2lizBZvltkEQLnrcDvAHkAA8zR48KPUZSQKce6+Bl9
         QGKhgbwtk+ii0Cxq3HllVtWKecO0LVaMwrbpDDRkqManV0+ex8lxFCz98zVPEEn+6tsD
         lt0Bb5ZpiKArAkLztUlmFNhoy4Zek3xT3/X1m/jQLhKoLs8m0pNKFXy8Y1dOADkPm8Ec
         uphjkhbi9PQKfXBLj9bDf4p/syJJVbBIKtg9+yAWXeA3hB8pwEX727eKzv6kVUXYC5RV
         mXPw==
X-Gm-Message-State: APjAAAWGo56h2H4AnH5KtFRlkUBLsNFNUUymZ3YqsbMoNvZ8zYnpEZPO
        cPP4ma4OSmxinP13WZXGL3EHqMOWViiv31Zsb63SGw==
X-Google-Smtp-Source: APXvYqwn8sOli89h3xpwI0gsI6dJyFeTKTHshx0YK3OmzA9sFUzjhWgRf+UO3GE1WNBwItHvNrorYCww02wff3Qgq/U=
X-Received: by 2002:a19:e006:: with SMTP id x6mr1813674lfg.165.1566545928179;
 Fri, 23 Aug 2019 00:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190808101628.36782-1-hui.song_1@nxp.com> <20190808101628.36782-3-hui.song_1@nxp.com>
In-Reply-To: <20190808101628.36782-3-hui.song_1@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 09:38:37 +0200
Message-ID: <CACRpkdajLb3Spsq4SvRCEJVQcABK+QnNyZi5C3ciTvirjcHF-Q@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] gpio: mpc8xxx: add ls1088a platform special function
To:     Hui Song <hui.song_1@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 8, 2019 at 12:26 PM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> ls1028a and ls1088a platform share common special function.
> The gpio hardware what they use is the same version.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied.

Yours,
Linus Walleij
