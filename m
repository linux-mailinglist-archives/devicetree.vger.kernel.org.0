Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40BA1675094
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 10:19:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230106AbjATJTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 04:19:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230087AbjATJTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 04:19:09 -0500
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AB8EAD34
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 01:19:05 -0800 (PST)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30K5Wumv003061;
        Fri, 20 Jan 2023 10:18:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=DtcVjnTUu5knXHxl3hH3NBtbdpcCZD4BQyvIAjDBIU8=;
 b=8HqQPBz+KQUaVvldvScK0hNfSjMMr83E3Md8ydjt8CAHZtqPTmbYoDrimaN6NJmKMfNw
 bZZuuIE7ZCKGWv55/nr4sMEsCge4fxzNekREqTXA+1TaOfCawVT30PrKnuFNgDl9IJ4f
 aKcPThHvaqLkg7fGWvF9UdSVWpU7yUrzbaSLFM6vEDn44wt+Hl9HVJJlQth9VR8jJ4Sb
 XCNu5EDF5bMilCFXPLT701tJSRqSfW5rw20sHzWSwbp9qHBEFCl4tLaEZ/KzTwKYjt12
 ww0WKQZhrJAK8vXV6ISEdQgdPeI6WSNBCWX7frMzadQhDnWNJF4/v6yPRJ2L8/Egcnpa Ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3n7337q88m-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 20 Jan 2023 10:18:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A36510002A;
        Fri, 20 Jan 2023 10:18:33 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 32DAE2138CE;
        Fri, 20 Jan 2023 10:18:33 +0100 (CET)
Received: from [10.48.1.102] (10.48.1.102) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.13; Fri, 20 Jan
 2023 10:18:32 +0100
