Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 242553A44B0
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 17:10:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbhFKPMm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 11:12:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:56274 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229792AbhFKPMl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 11:12:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B404613DE
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 15:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623424243;
        bh=LZfgzzsTu933LnZjW4x5plMccVdr3NZnLwOajYTc730=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ngpIrNwE9eVhUURwkE0MQnklMFYTyS53F+u0w47Mjq2QxHZgz2eB6ANerfh6cnQ/A
         4O9lSmDjw0tAPBNZOZBr9HZj95hUFEeUv3hzMtJt6HzJCqnSOdMg5qxElTAbtUil1V
         CDYHnPy/vRjI+pVRngbvqCjqrA+DNdwsC8TWns0diJghBTj/wGxSHK40iVe9GoRytA
         loRSjstl6oB5JhJ50e6AC8dhZeS/50Ff46qfbJjPDr+ASqwX0BEs1Mngl0ER6UG6yc
         yhu6pE6sLTtJyjr3b7yVJOb/mdV1zvJhp6whFi5O51m3jJNdjwQbzRMd4EYFTM6qdy
         F7ua+UrlwDbrw==
Received: by mail-ej1-f53.google.com with SMTP id k7so5037140ejv.12
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 08:10:43 -0700 (PDT)
X-Gm-Message-State: AOAM530VKtCO23+3OftKTZmCCc86fspXqwrfR852zSbixUHldWr47QcK
        glDVyywrr7Ix7LPS7EqwK26baK7UotNttNcBSw==
X-Google-Smtp-Source: ABdhPJzd6nI+cA/IXS5U2ZgR7cJpYamZW2F3GH6iGy+6sXnJ2UNJch3RshlFKHnquPg3K3x20s08q7AmOjQ9XJjps+M=
X-Received: by 2002:a17:906:394:: with SMTP id b20mr4109992eja.108.1623424241774;
 Fri, 11 Jun 2021 08:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210611053533.16701-1-vigneshr@ti.com> <20210611053533.16701-2-vigneshr@ti.com>
In-Reply-To: <20210611053533.16701-2-vigneshr@ti.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 11 Jun 2021 09:10:30 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+DgeH40x0H-ny_Ot_VVkr5tu=yE4aRcBgSNmrm5woJLQ@mail.gmail.com>
Message-ID: <CAL_Jsq+DgeH40x0H-ny_Ot_VVkr5tu=yE4aRcBgSNmrm5woJLQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mtd: Convert cypress,hyperflash to YAML schema
To:     Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        MTD Maling List <linux-mtd@lists.infradead.org>,
        devicetree@vger.kernel.org,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 10, 2021 at 11:35 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
> Convert cypress,hyperflash bindings to YAML schema
>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  .../bindings/mtd/cypress,hyperflash.yaml      | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/cypress,hyperflash.yaml

This isn't needed[1].

Rob

[1] https://lore.kernel.org/linux-devicetree/20210607193500.3085920-1-robh@kernel.org/
