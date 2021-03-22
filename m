Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D90BD344AEF
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 17:18:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbhCVQSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 12:18:16 -0400
Received: from foss.arm.com ([217.140.110.172]:34636 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230284AbhCVQSL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Mar 2021 12:18:11 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3285E1042;
        Mon, 22 Mar 2021 09:18:11 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA84E3F719;
        Mon, 22 Mar 2021 09:18:09 -0700 (PDT)
Date:   Mon, 22 Mar 2021 16:18:04 +0000
From:   Andre Przywara <andre.przywara@arm.com>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 1/4] ARM: dts: sun8i: r40: add /omit-if-no-ref/ to
 pinmux nodes for UARTs 0&3
Message-ID: <20210322161804.0395de61@slackpad.fritz.box>
In-Reply-To: <20210322105538.3475183-2-i.uvarov@cognitivepilot.com>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
        <20210322105538.3475183-2-i.uvarov@cognitivepilot.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 13:55:35 +0300
Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:

Hi,

> This patch adds the /omit-if-no-ref/ keyword to the pio nodes for
> UART0 and UART3 pins of the R40 SoC, which would reduce the fdt size on
> boards which do not use these UARTs.

But what boards are those? It seems like all boards use uart3-pg and
the two existing boards use UART0.

I think the idea is to use omit-if-no-ref on some rarely used nodes, so
if there is only a single user, for instance. Your next patch is a good
example.

So I don't think this patch here is needed at all.

Cheers,
Andre

> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> 
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index d5ad3b9efd..0b257a0779 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -631,16 +631,19 @@ spi1_cs1_pi_pin: spi1-cs1-pi-pin {
>  				function = "spi1";
>  			};
>  
> +			/omit-if-no-ref/
>  			uart0_pb_pins: uart0-pb-pins {
>  				pins = "PB22", "PB23";
>  				function = "uart0";
>  			};
>  
> +			/omit-if-no-ref/
>  			uart3_pg_pins: uart3-pg-pins {
>  				pins = "PG6", "PG7";
>  				function = "uart3";
>  			};
>  
> +			/omit-if-no-ref/
>  			uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
>  				pins = "PG8", "PG9";
>  				function = "uart3";

