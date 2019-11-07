Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 23D80F2869
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 08:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726791AbfKGHvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Nov 2019 02:51:06 -0500
Received: from mail-lj1-f193.google.com ([209.85.208.193]:38270 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726734AbfKGHvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Nov 2019 02:51:06 -0500
Received: by mail-lj1-f193.google.com with SMTP id v8so1130492ljh.5
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2019 23:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qSQjzivSQWR3vk7yLY/YJH/RUhPjuRasO+9jC+q89bU=;
        b=DGew32WLlEUC99wuJsG/2cOFmi/9tbj9IsU3zfo2nRYQS7rtVNcwa2pOalO0EvNk8m
         k9dJ6Ag6CjsByBhneIUTwyqr1aqadRcLsGzPztBS1rfy+iT0DR1Biytu95CuyZXgSjo4
         8ZN2QIuoFJzRmzxlw98K4gigwS9cNY97lYKEcQ+4IuPC+AwS0tMWY+1XsfMuQICoH/Ep
         RvgNiOzWuHwN31kB9gfCeXRorT5C9YHJtg4M1BhNwack6xFF5SPND7/6oxhxCn21LPvf
         kL8zn3pnzvsE6LxTaTAoUcwWAihwHQ4MbB5AccBj1JCkWQyoWYbWzngEDKX8MG8sqmYy
         ABIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qSQjzivSQWR3vk7yLY/YJH/RUhPjuRasO+9jC+q89bU=;
        b=Stc/NKZZuyZqn9cyH2rdvLSxr+VXYJ0gqulm1Qo6iS+nGSUK8PdRcUfqD9hBwJ9Aue
         rTgrXn2UkNg+jMMCimZVBNQ1V8Z5IMooGVIHm0rmTvV0Qb0lIyidQ1t7g0PzNgSn3x59
         p+DXxr/VHp223Wa8DOA9no17qKfMPQAkEKoocnH9N2/BMDLYqviTWLPwqkegeQ/hdohB
         xAIHnMefWlSzDj9woKili8ecESVuSAfO9zry+iz+be6srgQeQeNftdoBWwgf6cIDT2vp
         Q72Y8ib7IHr0fQO2n/mHjNgD2IZmi6ihwrpBPnMsvgcppW0k3WC9aUBvMzg/T0jtprMa
         8bOA==
X-Gm-Message-State: APjAAAU4h1C9h+pJpLKIYcN4UkMZAiTNB5cKGNU2bi6k469CtgCvR1Pk
        hmwfJ3/DNHk8Zc3bG+5C2RJtLdAJ+2px+5UT+fkk0g==
X-Google-Smtp-Source: APXvYqwKHwHViiRns9nUe35XE09guXcyAAkHBHKXy6BqY0BpDujW7VYTEQakwhSoD0SR/mqO1m1nrrf0lziVhLJDa0A=
X-Received: by 2002:a2e:9784:: with SMTP id y4mr1275845lji.77.1573113062506;
 Wed, 06 Nov 2019 23:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20191106060301.17408-1-joel@jms.id.au> <20191106060301.17408-4-joel@jms.id.au>
In-Reply-To: <20191106060301.17408-4-joel@jms.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 7 Nov 2019 08:50:50 +0100
Message-ID: <CACRpkdaQsz-cbRqgRrAyP_3VpO9Upzcwc2CNKDL4GvC286Y63Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] clocksource: fttmr010: Add support for ast2600
To:     Joel Stanley <joel@jms.id.au>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 6, 2019 at 7:03 AM Joel Stanley <joel@jms.id.au> wrote:

> The ast2600 has some minor differences to previous versions. The
> interrupt handler must acknowledge the timer interrupt in a status
> register. Secondly the control register becomes write to set only,
> requiring the use of a separate set to clear register.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

> +/*
> +  Control register set to clear for ast2600 only.
> + */
> +#define TIMER_CR_CLR           (0x3c)

If it is AST2600-specific then please add some AST2600 prefix such as
AST2600_TIMER_CR_CLR (0x3c)

With that:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
