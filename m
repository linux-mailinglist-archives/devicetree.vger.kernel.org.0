Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3A02429CBB
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 06:49:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231243AbhJLEvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 00:51:44 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48324
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229593AbhJLEvn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 00:51:43 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AA3C93F338
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 04:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634014181;
        bh=DQTYFgRBjShgCc44LIKsX+ZkXacYI29O6N2UU4NvQ2c=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=Q/drEbRHsPt9GqL8MDp6bzq+4McGHUXT0BBYYM9rywGtvw5qpwWFAvs+cYA3SvZHT
         lChvekrRQZkJceMnS5zpzU8RNLRDSH9UbynTVbHVfBSJ3gBB+fN4ofgtSaVA5yjME1
         0PAVKtR8TvqwUjo2HutuiUqmqOgA9pZDN+BXzjTM50Xg/SU25IvARY4Aqd6GiikHP5
         ysbtZZyfJ7D12wW+XuKDuaRRUG1JtmLT40G+nhmkrV+SQIDKHGSRpy0TrTFpYroK1X
         nnS7/ucDNAbsJfmjGYGDXbbGZI2+MRkqagfUfnVK6C18gibHvjHiOMuAkNpMpxwt7Q
         dO5syeuCPE7Ow==
Received: by mail-ed1-f71.google.com with SMTP id t28-20020a508d5c000000b003dad7fc5caeso17755110edt.11
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 21:49:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DQTYFgRBjShgCc44LIKsX+ZkXacYI29O6N2UU4NvQ2c=;
        b=Elsl8WLFZY1kRgmadbXzuZY8w01xDGW3sKahsWHZntWIu6+wzyI4ff8q+4pFRospUJ
         C8Sdlb8eYizwV+mDsp5VDeFK47X6VQkEAPC/FULbEzfzRE+RtkpHEkpS4hfj437HUAaF
         B2jFjb9+pSbraAgKOSFtzRjswF4tc8sRWiy0Te5F0jM0b8mpGp3962wDLQ+fcv6d+gAN
         fCbwQuH/8n759+vzRMQYvLrzIjsk+8fbNOCtsYql6vq2LwOrXMdesuFLlrKlVw82A/v8
         JZAoZm+ImLdxFJOlfhiq0llDr5CrfasD1FGWixLQBu26FBAy1iupjkvXgfHnJHy6rU9m
         HcmA==
X-Gm-Message-State: AOAM531hS5NxobXY0nCzrdHOi0WDGsNqwh7opBept9R8w8KitlEuIngo
        ASJc1eJDEa0TJ8QDC7MLxnIhwbSX3v0SmwJBUB6VtZSpXCvPsgrPz9IZigl3iiX7L8qYiwgXr9u
        uoWQQnL5K+c146nX9ltFFxkiJnJ/nhHitdMgcUzt4chfS64ZgGboDJV4=
X-Received: by 2002:a17:906:5a8d:: with SMTP id l13mr31820103ejq.95.1634014181399;
        Mon, 11 Oct 2021 21:49:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzTsvZiY9lixAtDhIJzHvONlvktGzyfRy9ZhG9KGRllcgbenZcXXrCZUfA21DF2hwyZpsjXAiUDGxByaRarDis=
X-Received: by 2002:a17:906:5a8d:: with SMTP id l13mr31820091ejq.95.1634014181236;
 Mon, 11 Oct 2021 21:49:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com> <20210920130412.145231-2-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210920130412.145231-2-krzysztof.kozlowski@canonical.com>
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
Date:   Tue, 12 Oct 2021 06:49:30 +0200
Message-ID: <CA+zEjCs6i7H9DWNmG5FDtJM0V5vCMUbUbianFEr+AeLPKnUVNg@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 5/5] riscv: dts: sifive: add missing compatible
 for plic
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 20, 2021 at 3:06 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> Add proper compatible for Platform-Level Interrupt Controller to silence
> dtbs_check warnings:
>
>   interrupt-controller@c000000: compatible: ['sifive,plic-1.0.0'] is too short
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>
> ---
>
> Changes since v1:
> 1. None
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 7db861053483..0655b5c4201d 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -141,7 +141,7 @@ soc {
>                 ranges;
>                 plic0: interrupt-controller@c000000 {
>                         #interrupt-cells = <1>;
> -                       compatible = "sifive,plic-1.0.0";
> +                       compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
>                         reg = <0x0 0xc000000 0x0 0x4000000>;
>                         riscv,ndev = <53>;
>                         interrupt-controller;
> --
> 2.30.2
>
>

This looks good to me, you can add:

Reviewed-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
Tested-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>

Thanks,

Alex

> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
