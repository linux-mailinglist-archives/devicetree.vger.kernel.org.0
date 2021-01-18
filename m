Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 717042F987B
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 05:10:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730255AbhAREKE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 23:10:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730175AbhAREKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 23:10:03 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 539B9C061573
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 20:09:23 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 23so22049683lfg.10
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 20:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kKCfYpwo74RsICpySZjG8kYYtlGFYkZdkFNgkyDKCT0=;
        b=AhP6NwUJdS6wWmHjt3HVF9oEPO27LTk5ZVVsxfNNJTMJp4YreqXTOfX10k/oD9Iezt
         dPoCBKQfITeUdF9ZwOVLLSdBNnkPxn6C/waTP0lhhjVLkvDe0nH8PCUsk2ocEltwo5d/
         UtNXbXKZcmomHLmiiQGa/MZ0uAXHsmBUGD1bFvU+4VAkjw55pUE9tsszsDvS+C497hnt
         Tg1MDAYbZgFEJjcjE9s39o9ntWTVx6WuvpWDYNFOBMTDiNMnUjgcJ3GdeDkb4Tz7Vc3Z
         Et4Qgio5JzLD81e1Tgb872rmEeNIRGeiOe08Hch0FH41kuJNVeiuGDq1JP1kI8cmwXQ8
         ystA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kKCfYpwo74RsICpySZjG8kYYtlGFYkZdkFNgkyDKCT0=;
        b=Nf7r2yPCmn0eB0cFiKfIw1IF1Id0U3OcOVFeHlt7G77+GkvpISgZsiWRYQ0r/0HJtG
         r1U/4uRjm7HIKDWEoytwl89/7Ew1QJs9Gag0eWSr9tgg67Lbi3fmE3VRmsEj0VTplYb8
         wks5h4/BmdolfFgDwNVt33G9cM0lXXd76KGMy5w3+7yVrn1/3CJ6cgWwd9qgVXbCzTM3
         DJAKfjPHK3dkNv27hRfLrrCnrKaNPKZycR18HYHDDtx8MBkPb4Ab48OvGsfLytpWiGla
         Hkf4Ar52N+2sMjOObBlowW/7cdIN6wKvNg5Oyld2z7l1GtsAFYrL3GyuK9oHdKd3WRtx
         v94A==
X-Gm-Message-State: AOAM532hIdXSYqRog5UsJvyLe4vKq0icw+btPMO1qzvfOTG9ie0Cckva
        NZ4Cldoof8UsrckWvkddQsZXu9Ym+WGN1lanQkToIQ==
X-Google-Smtp-Source: ABdhPJw87g/8egB7b0xP0jb75QeBiNosVXRLBEN4XgOceeOKqXL+Kuh7KPX0ZjWPRfqEjlvRbpZdIED/dekKQwpxGxc=
X-Received: by 2002:a05:6512:234d:: with SMTP id p13mr10075578lfu.87.1610942961812;
 Sun, 17 Jan 2021 20:09:21 -0800 (PST)
MIME-Version: 1.0
References: <20210118020244.103451-1-damien.lemoal@wdc.com> <20210118020244.103451-7-damien.lemoal@wdc.com>
In-Reply-To: <20210118020244.103451-7-damien.lemoal@wdc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 18 Jan 2021 09:38:10 +0530
Message-ID: <CAAhSdy2BqJddRbCWR=jAsjvB0GUWbwnF9T0rJRgoFnKZnJZ2CQ@mail.gmail.com>
Subject: Re: [PATCH v13 06/17] dt-bindings: update sifive clint compatible string
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 18, 2021 at 7:33 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
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

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup
