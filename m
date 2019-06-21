Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25D8A4E282
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 11:01:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726350AbfFUJBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 05:01:36 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45003 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbfFUJBf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 05:01:35 -0400
Received: by mail-wr1-f68.google.com with SMTP id r16so5736826wrl.11
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 02:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PhJ5lM9SlnKYa02k5MazR2be+0vjCQ5zI7j0EPBUS+8=;
        b=O+sP4P2dWSo99F+WM+aneeiKuNCkGrHe0jBV/hU1Wk+iZFjbunHTPxPqH5idH8e8EJ
         HDbIrEdt+maab64kQ+MXFytkNwk0t7QJxiXrpMXe4YyDS5+FOUeiH2NFPqHKTd4ZI/X+
         KhkJHMUD4JBbhLUNqpjzSOR+6iEjHZAbgkOg/NxfBaBC6GbGYVcFTz2FFHlEXeqkZtKh
         WGCwa30qut6W2U0M5dhJzttoIJQcKNRwHn5UMpGxA/fQ1Kp2Eqiuz8HyKnj08ZIUM+HF
         dJKz/LliHBOw4iz8Y13dCH1V2yMgHecTVxviU0bPYTLgKb/T5AuXb9ZGQ6jYQN5n/DRs
         4phw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PhJ5lM9SlnKYa02k5MazR2be+0vjCQ5zI7j0EPBUS+8=;
        b=XwQPtrPrSoXMbpld5u03rU9iZPR0TUIrhgNIbafH5mwf8OMPyId5I7J02gpEC3zlSF
         t8bFTcT3y0/vKFjGcDQsVB7iOLXmLDAT/ho3s7S0PQzr/CBlqtTZCocjm1+KHKFUSMx1
         K9RWIPR+vJYjEdk3X5pi9RRrt2TXztlI9u+vVs3eBHIFG2kpBEVpcfXUZYEt1d/BUwmk
         KJZ5jLITjW7zsRQSOkG3fUPY4CgiKV5HT90I0Z3UThoTHsmMbuX4ah+lvDvVoqe5WQWw
         zQT0E2qgPIaHPjgs+PEu8+PgFy5Dk0/VsHObyYjIYBqj45d0FYvmfuiHaCUW0gbcDp57
         gvHw==
X-Gm-Message-State: APjAAAUO6utPlenV2qdIK6vBFK6ELi8e6vWQuY6ls+wyLifRbGBxZHXF
        3tsDqtpEYq2CBvnIF1JC/m7GB2R2HZJUcWYTjMcaeA==
X-Google-Smtp-Source: APXvYqxOi1lX0UaV5+3I6iUfGLV2BrlPD7WGGLosyqcwBAr5aiHi9gL+td/S/5IwQmge5WwTR7sXISD2kIFnl5hxOX0=
X-Received: by 2002:a5d:5448:: with SMTP id w8mr62546020wrv.180.1561107693128;
 Fri, 21 Jun 2019 02:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com> <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 21 Jun 2019 14:31:22 +0530
Message-ID: <CAAhSdy2zHozRnwAU6-+U+BE-5h5uNE67D_0TXHJnrHMi53gMog@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet
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

On Fri, Jun 21, 2019 at 11:40 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 4e8fbde..584e737 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -225,5 +225,25 @@
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
> +                       local-mac-address = [00 00 00 00 00 00];
> +                       phy-mode = "gmii";
> +                       phy-handle = <&phy1>;
> +                       clock-names = "pclk", "hclk";
> +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> +                                <&prci PRCI_CLK_GEMGXLPLL>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;

Have status = "disabled"; here and have
status = "okay" in board DTS file.

General convention for any SOC device with external
connection (e.g. ethernet, SPI, SDHC, SATA, PCI, etc)
is:

1. Define only device DT node in SOC DTSi file with
status = "disabled"
2. Enable device in Board DTS file with
status = "okay"
3. Define PHY or external PIN connection details
in Board DTS file

> +                       phy1: ethernet-phy@0 {
> +                               reg = <0>;
> +                       };

The PHY DT node should be in Board DTS file.

Of course, same comments apply to SPI DT nodes as well
but I missed reviewing those DT nodes. You can send separate
DT patch to re-organize SPI DT nodes.

Regards,
Anup
