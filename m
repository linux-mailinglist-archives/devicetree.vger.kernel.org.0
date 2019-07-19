Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 247626E542
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2019 13:54:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728096AbfGSLx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jul 2019 07:53:58 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:45711 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726243AbfGSLx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Jul 2019 07:53:57 -0400
Received: by mail-vs1-f65.google.com with SMTP id h28so21310830vsl.12
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 04:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=biEayFt+VruGovDKa3i0LGzkhdkRNPx2sXZYzz56x6U=;
        b=jPqr/6Mlm/0/pJK4JP6UC30mDBqkzqAztFJLe3h+6SEe9YMj5ao3HwyrxaIM5Bv4Ra
         Bm7CWyGDK5+SDHUfZKyKuOTqcThuTd9f70KeCl6i+fIOVRu6g20omrBGnh2w5ewzSRg4
         e23Kq9iizjeG0J3cvawImzFPyq4DEE8PIGHwfdYUXfNzAEoU/ByIxdEE4YDY1IuddtZw
         cNfgleAGWH3pXzl8fAsg/ybtoC2hNcAcNaTVgKxsZPMlyMxtvOmmsDp50Ylj1uDvUu5t
         RrSZrj7JilYo1igG+dDX3fv2pCd28LpZMUDQkq7bxHxli/lwPPAqyyvqfnW53jnclsV8
         fVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=biEayFt+VruGovDKa3i0LGzkhdkRNPx2sXZYzz56x6U=;
        b=MpxgWYagA0UQ7SarZLacwgP1EVbx4LhNRpRjq7YsqXiEKRfY5hrOmeKzZNg5zR2NuA
         DbX5O0rRI1/Ky2Sk3SQ+a0JRv15DY9E9rJEK3fghGK8+9ts2+ouWxgfmmv/NE4RsP802
         rPkn9ORSPsZ3D3+ek0kiLAQo55Dkar9M9VkHIF6wLx9tIMZDhjGCWs2uSnwkmcRKLjfm
         HKtagwB/dyQ9GA9RiGidSBjhn2oC73s4iUZODeZGQNVX3t4tV36uo+/O+nRohJUCwmM/
         TCkw6h+H+P/+YAKk/m8aI6+Bi9kWCo4HM9vRvNiGZhlBeIPBu2k5pnmAcsmnVGUUiiJ0
         R/eA==
X-Gm-Message-State: APjAAAUAIJh0WtJMh80yPzgNvGWqOYIoZbd5zZVeV6PuzqitkZfCiYYk
        9uOvxFfWXPwNazoQppgnH7yi8N9zKM6jE2Th/cxu2A==
X-Google-Smtp-Source: APXvYqwWYrFQyvu6/xqxMA02acIpkSbnOTgebtxdq98QYxw/X8cgoILh6soRL04ZOIZlo8DcDFZfelQM0P8zJtJqS2Q=
X-Received: by 2002:a67:300f:: with SMTP id w15mr27551944vsw.116.1563537237115;
 Fri, 19 Jul 2019 04:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com> <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
From:   Sagar Kadam <sagar.kadam@sifive.com>
Date:   Fri, 19 Jul 2019 17:23:45 +0530
Message-ID: <CAARK3H=D1N8gO0Z82_MCtgr5DtT1=E0wzYbn-y451ASgxV-qBg@mail.gmail.com>
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To:     Yash Shah <yash.shah@sifive.com>
Cc:     davem@davemloft.net, Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@sifive.com>,
        nicolas.ferre@microchip.com,
        Sachin Ghadi <sachin.ghadi@sifive.com>, ynezz@true.cz
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series looks good to me.

Reviewed-by: Sagar Kadam <sagar.kadam@sifive.com>

On Fri, Jul 19, 2019 at 4:41 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 15 +++++++++++++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index cc73522..588669f0 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -231,5 +231,20 @@
>                         #size-cells = <0>;
>                         status = "disabled";
>                 };
> +               eth0: ethernet@10090000 {
> +                       compatible = "sifive,fu540-c000-gem";
> +                       interrupt-parent = <&plic0>;
> +                       interrupts = <53>;
> +                       reg = <0x0 0x10090000 0x0 0x2000
> +                              0x0 0x100a0000 0x0 0x1000>;
> +                       local-mac-address = [00 00 00 00 00 00];
> +                       clock-names = "pclk", "hclk";
> +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> +                                <&prci PRCI_CLK_GEMGXLPLL>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       status = "disabled";
> +               };
> +
>         };
>  };
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 0b55c53..85c17a7 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -76,3 +76,12 @@
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
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
