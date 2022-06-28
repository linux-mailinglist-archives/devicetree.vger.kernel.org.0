Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8655255D3F7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:13:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243470AbiF1DkM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 23:40:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243471AbiF1DkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 23:40:08 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26AC5B1E7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 20:40:06 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id q6so22956749eji.13
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 20:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=njsS6n4ji3BE+KKs9Ghae72PCh3jyBoDsk0tgxL8FI0=;
        b=oKbzO6g+eMbCIXAY/CAkhNzW3U44LkmG9aU/g/uUNJcKRk+QCyBD1QTn7GKL8gdjQz
         mgBuNMESEbBlcM6vLX3Ysd9PmRUMcjZBI3OXxrS/uWhI7J4RN8Cr1uZ9qV1hA/v1vyY6
         3fvk5o/1yz77QJ6ujGo5Y5pG8LgMybQjyewV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=njsS6n4ji3BE+KKs9Ghae72PCh3jyBoDsk0tgxL8FI0=;
        b=NkYvwB12+2Vw7qyEEYa4Dm+05SiJEjymeZV7ZupMzeQJVCKsub+6Xnr9erxL5SN0NR
         b4SolUQ2BOAOzdaK/k4kydWQiOeHgDdDH8HqXJZ1iPXM1Kj4L6FPY0l8NnFfTEAhGHR9
         70Etr81i8A+yagB8/2mBlk8Jl6NlpiqLINmHY0B54FT7SYkiHZUsFkLBSXtu6lXX0j7h
         idUTc/kMYH4bPH/3lSFopkm/MY2JFyP59gtwY7AwvliSLhrPk5WXeFV6Uj0RNvDwfHpV
         BC8QW5AgXOcuHr3nLeQcx7ivSNShBJghrvZFD5FIXkyvu0PQISjDvJ4vfFlSiBhnrsJt
         8kog==
X-Gm-Message-State: AJIora+gTWD4n7TbNB1H5kodrzTmxe+8apKcF9AGUQS9p+1w8CZZ7Qtr
        w6yP83b8KyTvHSGPsOY/FqTmNFlX9WacTiHYs0oi6g==
X-Google-Smtp-Source: AGRyM1sBO7xwJRZ5uCX3ceEyfp6ignZ5UYQV3sa/jN/Q1E8Y09DLvGSnyIYwBbliBn8uj6IQnBR2MUhYHX7JamuWAV0=
X-Received: by 2002:a17:907:7e8b:b0:726:2c51:b06e with SMTP id
 qb11-20020a1709077e8b00b007262c51b06emr15491776ejc.129.1656387604564; Mon, 27
 Jun 2022 20:40:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220627152107.645860-1-Jason@zx2c4.com>
In-Reply-To: <20220627152107.645860-1-Jason@zx2c4.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 28 Jun 2022 11:39:38 +0800
Message-ID: <CAJMQK-jGsobw7i4NjQ4oezA0rU03ECs_nY=Txr6TgsHFu2jXhg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: chosen: document rng-seed property
To:     "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc:     krzysztof.kozlowski@linaro.org, robh@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Kees Cook <keescook@chromium.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 27, 2022 at 11:21 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Document the /chosen/rng-seed property, which has existed for quite some
> time but without an entry in this file.
>
> Fixes: 428826f5358c ("fdt: add support for rng-seed")
> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> ---
It's currently documented in
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/chosen.yaml

https://lore.kernel.org/lkml/CAL_Jsq+uSdk9YNbUW35yjN3q8-3FDobrxHmBpy=4RKmCfnB0KQ@mail.gmail.com/


>  Documentation/devicetree/bindings/chosen.txt | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 1cc3aa10dcb1..49b175e133b2 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -7,6 +7,21 @@ arguments. Data in the chosen node does not represent the hardware.
>
>  The following properties are recognized:
>
> +rng-seed
> +--------
> +
> +This property is used to initialize the kernel's random number generator at
> +the earliest possible opportunity, and will be credited if CONFIG_RANDOM_
> +TRUST_BOOTLOADER is set. All hardware that has an opportunity to set this
> +with high quality randomness is encouraged to do so. It is parsed as a byte
> +array, which should be at least 32 bytes long:
> +
> +/ {
> +       chosen {
> +               rng-seed = <... random bytes ...>;
> +       };
> +};
> +
>
>  kaslr-seed
>  -----------
> --
> 2.35.1
>
