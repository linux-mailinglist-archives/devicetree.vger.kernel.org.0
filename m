Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A27F960B778
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 21:24:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbiJXTYs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 15:24:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233340AbiJXTYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 15:24:12 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD9983AE78
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:58:20 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1omxmP-0007w9-U5; Mon, 24 Oct 2022 15:46:13 +0200
Message-ID: <504af0de-5c69-b695-f758-6650e150ba07@pengutronix.de>
Date:   Mon, 24 Oct 2022 15:46:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
To:     Jun Li <jun.li@nxp.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
 <40f423ce-376c-acbf-db00-ca696da44fe4@pengutronix.de>
 <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
 <a7983d24-cf0a-16ad-b202-1353da320003@pengutronix.de>
 <PA4PR04MB96409CB34D18F850074C311E89289@PA4PR04MB9640.eurprd04.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <PA4PR04MB96409CB34D18F850074C311E89289@PA4PR04MB9640.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
        NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 18.10.22 04:07, Jun Li wrote:
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Thanks for the info. Do you know if this issue exists with the i.MX8MN as
>> well? A colleague had trouble bringing up the OTG_ID HW function and I assume
>> it may be the same issue. I am unsure though, because the
>> imx8mn-tqma8mqnl-mba8mx.dts muxes the pad as OTG_ID.
> 
> No, iMX8MN is completely different IP(USB2 only) than iMX8MP, iMX8MN
> has *OTG* inside so the ID functionality should be fine, what's the
> trouble you colleague had?

I see. Problem was that changes to the OTG pins were not detected
on an i.MX8MN-based board, despite the colleague being sure that
OTG controller registers were set correctly.. I'll have to catch up with
him for more info. My current suspicion is that it may have been
runtime-suspend related.

I'll ask him to test again with your series separating USB/HSIO PDs.

  https://lore.kernel.org/all/1664192735-14313-1-git-send-email-jun.li@nxp.com/

We had a udev rule already, which I tested working on an i.MX8MM:

  SUBSYSTEM=="platform", ACTION=="add", DRIVER=="imx_usb", ATTR{power/control}="on"

But apparently something is still amiss.

Thanks for the help everybody,
Ahmad

> 
> Li Jun
>  
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Best Regards,
>>>
>>> Tim
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       |
>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
>> ngutronix.de%2F&amp;data=05%7C01%7Cjun.li%40nxp.com%7Cac32a99803dc4e710
>> 4d408dab0777a15%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6380163244
>> 44837508%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLC
>> JBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=4TFBorG%2BucyYuy
>> HrwhTDxjz4GV3%2FsCaHzx7i4cdw5Zw%3D&amp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
