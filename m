Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ADA527C8D3
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 14:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731864AbgI2MFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 08:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731858AbgI2ME6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 08:04:58 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55E7CC0613D3
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 05:04:58 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id h26so4507620ejq.3
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 05:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XuEHP21dhMBh5T4WXO9Xuu69AATfQ0zf7NJ5Z9eebL4=;
        b=wueAy6HOAcQyM2KhegOErfUpHxD3ely0mqmCcGRxYnv3LowQpHQRGXzC6yDv0wkNb0
         q/2L+bZxK2En+oYdP4J/VWWKl8wZrbIWNov3utIVNEkmeyiqR2Zfiu3/KysFtIrl9kHG
         NobTiJSZKFQ+c9ivq+xh2OC4JdKJnV69ciBMS8lZGV1csYb1uGJWIH2RWSMYKMw/sLVv
         fhBlEFeu6iO9KS+6RWx43LwE0GC59Su6pD6RHyNpeAoI2UzfHYyUc2mqv1GYjVVq+RW0
         rEGEy9sugD7TRBKcyGXGQHBwlHP0NrfzO/KYAH6NjJ+2XAQzINGCTrM5OgPtod+o4TPM
         Jopg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XuEHP21dhMBh5T4WXO9Xuu69AATfQ0zf7NJ5Z9eebL4=;
        b=NK/eK9Bsq0nBR+azrntC4z/0bk3G2Pay3JxQ3Ad29MfFgsbjz222SPTmE3RWCx4xRY
         PwxLWttDP6bTUehQTMQ/O6gAIjeO4HNYCzMmQX6cyOh+gw3dFsWECNTv707cvzHN93Oy
         rhqE/PTXsYUoVMX5J5+W8ZyuAWvcq68I9OS7gmqckiir/EPUtGNgs1ZB+Qk9T/ElS432
         323N6mOQh0DHDFNqpkuUaYDkXfvBNt9UEhd76vctvoxwqD1EUdm5dsGacnpJhJP74w36
         kwlcmOqQ4l+hN11Dh7hYTW3W/FJyz7NKHAoNuEocfmiJYeiZqnvAPjsWcGsCRz9qdtc0
         WzTg==
X-Gm-Message-State: AOAM533ERPOA72fNXcHp9r8pa586xHUyLe76xDGvLSpHkatTOZ1iuBqR
        4H1Yolz0DfuxwBoGvmqQi98VIP/iLAEJ+Frc12HGaQ==
X-Google-Smtp-Source: ABdhPJz7awWKdkxeqGhj84kwINNLUBgCSDG/lRgEu5OC3wXnNTaiMCnWTwxOEKPk82plp2jM6wXgrPtvn8DqUzUc2Vo=
X-Received: by 2002:a17:906:311a:: with SMTP id 26mr3426532ejx.226.1601381096838;
 Tue, 29 Sep 2020 05:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200928184515.7345-1-krzk@kernel.org>
In-Reply-To: <20200928184515.7345-1-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 29 Sep 2020 14:04:46 +0200
Message-ID: <CACRpkdZ9vbsFTsT4A+BH=8x++Uc4EujnMd9DTMvRfQ7QPnLU2w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: renesas,pfc: align example GPIO hog
 name with dtschema
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 28, 2020 at 8:45 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The convention for node names is to use hyphens, not underscores.
> dtschema expects GPIO hogs to end with 'hog' suffix.  Adjust the example
> DTS in the binding.  No changes to binding itself.
>
> Reported-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Patch applied!

Yours,
Linus Walleij
