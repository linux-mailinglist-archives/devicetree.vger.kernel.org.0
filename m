Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEE916017E3
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 21:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbiJQTko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 15:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230505AbiJQTkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 15:40:42 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C2087821F
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 12:40:38 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1okVyV-0003vR-Br; Mon, 17 Oct 2022 21:40:35 +0200
Message-ID: <a7983d24-cf0a-16ad-b202-1353da320003@pengutronix.de>
Date:   Mon, 17 Oct 2022 21:40:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, Jun Li <jun.li@nxp.com>
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
 <40f423ce-376c-acbf-db00-ca696da44fe4@pengutronix.de>
 <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Tim,

On 17.10.22 21:30, Tim Harvey wrote:
> On Fri, Oct 14, 2022 at 7:18 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hello Alexander,
>>
>> On 05.09.22 09:37, Alexander Stein wrote:
>>> +     pinctrl_usb0: usb0grp {
>>> +             fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC        0x1c0>,
>>> +                        <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR       0x1c0>;
>>> +     };
>>> +
>>> +     pinctrl_usbcon0: usb0congrp {
>>> +             fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10         0x1c0>;
>>> +     };
>>
>> I am wondering: You can mux for MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID,
>> why did you decide against using the hardware function here?
>>
> 
> Ahmad,
> 
> The IMX8MP USB OTG_ID pins are internally not connected. I can't
> recall where this is mentioned but due to this they can not be used to
> select host/device mode.

Thanks for the info. Do you know if this issue exists with the i.MX8MN as
well? A colleague had trouble bringing up the OTG_ID HW function and I assume
it may be the same issue. I am unsure though, because the imx8mn-tqma8mqnl-mba8mx.dts
muxes the pad as OTG_ID.

Cheers,
Ahmad

> 
> Best Regards,
> 
> Tim
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
