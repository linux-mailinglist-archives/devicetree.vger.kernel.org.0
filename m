Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D161145E3FE
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 02:24:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357426AbhKZB1h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 20:27:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237326AbhKZBZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 20:25:36 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB22EC06175B
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 17:22:24 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id bk14so15835676oib.7
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 17:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tuogPhCIrdMIXK39LxLYKagPj76CP90ZaXCX1cv9amU=;
        b=FCbPn/aC74Fpmi8E4UlFo6hYpkm0KZSY8RA3nZRidNzko8tPVxlq0siNDoY/PjhMWY
         +tkvfhiTnO4S2B2PJB3cCrCWXtw0AgsvU0NlHuqL1c479BLJenUG1Mw7qm4FgovQivdd
         m5g9y1DRmy2NTUSh+6K4eqeN6DmIbiWUiv4mEhhN88forW3vYvceEYmMVGhI+5coaEYn
         RS74wwVAgrj7OahokEpJ83YtktWLU2M56wbWZL8hf3zns4rPh9aSAe5XiEleZNDuhp2T
         Bl/lYudQsKMRXq5w8VdaZLSPhZroOqLXJoQUZnf2Ub5z9JBOPRcmv0lI2hGElRvKyR00
         f+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tuogPhCIrdMIXK39LxLYKagPj76CP90ZaXCX1cv9amU=;
        b=I7BcStxswNX2SuPGn+H90vSwTG1oksGUNF4ci7oY4536mjywRyeQaU3qPXr2Uaeg/P
         SEE2lfwMetIt2U9A7hj9Ojwn8WQnCgGDKAYl7WfTsDtwgVt9lxipIFnl//DTCBebMwht
         8zMy6Z32vwm3xZD8WjUjKM62AIUimKbK1Xd5EkTzpOQ+ehaGLASGzpi8PfZLJYvBB/RR
         L8NuosgqHZsWVl03Znxn0i/3quqpCh9y8Wr4Bjtj0s2ZBaNzdms3wDWppWFOL5wleIlj
         HveaIdpcDl0X8JYrpNdlXAy39Xnr35BMTkpFAvDdXudbp+BZcOz0yFTSBD4wPMbNNiFS
         Dy9Q==
X-Gm-Message-State: AOAM532qWuuC3aCdkjMcSzYhC60on3H5QbwK8ciZS/6ct/PdA90lyf6Y
        t3JUE0vXFDp0cigk8FrsVggbsd/LDu1jGQR0ZFCzwg==
X-Google-Smtp-Source: ABdhPJzXRZ+hFzrCAc/CnvRtQFmXfAkjddGUIIxuiIQENVtM9MrI/+32qI/f5gkye0w9e+g0pyXVu7oBcPzBMoQ/S/g=
X-Received: by 2002:aca:120f:: with SMTP id 15mr19675974ois.132.1637889744184;
 Thu, 25 Nov 2021 17:22:24 -0800 (PST)
MIME-Version: 1.0
References: <20211125152043.162655-1-geert@linux-m68k.org>
In-Reply-To: <20211125152043.162655-1-geert@linux-m68k.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Nov 2021 02:22:12 +0100
Message-ID: <CACRpkdaFBOq4-Pok3au+Q8uAXe5QscO81JYAhXwMS9B2FjuUiw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: sifive,gpio: Group interrupt tuples
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Yash Shah <yash.shah@sifive.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 4:20 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> To improve human readability and enable automatic validation, the tuples
> in "interrupts" properties should be grouped using angle brackets.
>
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>

(...)
> -        interrupts = <7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22>;
> +        interrupts = <7>, <8>, <9>, <10>, <11>, <12>, <13>, <14>, <15>, <16>,
> +                     <17>, <18>, <19>, <20>, <21>, <22>;

Tuples? Hm they look single. Like singletons?

Anyway:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
