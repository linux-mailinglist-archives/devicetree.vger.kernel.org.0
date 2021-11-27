Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB6DF45FB58
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 02:38:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351099AbhK0BmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 20:42:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349505AbhK0BkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 20:40:01 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F08D0C061A2B
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 17:23:38 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id s139so21868927oie.13
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 17:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nmPpjX5vxZythQHSN3ZYM9P1fEx6dDehCsb3F+bXRb0=;
        b=FMMjUxzCdRITY8XL9MLWwxJJ30/1shXsIp1YiDwUVbvj+6bJJJdz4yyC7Dlo2sAoI7
         jvAtDNQYX6tSWsdzy2iQIzVzsF0PyRf5P+C70DS+ErjXollS8Vqed+LzvGi7ixGtZG+X
         1AK+6iNlquHAul9NkIlC/j0ENdv9GifpVmlDNcN6KNyV5MGiLB/0olEgVBK5r5o9kZMm
         mibBWAZ7Tfg1GBrGRxt9Q+zGuJziayyWWOFgjRxnZIa5t2k+uNJQkO2fQzVe04tVDV6o
         F9gq4b2qb+HSwFI7QSK/66pyAx5CMv7z8oOWj/InmWGZbR8CxliYxGCwZdxNq61trJH5
         Aaww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nmPpjX5vxZythQHSN3ZYM9P1fEx6dDehCsb3F+bXRb0=;
        b=BoOb9L7w3ISgnOAGLadlOUedcQamiHMIk/noFOC+3msfYlL0s86Bd8nYoxueu2WGc0
         EB3N7P+8h9mL7fosI1H04MZG2m0G3dpSyXfxOQ1gJBDuAW1rOO4h2mdCoEpsres/fmGQ
         JsjHnBX3DL35mrDoCVjLbj7PGK5l5RbkLNQmdfgWcHM93B8MHJ+4fdNKj85HwvlK/Tqg
         IlpWa4BHnQ+ZSa9/8dmDUjG/gpfr6W1o4TCHIp5KJwQcUft/C1taUJQYna8kXN466sdU
         FRo+mtzzZrODapUwTXW4vmN15Xkm+MqWo3czs4ma5OKCdQ/rixoR2vUFVtb/09+5jHCV
         2BUA==
X-Gm-Message-State: AOAM533bGV1XhZNwhbu4PinKpeDpVtAaKYIM0HQTdw9rDA3uiyUEUaM7
        +Ox3My7IIyKrEHkHLBsloKmGGBNUNGJ8TYzRpoQjKQ==
X-Google-Smtp-Source: ABdhPJy2JhWxc3KCImcoU3ojXzTjcgzYugkcLGTLd8fi08uQ0xBP3cQZO/36PkNO0jHlChRWHPiuAikLlBmDUqxD/88=
X-Received: by 2002:a05:6808:60e:: with SMTP id y14mr26924395oih.162.1637976218346;
 Fri, 26 Nov 2021 17:23:38 -0800 (PST)
MIME-Version: 1.0
References: <20211126160219.674665-1-demonsingur@gmail.com> <20211126160219.674665-3-demonsingur@gmail.com>
In-Reply-To: <20211126160219.674665-3-demonsingur@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 27 Nov 2021 02:23:26 +0100
Message-ID: <CACRpkdY6gCz3X_DWUj+BZEeMYGHN3T2ty5Kq7_W+Hq3jgjaKjw@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] dt-bindings: iio: add AD74413R
To:     Cosmin Tanislav <demonsingur@gmail.com>
Cc:     cosmin.tanislav@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <michael.hennerich@analog.com>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 26, 2021 at 5:03 PM Cosmin Tanislav <demonsingur@gmail.com> wrote:

> +  adi,rsense-resistance-ohms:
> +    description:
> +      RSense resistance values in Ohms.

This description is very terse. If it is existing for the same purpose as
shunt-resistor-micro-ohms in
Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
then you should just recycle the standard binding
shunt-resistor-micro-ohms instead of inventing this custom one.

Yours,
Linus Walleij
