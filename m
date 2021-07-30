Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8D413DB6E1
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 12:09:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238446AbhG3KJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 06:09:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238274AbhG3KJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 06:09:36 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21336C0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:09:31 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a7so11580905ljq.11
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y94AS1a4tgcxQc2L0kh6j5VjagWiBRlRk4u/cyvCoVU=;
        b=pS2qOeCk80eD/BMpuN5dXb5bTNKtlSpIaCfiWdI+qPNjl1R45VwIGQw54/4Y9rgtA7
         iAYycg5XAiIqXZdwDHnnnE3js5uKU9iHMRDSLdlenW0yUiNU91J+rWvnGbUhfYoinbfF
         rcOtQWMoKlx/VxtRJXwlRivLsk4YcXF6EbkbsEI1dn2DckwGNMGv3g4Ggm+EpA10s9+F
         YHLazzOlFq7r9iiQFB5BYWXou94owue9Q6xgTiklotLJAKisQ45YUS2IaLsjwdT/17GK
         o4ksvBGSTkD1koeb+cXiXv+fk4+yygNMVaPZVhF55s4VjYL21+ZlQt0geFhRnTtfl6jN
         UE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y94AS1a4tgcxQc2L0kh6j5VjagWiBRlRk4u/cyvCoVU=;
        b=KN2fVa7in1Gi7/noSor5xw6Lw7eOp07u2xqCVTWJ8Pd+lV9yxb9xMAd/1WWoIWTMS7
         5NJ199awt0egYTQT4vqQpIHyGmXqugwfso9UwnMBSdXQrWTjefK5k/vGN2S6euBwhWGj
         yyiRK0COPgEE/ws5blVO2q9IT8q4djqjtA9a6qq4k3pO6Qdq67FJ4trUHgKhlFbOI+cm
         cZN3Pvow2r5u6uxIX3OWdCjH6bb715YP2QovWszp3JddnIf+kuitAzH5Sn/NKFP3rXXF
         Jqv1fQSMHP7jr09BMCULRlIBK6M9RN2jimTip13wfi0n5DKWhZXPllxmlvqNQ7T8bjNr
         f8Ew==
X-Gm-Message-State: AOAM531+YDdw7LJsWsZHSAWqeweJJO8IjZgDWQuU2rO/XRiH0Mlic2u/
        Ff6aA6RNmPOWCHyWPOQ6YhZovTD0oJX7z3dU3DEdhA==
X-Google-Smtp-Source: ABdhPJzVjgWXqTgHyZbv2lVU9vzv7i9WW1NqGB6fiIcC01+HU4UnLS/z4U9BLgmRjBtOAw5Yy6SQ4S4AT93kaAjOplM=
X-Received: by 2002:a2e:908d:: with SMTP id l13mr1108495ljg.467.1627639769426;
 Fri, 30 Jul 2021 03:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com> <20210717045627.1739959-2-daniel@0x0f.com>
In-Reply-To: <20210717045627.1739959-2-daniel@0x0f.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 12:09:18 +0200
Message-ID: <CACRpkda2DFC-u3R=bQjb6XhDUg8iCO=mSHEidcGDFcxv_X0ZEw@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: gpio: msc313: Add compatible for ssd20xd
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 17, 2021 at 6:56 AM Daniel Palmer <daniel@0x0f.com> wrote:

> Add a compatible string for "ssd20xd" for the SigmaStar SSD201
> and SSD202D chips. These chips are the same die with different
> memory bonded so they don't need their own strings.
>
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
