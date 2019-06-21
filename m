Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44E764E708
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 13:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726556AbfFULVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 07:21:11 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:52924 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726289AbfFULVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 07:21:11 -0400
Received: by mail-wm1-f65.google.com with SMTP id s3so5993620wms.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 04:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XAz5+1ZugVE5GkUQUctoaFL1CCKytfPvugsjxndG7cg=;
        b=tto/SWz336iwBga4qSfNB9bs/TG22rJdxD0IgYr48cvF+K3ateyntpV/dUlyNZDL61
         ZLmokGp2bumZ7ODNLi9hYawLy0ew4Tk4C8HYpY1KSFzvlUZ0JQy8pe5muHT9SrWzTdQB
         yS9mlZ5DdniDCQDobAj8u4NHQNZWlHRXhQOTnjF6h9uk3/UQGqKgWVLKuVyeh4FolkiB
         XsndbKlT3d5S3p5Tuq6uyLwJrbLlRk6APCom3X6vj3bR+ZP6fvBER+KgTzvkADIwJFj1
         NDW4ZTD04S0vvZS9mhTv5HU6C8OzFt/MmxYbz6ppjN/DcMTLKCClTY084IXbfdw9Vlke
         n89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XAz5+1ZugVE5GkUQUctoaFL1CCKytfPvugsjxndG7cg=;
        b=aGJdmFXoEI3sirU5mDLI9hJYDAdrFWBjILx+r01s8+9KMXuAKzal4LMB9rhItSRGlv
         G0B72tLfQCC6WdsC+mTJkBI2oco3kw5XuwnUFeMivob7sUcZdQfOHrYJRO5ti9kMNnko
         6mEQsVzNwE0Ry8u3pI7oiXBIH0Vw/RSGD3SXS8oZvI0pvjp7Hg/FeyQhWQHZDIhHJf2M
         OQNdcFufSNcI73dStzXGjsDXDoBfrwcMnvH+TPxm5lePJAKVp4C+kDgftpXRSei+LQ0D
         +a0IHkEHcEjv+6mrYZjBg9ZaSnK42C2nVo0J5P46fVUda7PqI6/eWOqNyhi7biU5V9D9
         J4mw==
X-Gm-Message-State: APjAAAULJnC3aSA64DFgryHG+DI2ZoRW4d6WFU4gWF7br9CaQdEURgw7
        SECvXQNZE4GuuAgY0Cfwn1qaXj0g5Fije0hD537olw==
X-Google-Smtp-Source: APXvYqwCkNmbGI1oEoF6P2VDTiGVGuWQkJhUYyk74HPQNXJGI2qWaNAhuxz1OHfnUA9Lp5z2MnK0iWTp48u7p/OPB3E=
X-Received: by 2002:a1c:2dc2:: with SMTP id t185mr3889348wmt.52.1561116068934;
 Fri, 21 Jun 2019 04:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com> <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 21 Jun 2019 16:50:58 +0530
Message-ID: <CAAhSdy2uuUDkB5wa1FJzBFqDtNi2HBWs-s7G3BhCpwGs=LRohg@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To:     Yash Shah <yash.shah@sifive.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, sachin.ghadi@sifive.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 4:27 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16 ++++++++++++++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>  2 files changed, 25 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 4e8fbde..c53b4ea 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -225,5 +225,21 @@
>                         #address-cells = <1>;
>                         #size-cells = <0>;
>                 };
> +               eth0: ethernet@10090000 {
> +                       compatible = "sifive,fu540-macb";
> +                       interrupt-parent = <&plic0>;
> +                       interrupts = <53>;
> +                       reg = <0x0 0x10090000 0x0 0x2000
> +                              0x0 0x100a0000 0x0 0x1000>;
> +                       reg-names = "control";
> +                       status = "disabled";
> +                       local-mac-address = [00 00 00 00 00 00];
> +                       clock-names = "pclk", "hclk";
> +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> +                                <&prci PRCI_CLK_GEMGXLPLL>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
>         };
>  };
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 4da8870..d783bf2 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -63,3 +63,12 @@
>                 disable-wp;
>         };
>  };
> +
> +&eth0 {
> +       status = "okay";
> +       phy-mode = "gmii";
> +       phy-handle = <&phy1>;
> +       phy1: ethernet-phy@0 {
> +               reg = <0>;
> +       };
> +};
> --
> 1.9.1
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup
