Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A65E478BB4
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 13:48:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236429AbhLQMsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 07:48:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236424AbhLQMsz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 07:48:55 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B6C5C061574
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 04:48:55 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id j9so3934546wrc.0
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 04:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=snUeSCccdhoRxlfsg8Ts9j6VNOw1G6e55Lk+9WKqlyc=;
        b=VrmeN3wpi1gNrML4Do0CYOVryw5xkN4me97Ek7NhAj7E67onCecFOZV06lH2uNNoJ0
         YR5aTAScn+MqHEktNhQIouNZlSvvsSqlSYK5pSwn8ZCcOfFGQXYPYLSNyVpWYH2ymQrB
         2/qLQ5fz8zm9gKd9baYQ2q+5P0Qc+27cwpVt1UayVc8QE1JtQhIVPcXFDxT5a1Mg3OXy
         hupJvCEkFLVmuspWM2kMimCBqqJ+XCEPm+jiE3o2oOqxeeZZELizJuZJIoiaxKgrMqsV
         yWiWsLt+2WpKUJlE59KZU1/7iNyhKk7B5XFEwrxms8hnaYVQ8erxC3etPvF7V8Qf5rOd
         9Zew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=snUeSCccdhoRxlfsg8Ts9j6VNOw1G6e55Lk+9WKqlyc=;
        b=g0nv18q9i48zBbY2EECSQ1w3sb6wpjFgJdTASew/XJA8eAOuTazTDzTvkBaVBC4ige
         zJndvgZhLVz+8gPZWesegaH+es9COxIGvzKUy8DwFz4zkVbhj+UOGm4rq4wjzvYuWEhw
         XjKoNe6VlVoIvy45eYkJpX/szDzcf5j9/LMungk1zKv+uZRsak3MYbtZo4BWQ3wbPr9n
         MQQ7WZIt8QkHZIgbUc4MIiFtvLF0mwJZpzKU1r5FgKUP5AubwUBUkLDFIlv2jUnBy8ek
         EJw7WkKWYDTjEbDOrESuEcRc9+91ISAza3iYZMjNQ55odBxVYDEBssEEDvkEZ8q5RLDK
         i+rw==
X-Gm-Message-State: AOAM532K9X/Q7JD2Bbhgoe0j14e5AtbS6sKPri0qyNH8A9l0YdhOpPWk
        xDBpmgC/j4NlNGYy7ck6HGrw2jV6v9MfEs+JxWdtBQ==
X-Google-Smtp-Source: ABdhPJy6jZjbGiy24EK1rrImb8JGalcQGHnt5zFcmV3cEzqNUYKetq2K2+tqD4tnFwJzeYSapqKjLx5IuF9v9+BKmaA=
X-Received: by 2002:adf:efd0:: with SMTP id i16mr2505380wrp.86.1639745333595;
 Fri, 17 Dec 2021 04:48:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1639744468.git.geert@linux-m68k.org> <4f409ac939e260a4657a0e6e6518ef8736527822.1639744468.git.geert@linux-m68k.org>
In-Reply-To: <4f409ac939e260a4657a0e6e6518ef8736527822.1639744468.git.geert@linux-m68k.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 17 Dec 2021 18:18:42 +0530
Message-ID: <CAAhSdy3g9WsBmQk7KOgdVNSw9qUouxF2i==q9M3WQq3iabXv7Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: timer: sifive,clint: Fix number of interrupts
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 17, 2021 at 6:08 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> The number of interrupts lacks an upper bound, thus assuming one,
> causing properly grouped "interrupts-extended" properties to be flagged
> as an error by "make dtbs_check".
>
> Fix this by adding the missing "maxItems".  As the architectural maximum
> is 4095 interrupts, using that as the limit would be unpractical.  Hence
> limit it to 10 interrupts (two interrupts for a system management core,
> and two interrupts per core for other cores).  This should be sufficient
> for now, and the limit can always be increased when the need arises.

Same comment as the PLIC DT binding patch.

The "maxItems" should represent CLINT spec constraints so
please don't add any synthetic value here.

Regards,
Anup



>
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> v3:
>   - Add Acked-by,
>
> v2:
>   - Split in two patches,
>   - Improve patch description and document limit rationale.
> ---
>  Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index 8d5f4687add9e81e..b75fd6f982b1ecb3 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -44,6 +44,7 @@ properties:
>
>    interrupts-extended:
>      minItems: 1
> +    maxItems: 10
>
>  additionalProperties: false
>
> --
> 2.25.1
>
