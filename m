Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85F868CD69
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 10:00:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726610AbfHNH7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 03:59:37 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:33832 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726990AbfHNH7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 03:59:36 -0400
Received: by mail-lj1-f194.google.com with SMTP id x18so7489037ljh.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 00:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vktWgJym3yCRgx3u45+g969459no7O3RZoGUxegUaEA=;
        b=vv74GiiskJwY6lBYmg6l4Zu9bHeALT4JI0bsJH4KFIuDlc1IIX6AEDJZ50lghMVEX9
         WKFFLzL6FyE3/Rs/Tf1xpXrnZanOyGWbjge1UfMjdE3r9+SVchOzBvMZFj18Zvih5p2z
         nncsdqMtWCBV2cMJxXNWcJzLzD5rgb3Y8SujIq/WjWvCRb0VaSFSiqYGIDUhgva3k6Li
         tC8RsunDocuTF/tvfbMzW6gazz1TVpdAWr4aCsEYOOwSmqwb9ukuI3vLqpnJvDEwCxpK
         Q61KnvPx9eCK8RsiX4fD7sKaYovdCd/FEf7RZ5l+HOwc3mlUsK/wRWSb1So/EgnyAI9L
         xSBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vktWgJym3yCRgx3u45+g969459no7O3RZoGUxegUaEA=;
        b=TEQV0eh1tfQrIDXvkrbgTqGwYOj1dxpx+8o9lTrhsLR4HdmVeyidA9y/EtpRJlJOzX
         Wjih9bH0QNdzfBI2XkXZKXixe7b9slUJl7fKX94G4yclRoBVf1RoDqzKDPSK6oVCOdic
         U4gEvUwUUiInn9KE7Kc8VgwwP7CFQsuqTNKOifr9NZYgCIngTOU5ojpnWLn6gBShQMHE
         i9ypBF3wCSHggRI47b7S7hnHS7X7ORMM5cVWUKCwze6zqH5jYRiw17d9tOrslLzdBMjh
         aqcZT9wHmRNHsjRZLWdTa3LAOKBG6ZpreWGL/a9I5SDVfjDAC2cbmel9RYSZqP8qh1o1
         CzRA==
X-Gm-Message-State: APjAAAXcUdMVYzNGYagRs6gpJTDR8VvRFoNn8ykDt0/0AJOXKGIhAc3d
        r931chnUuKfHNYS9djT/oLeUFbRHUb2vNtyZ8HyZcw==
X-Google-Smtp-Source: APXvYqyu0HbKHviVbPJdDWFqmy4PxLilmJoLtCGqXaaggcm5lCdH90/gDgxNiL8hStl1RMJZCYuS/NRIVXNAMlY2Kq0=
X-Received: by 2002:a05:651c:28c:: with SMTP id b12mr18693136ljo.69.1565769574230;
 Wed, 14 Aug 2019 00:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <1564603297-1391-1-git-send-email-hongweiz@ami.com> <1564603297-1391-2-git-send-email-hongweiz@ami.com>
In-Reply-To: <1564603297-1391-2-git-send-email-hongweiz@ami.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Aug 2019 09:59:22 +0200
Message-ID: <CACRpkdaGe4G17Pv0+X=zcgfwikv8sr+m55NZNZu5JMtLOYjaAQ@mail.gmail.com>
Subject: Re: [v7 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
To:     Hongwei Zhang <hongweiz@ami.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 31, 2019 at 10:01 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add bindings to support SGPIO on AST2400 or AST2500.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> Reviewed-by:   Andrew Jeffery <andrew@aj.id.au>

OK timeout for further DT binding review. I adjusted a bunch
of things like whitespace and referencing other files when
applying.

Yours,
Linus Walleij
