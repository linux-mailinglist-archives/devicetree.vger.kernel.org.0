Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C609F1447D
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 08:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725836AbfEFGhB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 02:37:01 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:33212 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbfEFGhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 02:37:01 -0400
Received: by mail-oi1-f195.google.com with SMTP id m204so3072309oib.0
        for <devicetree@vger.kernel.org>; Sun, 05 May 2019 23:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AsWrneXTR0dVmh3/0SghuMR1v5mpMf18phXdK8FnXQk=;
        b=frf8920IMdLHYA/tNXNdbO5znbdlL6YbO1Vla6P0uim8zVqGlJzdIdUoD9WDeJS6R8
         /s2Rt9jsQT/VZreSzLBh/1i1eBSmy3l3eHLvsSbEvK4Lgh1idRMTIPi0Z0JPe0rH4ybS
         s5pg63tEF90wA1Dlko0cr/SnnAAMkGfWeP1OOqGYkrles+0m21rVkBrpgS/tmXcJ5e9W
         XU7Dr5OGCdaMBI2txRDcgyJMb1dHaJiqoA32A0XpwSC5HhrYet6oFf5W4dHDv/jus9cM
         7e9xPoBFDurVIDAXFUmnJWqlfxY28c5ML7kuJ7sANzrCi4znsOpJZHVEpgmvLIfgHo4K
         QOvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AsWrneXTR0dVmh3/0SghuMR1v5mpMf18phXdK8FnXQk=;
        b=C1WUITEOwxprm8SSfZ8Z8EBGEMq2aZKsGrN5T2bxx2knawoMc+mrZudrWPw6oSiK2x
         v/iixePGUvusZvRPdnTUzvIZC8RN3JRNy91SN9BbMtCWFCvOELd28tuBEp6Tjh7WcMFr
         2wnQDsWutrlwkRr7iyNSucflg76K4H6WPxwD5ybz1V7qsjhmsu1ARtTHKJD+EYM2u/4r
         465NPHpON/OeYSKOO8cWDrTijdqUNfoa1ayfII69lcF2u+xkq2SAHJIuj69/FBNGZt6S
         PKpLo0KjaEq9OfJ4hran8NVwFdze9YQ+N/S1sqXvGQBzVd4ttBYF53xm6J6maDEya/y3
         OHsg==
X-Gm-Message-State: APjAAAVN6im5mIJfMpP4EX0aNweHYrrZgh6M70Q0NR5NcN97akCc7/8U
        XStdt8WefPdBzYgYINAXbb6TNytKS3n3eH1NHRsZKQ==
X-Google-Smtp-Source: APXvYqwfACU3oJMu1A/L3M8/Z8X5tpHYCsDugmBY2FX4wctU4dLdhD5XkYMiUU6ywBQrmX0xNHQIVr4RhVDekURBAXk=
X-Received: by 2002:aca:ba0b:: with SMTP id k11mr171531oif.57.1557124620939;
 Sun, 05 May 2019 23:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
In-Reply-To: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Mon, 6 May 2019 14:36:49 +0800
Message-ID: <CAMz4ku+1-w8va__JNkBME5tPuG0AdhzksVbNbYomqY94JggPVg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sprd: Add clock properties for serial devices
To:     Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Olof,

On Wed, 10 Apr 2019 at 15:23, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> We've introduced power management logics for the Spreadtrum serial
> controller by commit 062ec2774c8a ("serial: sprd: Add power management
> for the Spreadtrum serial controller"), thus add related clock properties
> to support this feature.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> ---

Could you take this patch through the arm-soc tree if no objections
from you? Thanks.

>  arch/arm64/boot/dts/sprd/whale2.dtsi |   16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/sprd/whale2.dtsi b/arch/arm64/boot/dts/sprd/whale2.dtsi
> index 34b6ca0..b5c5dce 100644
> --- a/arch/arm64/boot/dts/sprd/whale2.dtsi
> +++ b/arch/arm64/boot/dts/sprd/whale2.dtsi
> @@ -75,7 +75,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x0 0x100>;
>                                 interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART0_EB>,
> +                                      <&ap_clk CLK_UART0>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>
> @@ -84,7 +86,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x100000 0x100>;
>                                 interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART1_EB>,
> +                                      <&ap_clk CLK_UART1>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>
> @@ -93,7 +97,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x200000 0x100>;
>                                 interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART2_EB>,
> +                                      <&ap_clk CLK_UART2>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>
> @@ -102,7 +108,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x300000 0x100>;
>                                 interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART3_EB>,
> +                                      <&ap_clk CLK_UART3>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>                 };
> --
> 1.7.9.5
>


-- 
Baolin Wang
Best Regards