Message-ID: <5cdb024e-46cb-6d03-d716-0fdad80d51f5@foss.st.com>
Date:   Fri, 20 Jan 2023 10:18:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [Linux-stm32] [PATCH] ARM: dts: stm32mp15x: adjust USB OTG gadget
 tx fifo sizes
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        "Maxime Coquelin" <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Amelie Delaunay <amelie.delaunay@st.com>
CC:     <devicetree@vger.kernel.org>, <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <Minas.Harutyunyan@synopsys.com>
References: <20230112112013.1086787-1-u.kleine-koenig@pengutronix.de>
From:   Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20230112112013.1086787-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.48.1.102]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-20_06,2023-01-19_01,2022-06-22_01
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/12/23 12:20, Uwe Kleine-König wrote:
> There are in sum 952 dwords available for g-rx-fifo-size,
> g-np-tx-fifo-size and the eight entries of g-tx-fifo-size. For high
> speed endpoints the maximal packet size is 512 (for full speed it's 64)
> bytes. So a tx-fifo-size of more than 128 (dwords) isn't sensible.

Hi Uwe,

The current FIFO tuning in the device tree allows to maximize throughput
regarding single function device. Having twice the packet size for the
endpoint allows the controller to simultaneously transfer data to the
USB, while gathering next data from the system memory.

> So instead of one (too) big and several small fifos, use two big fifos
> and to better use the remaining available space increase one of the
> small fifos.

So, I wouldn't mention "too" big here. That's a performance tuning for
single function device use case.

Drawback is this doesn't allow multi-function device, as you're trying
to achieve (with 2 x 512 endpoints).
Hence, the "No suitable fifo found" message you've noticed.

So just on the wording, I'd rather talk about allowing multi function
(composite) device with 512 bytes endpoints. Doing this has an impact on
the performance for all current users in terms of performance.

This change is probably fine, as it enables one additional use case, and
it is in the SOC dtsi file.
I'm just wondering a bit if we could/should keep current tuning in some
board dts files ? (Or let each board vendor do their own tuning ?)

Perhaps you could CC people that pushed various boards here ?

> 
> This allows to work with CONFIG_USB_CDC_COMPOSITE (i.e. Ethernet and
> ACM) which requires 4 endpoints with fifo sizes 512, 512, 16 and 10
> respectively.

Just a note, this one looks like a legacy driver. I think the preferred
method is to use configfs gadget to compose a device.

> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> 
> with CONFIG_USB_CDC_COMPOSITE enabled on the old device tree, the driver
> dies in a rather bad way:
> 
> [    2.472914] dwc2 49000000.usb-otg: dwc2_hsotg_ep_enable: No suitable fifo found
> [    2.478767] ------------[ cut here ]------------
> [    2.483369] WARNING: CPU: 0 PID: 0 at kernel/dma/mapping.c:532 dma_free_attrs+0xc8/0xcc
> [    2.491363] Modules linked in:
> [    2.494407] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.15.0-20221026-1 #1
> [    2.501267] Hardware name: STM32 (Device Tree Support)
> [    2.506409] [<c01110e8>] (unwind_backtrace) from [<c010c9c0>] (show_stack+0x18/0x1c)
> [    2.514129] [<c010c9c0>] (show_stack) from [<c0a83648>] (dump_stack_lvl+0x40/0x4c)
> [    2.521689] [<c0a83648>] (dump_stack_lvl) from [<c0136228>] (__warn+0xf4/0x150)
> [    2.528986] [<c0136228>] (__warn) from [<c0a7fe2c>] (warn_slowpath_fmt+0x6c/0xd0)
> [    2.536458] [<c0a7fe2c>] (warn_slowpath_fmt) from [<c01ad534>] (dma_free_attrs+0xc8/0xcc)
> [    2.544623] [<c01ad534>] (dma_free_attrs) from [<c01adbc0>] (dmam_free_coherent+0x40/0x9c)
> [    2.552876] [<c01adbc0>] (dmam_free_coherent) from [<c0754570>] (dwc2_hsotg_ep_enable+0x63c/0x6b0)
> [    2.561827] [<c0754570>] (dwc2_hsotg_ep_enable) from [<c0791a44>] (usb_ep_enable+0x40/0xf0)
> [    2.570167] [<c0791a44>] (usb_ep_enable) from [<c0798364>] (gether_connect+0x2c/0x1c0)
> [    2.578073] [<c0798364>] (gether_connect) from [<c0799f70>] (ecm_set_alt+0xcc/0x1f8)
> [    2.585805] [<c0799f70>] (ecm_set_alt) from [<c078d0ec>] (composite_setup+0x5bc/0x1d40)
> [    2.593799] [<c078d0ec>] (composite_setup) from [<c07568f0>] (dwc2_hsotg_complete_setup+0x16c/0x68c)
> [    2.602921] [<c07568f0>] (dwc2_hsotg_complete_setup) from [<c0755474>] (dwc2_hsotg_complete_request+0x9c/0x210)
> [    2.612999] [<c0755474>] (dwc2_hsotg_complete_request) from [<c0757d68>] (dwc2_hsotg_epint+0xe0c/0x1248)
> [    2.622470] [<c0757d68>] (dwc2_hsotg_epint) from [<c075a1a4>] (dwc2_hsotg_irq+0x9c4/0x10a4)
> [    2.630812] [<c075a1a4>] (dwc2_hsotg_irq) from [<c0194238>] (__handle_irq_event_percpu+0x64/0x234)
> [    2.639762] [<c0194238>] (__handle_irq_event_percpu) from [<c01944f0>] (handle_irq_event+0x64/0xc8)
> [    2.648798] [<c01944f0>] (handle_irq_event) from [<c0199028>] (handle_fasteoi_irq+0xbc/0x214)
> [    2.657312] [<c0199028>] (handle_fasteoi_irq) from [<c0193a9c>] (handle_domain_irq+0x84/0xb8)
> [    2.665827] [<c0193a9c>] (handle_domain_irq) from [<c05628b0>] (gic_handle_irq+0x84/0x98)
> [    2.673995] [<c05628b0>] (gic_handle_irq) from [<c0100afc>] (__irq_svc+0x5c/0x90)
> [    2.681466] Exception stack(0xc1001ef8 to 0xc1001f40)
> [    2.686509] 1ee0:                                                       00000484 c0d6f994
> [    2.694680] 1f00: 00000000 c011afe0 c10f5ae0 00000000 ffffe000 c1004f54 00000000 00000000
> [    2.702848] 1f20: c1000000 c0e11af0 c1000000 c1001f48 c01091ec c01091f0 60000013 ffffffff
> [    2.711008] [<c0100afc>] (__irq_svc) from [<c01091f0>] (arch_cpu_idle+0x40/0x44)
> [    2.718393] [<c01091f0>] (arch_cpu_idle) from [<c0a91f40>] (default_idle_call+0x4c/0x168)
> [    2.726561] [<c0a91f40>] (default_idle_call) from [<c016f054>] (do_idle+0x23c/0x290)
> [    2.734294] [<c016f054>] (do_idle) from [<c016f3fc>] (cpu_startup_entry+0x20/0x24)
> [    2.741852] [<c016f3fc>] (cpu_startup_entry) from [<c0f01040>] (start_kernel+0x5e8/0x634)
> [    2.750020] [<c0f01040>] (start_kernel) from [<00000000>] (0x0)
> [    2.755929] ---[ end trace febb0e7bfc3d83c0 ]---
> 
> so there might be another change required to fail in a nicer way.
> (That's the WARN_ON(irqs_disabled()) in dma_free_attrs() that triggers
> here.)

Indeed, probably all dwc2 users could be affected by this (not only
stm32). IMHO, This could be reported to the USB mailing list.

> 
> Another thought I had while tuning the tx fifo sizes was: Why is the
> size allocation not (more) done dynamically? At least only setting a
> fixed amount of dwords aside for g-tx-fifo-size and allocate from that
> shouldn't be too hard, should it?

Same, better place could be to suggest this directly on the USB ML (with
Minas in CC).

> 
> Note I know very little about USB, so it might well be possible that I
> missed a use case, but with this change my USB gadget works as expected.

See my earlier comment on the use case. It's probably a good idea to
update the gadget FIFO size to enable composite device with two
functions (w/512 bytes EP).
Could you update the commit message with these updates ?

Not sure thought, if perf penalty should be handled (and how) for single
function device use case, possibly affecting all current users.

Best Regard,
Fabrice

> 
> Best regards
> Uwe
> 
>  arch/arm/boot/dts/stm32mp151.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index 5491b6c4dec2..af70ca1f9b57 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -1137,7 +1137,7 @@ usbotg_hs: usb-otg@49000000 {
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>  			g-rx-fifo-size = <512>;
>  			g-np-tx-fifo-size = <32>;
> -			g-tx-fifo-size = <256 16 16 16 16 16 16 16>;
> +			g-tx-fifo-size = <128 128 64 16 16 16 16 16>;
>  			dr_mode = "otg";
>  			otg-rev = <0x200>;
>  			usb33d-supply = <&usb33>;
