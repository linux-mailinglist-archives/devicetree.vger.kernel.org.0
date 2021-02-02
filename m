Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6453A30C9CA
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:30:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231578AbhBBS3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:29:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238461AbhBBS1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 13:27:37 -0500
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C5BC061573
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 10:26:56 -0800 (PST)
Received: by mail-io1-xd35.google.com with SMTP id n14so8562369iog.3
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 10:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lmzOT4IsDLV3fXyPYr4zxnFCLhCQEvRE3p9inRWF1PE=;
        b=HIJKflfrQ+uGL3yQoKDtRdNobK5gwelcUlTfCyyMqBeeehEpooqJdfXs2z4qZV9NpJ
         sLzmSRd8AAdWoHrb2v9DUHd8H+47iZVmvOPz8uSNF4K0xl8eU6TC4PzgF6ah8KGj8Yww
         Kcy7QueBzC2ayDWhuVOZulLwm7bgp9Yc69bug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lmzOT4IsDLV3fXyPYr4zxnFCLhCQEvRE3p9inRWF1PE=;
        b=Z9ojD9tmKIQvziz8+iQU4XUL1KwhEFIOel82XZvmvF463n1A192Lg8bl/bsH080rvI
         ETFM7XIyP1L1EyD9bSwHCE0g9q9rEB5dUhEi3r1Soa1iMZ3l/qEsQD5dffy02fl/oQy+
         iAH2312TdcfzR5rv1LF4rxp8HvT+AbDJeYSKNCw326z85XR8Nw8vvLCKA3hC+WqnXqUK
         +NlCxAya+jo+s0G93A8NsVCqjrv9FISSEl4jDcc3A3Y7KTS7xLEQgI9Qq/L9A8CPYTEg
         qW2Ds5fbViOuKu45w0Qa5RPDrozosrzjgDITZEkOFarWGcSz9HBYaEYw+z94Q7+6XD7U
         q0YA==
X-Gm-Message-State: AOAM5324oAjwFquaMFr9Gu95PblRKS5QMPnGogjrMn6H/mI9H5NqEJwl
        59kudaXu1fXShmQPo6c7LCos5KaKEhlSNmEK7jrG
X-Google-Smtp-Source: ABdhPJynZBXpnTgaTGJ6pK5pVPFtUKnD+OjqllGoMMAGsAqSXlzGfyeDRyHGa4wFfCBupzvetmDpdhE4jdjqfRdtxw8=
X-Received: by 2002:a05:6602:2d0d:: with SMTP id c13mr6403881iow.51.1612290416119;
 Tue, 02 Feb 2021 10:26:56 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-5-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-5-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 10:26:45 -0800
Message-ID: <CAOnJCUKZ82o_BihhJ-1WmUhjiiUDrUc7Wps7JRLMrDeWA012uw@mail.gmail.com>
Subject: Re: [PATCH v14 04/16] dt-bindings: update sifive plic compatible string
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Add the compatible string "canaan,k210-plic" to the Sifive plic bindings
> to indicate the use of the "sifive,plic-1.0.0" IP block in the Canaan
> Kendryte K210 SoC. The description is also updated to reflect this
> change, that is, that SoCs from other vendors may also use this plic
> implementation.
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../sifive,plic-1.0.0.yaml                    | 20 ++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> index b9a61c9f7530..3db86d329e1e 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> @@ -8,10 +8,11 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: SiFive Platform-Level Interrupt Controller (PLIC)
>
>  description:
> -  SiFive SOCs include an implementation of the Platform-Level Interrupt Controller
> -  (PLIC) high-level specification in the RISC-V Privileged Architecture
> -  specification. The PLIC connects all external interrupts in the system to all
> -  hart contexts in the system, via the external interrupt source in each hart.
> +  SiFive other RISC-V and other SoCs include an implementation of the
> +  Platform-Level Interrupt Controller (PLIC) high-level specification in
> +  the RISC-V Privileged Architecture specification. The PLIC connects all

The latest privilege spec doesn't specify PLIC anymore.

> +  external interrupts in the system to all hart contexts in the system, via
> +  the external interrupt source in each hart.
>
>    A hart context is a privilege mode in a hardware execution thread. For example,
>    in an 4 core system with 2-way SMT, you have 8 harts and probably at least two
> @@ -41,9 +42,14 @@ maintainers:
>
>  properties:
>    compatible:
> -    items:
> -      - const: sifive,fu540-c000-plic
> -      - const: sifive,plic-1.0.0
> +    oneOf:
> +      - items:
> +          - const: sifive,fu540-c000-plic
> +          - const: sifive,plic-1.0.0
> +
> +      - items:
> +          - const: canaan,k210-plic
> +          - const: sifive,plic-1.0.0
>
>    reg:
>      maxItems: 1
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

other than that,

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
