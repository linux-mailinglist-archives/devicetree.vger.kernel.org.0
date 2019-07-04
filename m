Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0067B5F33B
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 09:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727160AbfGDHIo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 03:08:44 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:41558 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726087AbfGDHIo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 03:08:44 -0400
Received: by mail-lj1-f194.google.com with SMTP id 205so5062920ljj.8
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 00:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z+yDQXZBu9SZbvn6mgBUuVYqmxLVmFyz4Vo9bngrxUI=;
        b=B2BUQrUVxULlKRJS5lMPPjtlfCyR/cpGa/JNFSx1NNpJ70seu+uYRTbvfGypGYABIU
         CxJZfCTAFoaPQIns9v8AwLj7ah0ZG6Sn9hDLHxos8YnGQxtNK7JyE8DVg7Y8vE0Cdg4D
         Ipq7V/VEMO/CHYGPNONTUQQWHlRa9qVCkcOTaODWEdJO0B0iOVxgjxHsRukSZcZ5gXnQ
         /+OLoLT2xdkHASxQZd8U311reV3DxQdqzT7n/qXwoQW77BLy0JRSOtJkgqMKUPdLeAT/
         o1T+RuWUbk2tDvvCAP0VnUN5Unx7ELnCH6ospARtxhvRxFqZgrdUcMr3YxCOELrpDbxp
         7qCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z+yDQXZBu9SZbvn6mgBUuVYqmxLVmFyz4Vo9bngrxUI=;
        b=bSWQxYYM7LlIUid2F3g1qLSIZn+o2arDdrl8Ty3Z/4L1CS4Sp6RGUQPKa1Eoew9twH
         QXRlRSW/Qd0lSoU3zWOcRLyyfjgFz+ADk6nUBBChWUzlsjuv1pegXdxr+O9jiZlpBq5Y
         sKRGF7mEW5sX/LycNyHfMzVSkaB/sfEcSE87+TdytUmAOVYezQszg2ePWsS4zIf4osGp
         u/n+Vhfs4ihbrmRKoaHxEGOhB4DyK9r8T7+5w4JnZSWincD7uF246Zxc5CGncvpIyg5x
         PCXW1VxAFDAhDnBLZb5PtXt7llx5LNK8NwN6myDCF6TR/iGhZ00a0mPvBAnIxs3Z+UWj
         zPxw==
X-Gm-Message-State: APjAAAXxlwWlTbWRye52gSXAMAK2p/1PIzan+3sYhJ0KuuVLqayLbdJr
        bK3BvFN/suyesFJjaU/ZejWFdXthu7gp3aVzf+vSXA==
X-Google-Smtp-Source: APXvYqzAE52wDKWGp7SxUTgiftMLBqCoXOEoy+XcZG4hC4ZwyouUmvy2f/0rCYzbxtwlRi9vLamWTUdF7YapL9YnDsY=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr1982640ljs.54.1562224122116;
 Thu, 04 Jul 2019 00:08:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190703171924.31801-1-paweldembicki@gmail.com> <20190703171924.31801-3-paweldembicki@gmail.com>
In-Reply-To: <20190703171924.31801-3-paweldembicki@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Jul 2019 09:08:30 +0200
Message-ID: <CACRpkdZR6K24U7fag9VOhZR60LPASKXiyPPG8yNcJUjqaE=Ggg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] net: dsa: vsc73xx: Split vsc73xx driver
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 7:21 PM Pawel Dembicki <paweldembicki@gmail.com> wrote:

> This driver (currently) only takes control of the switch chip over
> SPI and configures it to route packages around when connected to a
> CPU port. But Vitesse chip support also parallel interface.
>
> This patch split driver into two parts: core and spi. It is required
> for add support to another managing interface.
>
> Tested-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

That's a nice and clean split.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
