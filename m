Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2549533BC0
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 01:07:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726211AbfFCXHz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 19:07:55 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:33448 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726101AbfFCXHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 19:07:54 -0400
Received: by mail-lj1-f196.google.com with SMTP id v29so6557030ljv.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 16:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9NFfbp/l7iiiVWginEhWa3ckd/womtHkaNdf8Bm+794=;
        b=WnjU0E/rAfa9vZPRfObu2NgpsAHWsZFHvUV69mxl3ei5E4u3wUqLrcOWCZxid+etwI
         idPmXKgOnv9LyIDizXMxnkZQ+rv8mvDL6cTXNKkn9o9jIgCoa8xNvnMpVupFnH/DBubR
         z7Bbbdf/rBN4ueBDUCIbsmCasr1uaK8BDfV164NMFB9nXdq4W5H6ci7QmylT47TohsdZ
         UhPArasjBBa8E/NXknmNzB6UoToQJo50DzNz5SA86P600icvEf8/0jXCnibqqjJHvO8X
         B8hbGJOYCQTjKJyEJew5yq44nQGuynbzdgtPWt1JdD7FsKL6iZSbeNyy+BXMW8o2lh3H
         3xSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9NFfbp/l7iiiVWginEhWa3ckd/womtHkaNdf8Bm+794=;
        b=hZEggv6lkm3LiZLXr4YWU6r5CdpqRWv7FzRzdlV8Zd67Yf2NNYD6B8S5kmItaLa+YW
         tOYofx5Poc4l0F81t+Cjr4GcMwoCNbrq7PhRqzovP77MHFjrqYREPkPhp4CpjZ6fE9gd
         jn/gTrwkH1oHuhtrqlTldPWZnzXPz88V48/ZvvtANB0idkpvxdB0lwHMlWi8hwoqYJ+m
         7ac/YVQdiDkwzJWqmbXiocpFiYapLftvy18xG+/jioTk790tN2Rk0HF8QJHdG89fRpKs
         zV90ybzFFYOO8LDd1va1CU/SuLXsM+l32i4Vug31vnhS3x7Zc+pRov9wI8ngzjBr84op
         Y6xA==
X-Gm-Message-State: APjAAAXHRHyJqiw5sknEHdarirdQBwpOnBMzKxNDpaxxwq5gSL//odXR
        AUCh6hhTDPKmrjEr1y8bQhG1DwOKPJeOmx5/TMSGtg==
X-Google-Smtp-Source: APXvYqx/DD8LnqDfO9YJiKsu3INvZtWWGhNNb2rLcK1MCFxZlVhpM9tSmP7auz1Iw4f1nXvHBAfBzZXk3RUmWeEQt6U=
X-Received: by 2002:a2e:9018:: with SMTP id h24mr8048502ljg.165.1559603272528;
 Mon, 03 Jun 2019 16:07:52 -0700 (PDT)
MIME-Version: 1.0
References: <1559601789-27121-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1559601789-27121-1-git-send-email-hongweiz@ami.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Jun 2019 01:07:41 +0200
Message-ID: <CACRpkdYPHw994Ov0xCfK6tCg60tiuWrRwTcYpMSfOr4G0VKu_Q@mail.gmail.com>
Subject: Re: [PATCH linux dev-5.1 v1] ARM: dts: aspeed: Add SGPM pinmux
To:     Hongwei Zhang <hongweiz@ami.com>
Cc:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed@lists.ozlabs.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hongwei,

On Tue, Jun 4, 2019 at 12:44 AM Hongwei Zhang <hongweiz@ami.com> wrote:
>
> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt | 2 +-
>  arch/arm/boot/dts/aspeed-g5.dtsi                             | 5 +++++
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c                   | 4 ++++

Please try to separate out the change to arch/arm/boot/dts/aspeed-g5.dtsi
into a separate patch that goes through ARM SoC.

Other than that it looks fine to me.

Yours,
Linus Walleij
