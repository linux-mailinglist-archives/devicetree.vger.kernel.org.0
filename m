Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D917A465BF8
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 03:02:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350533AbhLBCFd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 21:05:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344289AbhLBCFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 21:05:32 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3628AC061574
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 18:02:11 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id h19-20020a9d3e53000000b0056547b797b2so37931184otg.4
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 18:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=312E8cZrQ5xrvaZwf9TgwEDA4CW6oVfCqWWlc3o5e6o=;
        b=a0aRS3IYiCOnNER5hhEkr++x8ZAKI2D8m4atvGtrFnynkIDcLq46sxqQhPAsKgi13U
         s8P5yM3ywrOfu5nvCM2+iPAwAIEL5BOj5IEegX2LtVZv20uVxsAafEwaYULgpauM/Ujo
         2IM02AA4u/3zi1Csa22rerE1p9Km5K9W8cr96G42TsogJoVFpmPaBCjE+wUN6SjN4hk1
         idxMyYSM/ZCIVYWgev7G7dAXZOruxb+BV0Hy0OtUkhecdUGYoN+t46Gn9P15Ddf3aZ03
         0pEwS/zraF1Tni2Q8ARhU+Dzo+EDjj6vunA2Yu5RkxlryJAkTZ6IZYIz5rWXtlaxUsXB
         e3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=312E8cZrQ5xrvaZwf9TgwEDA4CW6oVfCqWWlc3o5e6o=;
        b=aJkmB04+nJuR9MtZgSLUjxR6bxGVaM5+FeSx3q1GAzHTmq0IDMnTygmnx6g1feJvNY
         NVvHZkyqo8kFJFGIjtrD8NBjJx9j/7chgYs+UwlMR2ws+R6aK67Qy/wYrPll/1Q5RdtH
         /0RRSDPgzdojEud+0UzO0bXpbJqERNhXEAyoTmaFjt505MaD9hEtzYpmwiFZHfELUQ6Q
         txZYBKaroQCWscdx0NkXZtbYcFWFqfTaGoxFPTziyXdpqltiyaN+M7V0EJXkTBWCKrBl
         DHJG5FPdAf4Q5rK0QA5nm4mM3vB+DiXSqyO/Swah2kfdhoyhKYVQL/pFpDbXy5kKGP1f
         O1tQ==
X-Gm-Message-State: AOAM531qVPbLvnOyu5nRtEibkgkHFRFY8ZR+8i+YrlT5RVqEA2FxfuIQ
        GzDylJVdiTV1eCpm+Xz/PHVIio0lZY4JaFf1/aLNK5QnxDFBGQ==
X-Google-Smtp-Source: ABdhPJyno0Y/OQDmQ7hYJgd98TKCAem8WoKcB87RGMejxUCsR3jJu+nnaV9TJLXT2Z7jZm70pKI/i1FEe+Kx9L8lT/E=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr8844708otl.237.1638410530597;
 Wed, 01 Dec 2021 18:02:10 -0800 (PST)
MIME-Version: 1.0
References: <20211110165720.30242-1-zajec5@gmail.com> <20211110165720.30242-2-zajec5@gmail.com>
In-Reply-To: <20211110165720.30242-2-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 2 Dec 2021 03:01:58 +0100
Message-ID: <CACRpkdby+9qwGJ4LqwMw0tQZHSDCBRVtH+FXOYW1ob5tii3pOw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: use pinctrl.yaml
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 10, 2021 at 5:57 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Also fix some examples to avoid warnings like:
> brcm,ns-pinmux.example.dt.yaml: pin-controller@1800c1c0: $nodename:0: 'pi=
n-controller@1800c1c0' does not match '^pinctrl|pinmux@[0-9a-f]+$'
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Unfortunately I have some changes in my tree colliding with this.
This is the development branch for v5.17:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Ddevel

Do you think you could rebase on this and resend?

I would normally try to do it myself, but I have very little time these day=
s.

Yours,
Linus Walleij
