Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F7EA30C890
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 18:57:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237826AbhBBRyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 12:54:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238001AbhBBRxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 12:53:00 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE99BC061573
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 09:52:20 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id f8so1768330ion.4
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 09:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qOrAsI9ECEqjrlv+6wp2oH4vgydFA4E3CWu3kSvwGsU=;
        b=SdvqO3yzA54cMvkZn4hPoBJNO5CbXtUVneJfkrzmkX6g9piC8e6AyTMmCvIzesAFus
         3G9IUnbbWB7MqS47imMQNzrTYdYa3EI5wfFYcTQaXdaCnr4UAuUfyckXozbuH95sPJFv
         VFpIaXKI07u4wOSlPg4PIo+G7Ms3sGAq5dtIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qOrAsI9ECEqjrlv+6wp2oH4vgydFA4E3CWu3kSvwGsU=;
        b=O2OWHT7pYMHiK4CHyFK2OgAymBL7D27cQjIQOHsmIHO4jFnamCYUNcibzv5PULVFOK
         BDOUXJ1GnBqEKWhS8sHIWfqu8wpuz3hVkJ7HBNYF/ekQdUhHtAIHBkuTTkRxd0O7Wi9Q
         Qk4mtKvAio/3wfVzeCZNxOMjvazWs2GROOIfxpTU11mR4TYyJHXzND+ZJPC5JG5/nIcE
         yAb8dWOBIDUJXCVcSXrAgK5uhC1s+lyubFg0cEue4CryPdiFxSgNHduqoeXPzDnnN8Ja
         WCXGnv3fVcAXfy/rV8cHNMjkg4c+uT5mLsNmcoEOywy1N/RWNRDw5qTDkqD8UeLz7Oi/
         rrqQ==
X-Gm-Message-State: AOAM532WKYMtfJSu57r9IUcc+anLJFQ+hSSjRlqOpn8rXktNdyHKo0GB
        ZDVjh4u15huYuNzs4cGvae+crMRIhsxF/dmyYo2q
X-Google-Smtp-Source: ABdhPJytO9BOGj16U07hR7rNXcptz2orHWOipnJZfVmYJ+EXZYgWy6DRm9GzFvXClpYmVVkjjgn+386TDSOkeQqeWzY=
X-Received: by 2002:a05:6602:2d0d:: with SMTP id c13mr6284271iow.51.1612288340110;
 Tue, 02 Feb 2021 09:52:20 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-6-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-6-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 09:52:08 -0800
Message-ID: <CAOnJCUJh6iFEFR0_S1OrmyHLHCY_mjovg8mdc4gd5Cwk4QWkew@mail.gmail.com>
Subject: Re: [PATCH v14 05/16] dt-bindings: update sifive clint compatible string
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <atish.patra@wdc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Anup Patel <anup.patel@wdc.com>, Rob Herring <robh@kernel.org>,
        Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Add the "canaan,k210-clint" compatible string to the Sifive clint
> bindings to indicate the use of the "sifive,clint0" IP block in the
> Canaan Kendryte K210 SoC. The description of the compatible string
> property is also updated to reflect this addition.
>
> Cc: Anup Patel <anup.patel@wdc.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../bindings/timer/sifive,clint.yaml          | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index 2a0e9cd9fbcf..1a7d582a208f 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -22,16 +22,23 @@ description:
>
>  properties:
>    compatible:
> -    items:
> -      - const: sifive,fu540-c000-clint
> -      - const: sifive,clint0
> +    oneOf:
> +      - items:
> +          - const: sifive,fu540-c000-clint
> +          - const: sifive,clint0
> +
> +      - items:
> +          - const: canaan,k210-clint
> +          - const: sifive,clint0
>
>      description:
> -      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
> +      Should be "<vendor>,<chip>-clint" and "sifive,clint<version>".
>        Supported compatible strings are -
>        "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
> -      onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
> -      CLINT v0 IP block with no chip integration tweaks.
> +      onto the SiFive FU540 chip, "canaan,k210-clint" for the SiFive
> +      CLINT v0 as integrated onto the Canaan Kendryte K210 chip, and
> +      "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
> +      integration tweaks.
>        Please refer to sifive-blocks-ip-versioning.txt for details
>
>    reg:
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
