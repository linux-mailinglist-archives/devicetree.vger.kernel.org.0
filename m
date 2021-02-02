Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F76430C8D5
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:03:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237958AbhBBSBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:01:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238031AbhBBR4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 12:56:07 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B5DC061573
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 09:55:27 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id u17so22326969iow.1
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 09:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zAwwh+o0gGboolgQvMDHmCpsBwrqp4KIQmH6QKSvEDA=;
        b=HRu4N2bONjad5pcAUw5hnjGJYNGH6MyOSIVsgEi+ZTAZtoBHOwefxCM+Nzr/0zdqbN
         YKDK3CuFadGYjzkbKsXvyOF+yXJS7Inp7qqJuAQ1mE8wrJxCQ+SHlTH4sTHaM/WG/ikm
         d1n7nsRi96wadeFiEqxZROC/Iry5gdXhFnQjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zAwwh+o0gGboolgQvMDHmCpsBwrqp4KIQmH6QKSvEDA=;
        b=TV3ho9WRQ70ivI9g+qGTLeeM1b5ysfR9IoWigkEKwFBJZ3G02whbSOEZQUrJ3pFt7L
         48557z5H4xdA/VzVFasqRjWgvMeqJX/Wf+jnKuxRBuT0QE+KPxnNqQmX8RuhpCZln/+e
         jD99quoKecNqyxHvBwTDXf0/Y4gVE2E5dOVAAjLCEaUBV03q85ZT0+ncq+Biz4nqJo7O
         NOqYSuHGkiH/hCnPN5P89ihpYMR/7ZHOT4b2BSWQL1mNQUZLBlxhoFmGkzYRhKQj4RgM
         h+Vvs/TuGXVBUHLnUdCUITiGU5dgubFDTxmA+vPVTxVW1yht9mRYmDTQ5SKBv1MOmQyM
         lCaA==
X-Gm-Message-State: AOAM531KXNIptMMIR25q24Vjbryae0ZESYRwxNbbR5BAMwGfppRwlsPj
        +26XMhvgxmnMgOGKxym6kqqfR0nAOvcywPZ4sA7i
X-Google-Smtp-Source: ABdhPJzLA3bGFttKBMX6Qt78WekVW5Pb5XFdYuYwpSZd/7Efhvn7Gwhipfk2lesixDKZc9FRHJFAkIlGHo3ZDNmJDpw=
X-Received: by 2002:a05:6602:2d4d:: with SMTP id d13mr9367082iow.0.1612288527189;
 Tue, 02 Feb 2021 09:55:27 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-3-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-3-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 09:55:15 -0800
Message-ID: <CAOnJCUKzEivmEHCdB-8XQ3Vm_tWv_auD_5VciGDagwKz_PJ4ZQ@mail.gmail.com>
Subject: Re: [PATCH v14 02/16] dt-bindings: add Canaan boards compatible strings
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
> Introduce the file riscv/canaan.yaml to document compatible strings
> related to the Canaan Kendryte K210 SoC. The compatible string
> "canaan,kendryte-k210" used to indicate the use of this SoC to the
> early SoC init code is added. This new file also defines the compatible
> strings of all supported boards based on this SoC.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/riscv/canaan.yaml     | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/canaan.yaml
>
> diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
> new file mode 100644
> index 000000000000..f8f3f286bd55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/canaan.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Canaan SoC-based boards
> +
> +maintainers:
> +  - Damien Le Moal <damien.lemoal@wdc.com>
> +
> +description:
> +  Canaan Kendryte K210 SoC-based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: sipeed,maix-bit
> +          - const: sipeed,maix-bitm
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: sipeed,maix-go
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: sipeed,maix-dock-m1
> +          - const: sipeed,maix-dock-m1w
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: sipeed,maixduino
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: canaan,kendryte-kd233
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: canaan,kendryte-k210
> +
> +additionalProperties: true
> +
> +...
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
