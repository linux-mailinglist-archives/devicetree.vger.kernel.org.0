Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2410C393173
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 16:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235193AbhE0Own (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 10:52:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235134AbhE0Owm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 10:52:42 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 925BCC061761
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 07:51:07 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id b12so1211749ljp.1
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 07:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5Hkj7D3yisXHo7avHeTOXBAYwyPzjzn8/NsopImKZfU=;
        b=jxfzSqvqsQppNCC4jriMe8suBFF2JkG5tHxUjUoqonH4hmcrdA01RxNV6aKuZ89Hgq
         bJmXogYdZREKvDr6O9UNpsp4AkzZN3K0QDS+YGDhKrZ2mBNaVZZjBGmyWptxJXeit7AQ
         UUGofWA+VCOQ+0ex0fILBUTwweWCfktrzwnjNLOIwGcIdIn9HVga2ejEXJBSokmvukI4
         EK+LdBxHtFYWhzP1kW+D90tBrVhIwskd14/U7r0WolkbzO4IpPP9DW59J5o/patgcxOa
         JBY+LYuiEqG0/XUEW2dUa7HPAcm/v3ppUPYjqy1aNrQQ0z52TNTy7t0wEllvrNMZ9iVc
         udDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5Hkj7D3yisXHo7avHeTOXBAYwyPzjzn8/NsopImKZfU=;
        b=t2WDnlD26VinaPcA6kThs8dDgjkY4SwhQRce68yEy1j/1jDAu0lBFOnb/Lfo9P9LCt
         gZQhMJJoyP/JkH/cghZSGfxfSSIAZ3Clpzw1O0eUVQqASmbeYKfVJCiv2Qn3hDzGMoon
         dnx5nMtIOAPyJ/J7tWTXtHthh0wA/HTCGrqZw4kWZQegu4PXV6Z1dBa4UsneMReQIYDy
         d69hv6kvgvsJfeNxq3O5ucXiKjs0sDTfb8ghl1fLBpjOwV6X+OPUjWKCFD+tvPAVZhjZ
         bampR/ma8qrpE5QmDz65EC1yvNoHaEVpudk+sBIOF0IOim73OVuR5YHdoV4XVOVkTAL7
         K3eQ==
X-Gm-Message-State: AOAM533j9YkfcxZqJ34lR4Dn70Iu3HRFAQJZYVj2UMrOGWI+2QaGOLNM
        zW4HqHGkJ/STaoeCrmBhZjk9V2pbCFMykGNs0JQyxQ==
X-Google-Smtp-Source: ABdhPJwg78Xrvy83qD7WYkCalpJ/UWyN75gkVXd8WT1+Jgj8iwMYrZV8WIGBYYf04VEaW3pUAkDAhCQ2oPpRuXGX0gU=
X-Received: by 2002:a2e:889a:: with SMTP id k26mr2901127lji.438.1622127065895;
 Thu, 27 May 2021 07:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210519162409.3755679-1-fparent@baylibre.com>
In-Reply-To: <20210519162409.3755679-1-fparent@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 27 May 2021 16:50:54 +0200
Message-ID: <CACRpkdbXE7LEGzXbp-58OomaqLKXeUEWzkMiG8sppOQY6s0k0A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: mt65xx: add mt8365 SoC binding
To:     Fabien Parent <fparent@baylibre.com>
Cc:     Sean Wang <sean.wang@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        mkorpershoek@baylibre.com,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 6:24 PM Fabien Parent <fparent@baylibre.com> wrote:

 Add binding documentation for MT8365 Pin controller.
>
> Signed-off-by: Fabien Parent <fparent@baylibre.com>

Patch applied.

Yours,
Linus Walleij
