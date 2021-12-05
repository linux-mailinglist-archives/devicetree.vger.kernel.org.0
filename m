Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8884688B9
	for <lists+devicetree@lfdr.de>; Sun,  5 Dec 2021 01:31:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbhLEAfH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Dec 2021 19:35:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230103AbhLEAfG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Dec 2021 19:35:06 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CC79C061751
        for <devicetree@vger.kernel.org>; Sat,  4 Dec 2021 16:31:40 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id x3-20020a05683000c300b0057a5318c517so8576465oto.13
        for <devicetree@vger.kernel.org>; Sat, 04 Dec 2021 16:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ohfUx7+Ba/w55XvPHx2jac6mSSYo1iGShALmEmttMH8=;
        b=ZyM/HdKaO00iGySBTTsd54bfQp7hn0KQmfRiHoBP1/eUvXjH1I12pcmV7jhk+9GLLl
         q/lepb+rIHyCs38zQr87qMkiOBBhnQBVDIt94P2PFla+bEjvkwVA/f2F3ZF5plFCfbT5
         6ZBwdaKvUbXyOpHgg2kyZeh7GqP+uty921HINgXEpfdzVG/uw6uDY/yqeRjp9G/6RGoJ
         mext4mObDHgo0ph/sB2HATgT61c0mPHTwsHp0UywpEI4a8WH8ohAqZiaAaJbBosBwGwE
         WGmmfal+rhm4aP1Wi+tejByEyqjpOX26mClwOSG0t+Zf0CombCItoBH106nc+QH9/L4S
         vkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ohfUx7+Ba/w55XvPHx2jac6mSSYo1iGShALmEmttMH8=;
        b=xjgD8VOSUTvOFgH/vAkpCI4/gyaVh6ZKDwHddVSZjGSiBTgnjbgjyhgFlGh8Hnj14d
         OXVDR4sXT9g24H7LBuewXv6N4DKG3vQZUDnTozMxQEegm8OyvWgAlL/tBI6rClVIhu76
         /4qbZUoXKbW1ipbQbuRAWfxGk81lBRjqrtaTzIhhjJqsaTIOXoxklyIncfnTa9sv1V+A
         P3XfVyIRFCkxHWkjm+GuocCydECBhNp3cqt8ceWYKjqdsPi845bQ2ROfpWy4zRbBOObT
         uCreatcfB4wVjIyIRaCJTYUdOVa3Y6K+xUYJdkvJPAXwE8ZXKXAfRDAGqDfcQf+OOL+s
         Oqew==
X-Gm-Message-State: AOAM531yMR6WoyHGtiNDLXKlVD+jbNM+PP4pgxo+6nGCpJZZMbfjwKcF
        t+UqFeNnKfmFbxPgC71Zn9Ud2ZWJ1h2cIGpq8LIOuw==
X-Google-Smtp-Source: ABdhPJz9IUX0vw8Jzou3ekRTltWjDhOFDT+ndkoP4wMc0wt4IlUJv8D2e6x/wkSMlf1sxRQPobEfWdkXr7mH8wF9X+A=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr22884362otj.35.1638664299828;
 Sat, 04 Dec 2021 16:31:39 -0800 (PST)
MIME-Version: 1.0
References: <20211202063216.24439-1-zajec5@gmail.com>
In-Reply-To: <20211202063216.24439-1-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 5 Dec 2021 01:31:28 +0100
Message-ID: <CACRpkda=C55QiCBYjMTiN61FME4p0Ji2XfZC2tg+e3h0twR3oA@mail.gmail.com>
Subject: Re: [PATCH REBASE] dt-bindings: pinctrl: use pinctrl.yaml
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 2, 2021 at 7:32 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> w=
rote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Also fix some examples to avoid warnings like:
> brcm,ns-pinmux.example.dt.yaml: pin-controller@1800c1c0: $nodename:0: 'pi=
n-controller@1800c1c0' does not match '^pinctrl|pinmux@[0-9a-f]+$'
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> REBASE after 1dd19cae1552 ("dt-bindings: pinctrl: uniphier: Add child
> node definitions to describe pin mux and configuration").

Patch applied!

Yours,
Linus Walleij
