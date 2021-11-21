Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB7C45873E
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 00:53:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231294AbhKUX4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 18:56:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229735AbhKUX4d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 18:56:33 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9CD7C061574
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:53:27 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id h19-20020a9d3e53000000b0056547b797b2so26246104otg.4
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9W5p5whI+4F47zRQnYifWlZJ6t8BWUsimLLZTEAtvPQ=;
        b=lRikxVHQ88YEq8tuytQtGEQs05tnJVDB5dLU5JhLaNAi/aansTa1hZNmO8dikHspd5
         bzuk3mcmRmOhaQ5/liTLA8AGizNaOKC5kGYw9eCVLzInwKEWraYE1DyUp849Op2sa45w
         awlFi9zpxqH5DUzerjZ1/gupff81F+r9IbpVlqNOGEoj+jMk7XlUq0qDQlGrzvCHfnzd
         2F9lidZnvBudxRQzQn4Qu7wyaTTy4UNFb5Wd3OAu/goMqC8g8TM9/k51GJScqp9FVDfx
         gU7u+fT/bLUDOfo/YQ445hDJIEOgDvfHOaKAEo+qL8rwL0kex/QGu0M/fIHAmirF6S0L
         wK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9W5p5whI+4F47zRQnYifWlZJ6t8BWUsimLLZTEAtvPQ=;
        b=ShWP/3bRjGHeX6cEXHUOL9OASviLmXqpHaHjWZscM0abmdKt6oX3+V4LjW5zhI509p
         spnxQb9Em1EYCCREvpgHVGH3HDdlwc4kImmVydMlgao7pJnw0JcHVAxTR91laXFkbEzx
         vvfChy4v28aKIQ3aNqL8PhA5BnU4gkXy2evWSnUVhDQMEiB1KNMnAuyUI4UFZ1vQoIxG
         6DSRJ7G2IuE1vPfl3dndEwDrXjlmYootsuiW11DtsM4cV1Ifulv3o8lD/nSrAiuMu3xI
         6wZ5YxTScexll8mjY7aFHXEX/VxLkDapAK7tRV6FlsvCDbnL30LDfkANVgT1ouroqTQe
         5Wsg==
X-Gm-Message-State: AOAM530SkG0FWNM1gAtVrG/iDBEuXBjn5kZOa68Y760+55ThVxC94a7T
        2etJ5UBJdMZheVvcuWPVZSz7zlAyathAVdo8paM2ZQ==
X-Google-Smtp-Source: ABdhPJykKhLtTLKNimMjTZRcY38XOoC/BlDR/rJ2BTxQTORvnZe8Q7rHMq9A7oVL57trNbpFc7GGxbcL8TbxAm0XDfw=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr21551880otg.179.1637538807056;
 Sun, 21 Nov 2021 15:53:27 -0800 (PST)
MIME-Version: 1.0
References: <20211118132152.15722-1-zajec5@gmail.com> <20211118132152.15722-4-zajec5@gmail.com>
 <CAHp75VebQKsSJYxK9Fi0wEhGfpR=1HZfDsVuqV8BCG-UrZDtVg@mail.gmail.com>
In-Reply-To: <CAHp75VebQKsSJYxK9Fi0wEhGfpR=1HZfDsVuqV8BCG-UrZDtVg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Nov 2021 00:53:15 +0100
Message-ID: <CACRpkdbQ8fEfWqkb+R0xDPAdeenWQKmXqtO49Hfh7V84Zqospg@mail.gmail.com>
Subject: Re: [PATCH 3/5] pinctrl: add helpers reading pins, groups & functions
 from DT
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 18, 2021 at 2:58 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Thu, Nov 18, 2021 at 3:22 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com=
> wrote:

> > +#include <linux/of.h>
>
> I don't like this. This shows not thought through the design of the serie=
s.
>
> What I rather expect is a proper interfacing layer that you fill with
> options that can be provided by corresponding underlying
> implementation, e.g. DT.

I agree, the DT parts should land in pinctrl/devicetree.c in the
end with an opt-in for ACPI & board files. I don't know if we
can use software nodes fully instead of board file-specific
helpers at this point, it seems to have
grown pretty competent.

Yours,
Linus Walleij
