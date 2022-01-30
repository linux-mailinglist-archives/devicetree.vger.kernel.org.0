Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3134E4A32D3
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 01:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346532AbiA3A0x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 19:26:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234147AbiA3A0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 19:26:53 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0B8DC061714
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 16:26:52 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id j2so16294977ybu.0
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 16:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=68/V3MY5JP9UkyqueQCxP/UeJsRwm9MLgcxb/az+jzk=;
        b=FH4iYTqipNVKqDmij2ZPrX7Qm5hc4cGDKCaSfWi0a+q5JlVIG6VblgL4BDR39CYWNa
         P7Zvd5cMjvx73T31hjp5ouCZctrebkMWzuF3kD2smRB2Ok0u78EycYCj7o5cN3Crtw8x
         pyxhNqO5cqJ0qXep7PRaPvQDAnI25JB/29HJFo6TgNBlsXLHHvgeiGvqT4/rw+iufOqi
         a5ukGMTAZkpvlsNFj73CReuWV8sJObZDhkCmzhmLwdEIQTo772NA1gB/waFuAc6szWcm
         DbgyK3Q1AQmD0JKAM5jxRj/biWMOqo8fFjLrB2J9bTHM3eTZmIVZI76lvGCO9qaBEv+w
         mC0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=68/V3MY5JP9UkyqueQCxP/UeJsRwm9MLgcxb/az+jzk=;
        b=J+N7l4o/aM438g2sMAfBmmDvHneDhdNcOpQdPW7G3Lv89FvX3jFXFCX0vYJFgMV6wI
         PVpD7xtLbGd//8pWmRbLXXh2qn6Vb8Y37pSvclUJ+3AboRbnpNH048PCt/nkHTrCwJ1q
         GsdUSymsxVM/4pkvvQFQY+Fb6kemZ7TmuwUTJUTHRWEE9k0kWnb6GgBcfElqtQAwW6No
         N4tKnU9g+qvL+nucSM/hIVkTINx7Z0vr8IUtnAVzuqO6sTzy3mmfhMyTUn0tOinCmkyW
         fj0rNEdBdGaRBaMLaoaSQqh+sRUVFS+Pi0XvL+pcN1YQXiGODXOPtAlaB8QvpV5APylL
         1DVQ==
X-Gm-Message-State: AOAM531yr7G9gjMteaDb0bq8N8ktUFrR0rMO48LoBJdHlolwOvarU3ck
        ezz3IkMvWqhDTsJ4GvHi1HQ66tLwauler1XworTS83i+x8E=
X-Google-Smtp-Source: ABdhPJwcZgJxoJmzqk0/B/DVIlxi9mGld2KCgaQIQ4yokiP1JKJJwlCWgr3ysrSY3tKeskw+v6lGqPPHxWJOikyw1nQ=
X-Received: by 2002:a05:6902:124a:: with SMTP id t10mr20106266ybu.634.1643502411942;
 Sat, 29 Jan 2022 16:26:51 -0800 (PST)
MIME-Version: 1.0
References: <20220129204004.1009571-1-clabbe@baylibre.com>
In-Reply-To: <20220129204004.1009571-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 30 Jan 2022 01:26:40 +0100
Message-ID: <CACRpkdb9R-BwdVzyeaQOjagsQU=2-06VNqKPG9fMa7C93eDC7A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: ata: convert ata/cortina,gemini-sata-bridge
 to yaml
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     damien.lemoal@opensource.wdc.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for doing this Corentin!

On Sat, Jan 29, 2022 at 9:40 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> This patch converts ata/cortina,gemini-sata-bridge binding to yaml
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Knowing that drivers/ata is a bit sparsely maintained I suggest that Rob apply
this patch when he feels it looks good.

Yours,
Linus Walleij
