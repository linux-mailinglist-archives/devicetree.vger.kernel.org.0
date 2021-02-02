Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B59A30CAEA
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 20:06:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239489AbhBBTFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 14:05:00 -0500
Received: from mail.kernel.org ([198.145.29.99]:44028 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239304AbhBBTC6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Feb 2021 14:02:58 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75D0764F4B
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 19:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612292536;
        bh=MepYmNtF+Sg+PcYHScI6jhnJJOlaLCCfnstjzdDivSg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=CLWfGj196tuP/Ch+PDWye90Z2bLahM4em9dGdcasVz7oftG/CziNwlBlFl/Sh6lro
         CBorco5ekgGQLnx8+DO8h8DeedT4wSaYY0+weOywukOPMG9nG4jTo6Q4Ocqm9FULCM
         MY8lGm6baEOKR5siH6h/se8V0jMmQ44frW7mIJ5l6D0gBtzCS+97D+EsaRWqBnfsDH
         5gUgNYAd0UucloSF6zvrPUkleL+2neV7ApMHKLCTwGmW/K/iUQ0HccuFAhEmkn3Naj
         xMN3EyTZ2N74tP+fscfRqsMvk7J0I4XgzRvPCe4kFQA3uAYmL3TnRLyI5ADVWwBi6x
         rPIctc+XoOkOw==
Received: by mail-ed1-f43.google.com with SMTP id c6so24166760ede.0
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 11:02:16 -0800 (PST)
X-Gm-Message-State: AOAM531KHR5aR4h5h6QPqMkbGVA01inpeSNYywQ1fzKxCB5gmxvr3rVS
        jOTJBLcMCM6oUEhl+IwTL//jIdJHqdYPk8hvMg==
X-Google-Smtp-Source: ABdhPJyQcCYmKIexJRNZNhGtIDHJKRqSVglzpu9MfXZv5bY6FedvmEhCHkPwHhJRm81e5FLKsAFTDVjzFvqldbS0ZgQ=
X-Received: by 2002:a05:6402:2029:: with SMTP id ay9mr322902edb.373.1612292535073;
 Tue, 02 Feb 2021 11:02:15 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-8-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-8-damien.lemoal@wdc.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 2 Feb 2021 13:02:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
Message-ID: <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
> interrupts property description and maxItems. Also add the standard
> ngpios property to describe the number of GPIOs available on the
> implementation.
>
> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
> of this gpio controller in the Canaan Kendryte K210 SoC. If this
> compatible string is used, do not define the clocks property as
> required as the K210 SoC does not have a software controllable clock
> for the Sifive gpio IP block.
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> index ab22056f8b44..2cef18ca737c 100644
> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> @@ -16,6 +16,7 @@ properties:
>        - enum:
>            - sifive,fu540-c000-gpio
>            - sifive,fu740-c000-gpio
> +          - canaan,k210-gpiohs
>        - const: sifive,gpio0
>
>    reg:
> @@ -23,9 +24,9 @@ properties:
>
>    interrupts:
>      description:
> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
>      minItems: 1
> -    maxItems: 16
> +    maxItems: 32
>
>    interrupt-controller: true
>
> @@ -38,6 +39,10 @@ properties:
>    "#gpio-cells":
>      const: 2
>
> +  ngpios:
> +    minimum: 1
> +    maximum: 32

What's the default as obviously drivers already assume something.

Does a driver actually need to know this? For example, does the
register stride change or something?

Please don't add it if the only purpose is error check your DT (IOW,
if it just checks the max cell value in gpios phandles).

Rob
