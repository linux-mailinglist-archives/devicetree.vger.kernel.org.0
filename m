Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4477E20C88
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726400AbfEPQGS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:06:18 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:44564 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726336AbfEPQGR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:06:17 -0400
Received: by mail-io1-f68.google.com with SMTP id f22so2990803iol.11
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l76NcH5cHUwJAvvJuChpqeFUnjGCgPi9xk7n4++L00s=;
        b=uGmXrzUW+1z24r3t/lx9WvPQtGQKfUL5O7qK4ZKBDmyu0QMU6bFsIFj5qmsv9n5koS
         FiIRVmp4KwjQTutO6UtIcB9bKoBbLORMhxm3N81dzF8uQTLYLLcz92FnrH694/y0dzeN
         h12emR7V2Sq0LI7beZ3NgfS1jsZ2d/A93HoMwuwoGRVPJrqkCciQzzfkH6Y9gclEFfe+
         sEtzp8clgBF9jV+QyG2BBN0i7z7PMBkiqhQScCAoEqo+VHKzsQoGZCvqAupIxcqdKA6U
         jq5gioNo+E9a7vNQkHGd2UyoyfMuq9M7QiBiaYKNVVx0vExuBJ0VprcNYc/MhFTERhla
         xRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l76NcH5cHUwJAvvJuChpqeFUnjGCgPi9xk7n4++L00s=;
        b=F01cfORroH9dtp+A9Hcbo13blvRKIvtgSO8wxjCTLjfnkceShRiojY3xpCx5h/l7/g
         gi4TEGNbGrkg1NYf3BwqBRfv9OQTNVznAKWagmh0mIATvKIKE93UZ1ROTtRyKC/847de
         rJY5JHcamWj16F0DhkZ7soIKZP7PYh+pbl7OXzxSqMU0CltvOA87lD62fuvf5MDuaOdK
         dOy/WQT0BldAWdlS4srNhF+THayRS2GuGeikDSe0vBSiKLiYxVy70C6OOblIXVLPlNbq
         pR8QcIeqwniK4bZdml45FSRn12AIxT3ii1smZjnz1JmDvRRKn9tnEd3BfOU21UTUXXC2
         ddfA==
X-Gm-Message-State: APjAAAWWSAyfWPmFbGbJaYNO9PMco1arhDsdvaX0NKmhNQAdiE9TKTw7
        Ld/xqOeDPVJN77idvIclI2Q+Fj8SN+j3+2AHNEXbvA==
X-Google-Smtp-Source: APXvYqywh4ufDRQ+1VM/1bI1+KBx9S5ksORHmCsmKaGMWGPjQBu+uCNciI4ja4dIz8R0VSXRXWrpYJAT//cO1DLrJUU=
X-Received: by 2002:a6b:ea12:: with SMTP id m18mr28822415ioc.173.1558022777062;
 Thu, 16 May 2019 09:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org> <20190430162910.16771-6-ard.biesheuvel@linaro.org>
In-Reply-To: <20190430162910.16771-6-ard.biesheuvel@linaro.org>
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date:   Thu, 16 May 2019 18:06:05 +0200
Message-ID: <CAKv+Gu96ZVOXSp+3nHrPOoQUJRNgW5MG8wOv_Refyo8yL54RjA@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
To:     "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" 
        <linux-crypto@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Joakim Bech <joakim.bech@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(+ devicetree list)

On Tue, 30 Apr 2019 at 18:29, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> Add a compatible string for the Atmel SHA204A I2C crypto processor.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> index 6b458bb2440d..a93d4b024d0e 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> +++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> @@ -79,3 +79,16 @@ atecc508a@c0 {
>         compatible = "atmel,atecc508a";
>         reg = <0xC0>;
>  };
> +
> +* Symmetric Cryptography (I2C)
> +
> +Required properties:
> +- compatible : must be "atmel,atsha204a".
> +- reg: I2C bus address of the device.
> +- clock-frequency: must be present in the i2c controller node.
> +
> +Example:
> +atsha204a@c0 {
> +       compatible = "atmel,atsha204a";
> +       reg = <0xC0>;
> +};
> --
> 2.20.1
>

If there are no objections to this patch, may I please have an ack?
