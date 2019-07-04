Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92F565F356
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 09:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727231AbfGDHQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 03:16:24 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:36958 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726964AbfGDHQY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 03:16:24 -0400
Received: by mail-lj1-f195.google.com with SMTP id 131so5093569ljf.4
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 00:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CM3CA+ac86LStxn0A7zCf+sHc6gVIK+nURjGT/ZVURM=;
        b=noWI4Xsww4AJnpE58QFOvduhB9wBWDFkpSe+Vwy2fZ0AOCB5779/gGsN9l9X3L3+Vz
         2U5Mk11jDXkh5zK+rXiY70rSTYMLGD7BnXPYnyoCcVx8i4GKaFI7DmR0K3KNh6+ITsLa
         +ZIwOEF1CtSL/fsKuACAzNIn1sAWmf3FOy9180YbvETQeZ8FwqoZUTSzZJ38suahAHQ6
         2/pTGWkhA96+/1UdRfkOfONEpVlxYmnxyH5DD4tqyT6zU50JG5MO65uD+2RKBnlx17GQ
         u3caugrGFRIDPf3gx/miR319qEwsnJDN2icdIMupqu+FmXg/MqUQprrULNQponZsL/jF
         B9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CM3CA+ac86LStxn0A7zCf+sHc6gVIK+nURjGT/ZVURM=;
        b=RQBLXlRFy8ELiZa0yZQsutmGqFAhUuqhPByTGY5/Bt+I4EoD7EwWJDAGtASXemhxH+
         /vXJnBfn3O1kL0jl7DFa/5Y/iBnofPLaFxqNnyZxf6jo70lLvil37cxKYpScgzjP3dJ2
         9iEhjujK2XAALZzIQL5JChW+O9McE5W+fpqznaM5c16LsfkfpycSh5bbKUvQmJAh50Lt
         xgfyAeigsOygbnsZOoFi54VAm6jlpkit8ptlhaRoQHyBKa4EkjbM5pTA3mpXlNcCUvos
         IKpEFqRxrAUQrEoaaeUP0HXzo6DLHnOzcdRJKU2Mag+rRnZROtytUIGTNeH8nHoSy6ca
         pBcQ==
X-Gm-Message-State: APjAAAWaXJZ9k49yNxMuZUWutYWLfMSjhgDs3zJLlsOUHPl7QwIpNP1B
        pAvlowjN4oMnUNJCcjexHFEw4Ykg+jHiNppBr8B+lw==
X-Google-Smtp-Source: APXvYqzE9S7+MBd9cz3CLYgD2cxe0CiQIYN/YmMnO+BXFTBBIuqXEJP5eErh26Lm2r6+xg1JL2/RPnz20gM0wD6QESg=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr5076509ljg.62.1562224582501;
 Thu, 04 Jul 2019 00:16:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190703171924.31801-1-paweldembicki@gmail.com> <20190703171924.31801-4-paweldembicki@gmail.com>
In-Reply-To: <20190703171924.31801-4-paweldembicki@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Jul 2019 09:16:10 +0200
Message-ID: <CACRpkdaLZ8XeyLhH_mzwb5phRNvuwuUgecWKBVa1Z7L0QqH_bw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] net: dsa: vsc73xx: add support for parallel mode
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

Hi Pawel,

this looks overall good and the following is just
documentation nit-pick so feel free to add my
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

On Wed, Jul 3, 2019 at 7:21 PM Pawel Dembicki <paweldembicki@gmail.com> wrote:

> This patch add platform part of vsc73xx driver.
> It allows to use chip connected by parallel interface.
>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

I would elaborate on the fact that we're dealing with memory-mapped
I/O but perhaps even more important to do that in the source code file and
Kconfig so it is close to the users rather than in the changelog.

Write something about the address bus wireing making all
accesses big endian.

> +config NET_DSA_VITESSE_VSC73XX_PLATFORM
> +       tristate "Vitesse VSC7385/7388/7395/7398 Platform mode support"
> +       depends on HAS_IOMEM
> +       select NET_DSA_VITESSE_VSC73XX
> +       ---help---
> +         This enables support for the Vitesse VSC7385, VSC7388, VSC7395
> +         and VSC7398 SparX integrated ethernet switches in Platform managed mode.

I would insert something about memory-mapped I/O mode
over a CPU-attached address bus.

Yours,
Linus Walleij
