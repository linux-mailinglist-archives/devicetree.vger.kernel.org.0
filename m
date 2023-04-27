Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D572D6F0CF0
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 22:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344083AbjD0UQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 16:16:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344045AbjD0UQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 16:16:54 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B83C10FC
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 13:16:52 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1ps82s-0007lK-24; Thu, 27 Apr 2023 22:16:50 +0200
Message-ID: <76302757-5359-5e70-02e2-daf0923843cb@pengutronix.de>
Date:   Thu, 27 Apr 2023 22:16:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] imx8mn-var-som: dts: fix PHY detection bug by adding
 deassert delay
Content-Language: en-US
To:     Hugo Villeneuve <hugo@hugovil.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Hugo Villeneuve <hvilleneuve@dimonoff.com>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20230427195538.2718661-1-hugo@hugovil.com>
 <CAOMZO5CQeeme6uhb8NCzR2QADjkBM-mRC9-GUnmhLWSGo5MMoQ@mail.gmail.com>
 <20230427160608.f051241d750404939296f60d@hugovil.com>
 <CAOMZO5BNbRV1fLpwDZWgj9+gihHJBBGeZCvkF1tgm5GhwSn8LQ@mail.gmail.com>
 <20230427161226.9c971530c6b848aa813c92b3@hugovil.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230427161226.9c971530c6b848aa813c92b3@hugovil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.04.23 22:12, Hugo Villeneuve wrote:
> On Thu, 27 Apr 2023 17:07:59 -0300
> Fabio Estevam <festevam@gmail.com> wrote:
> 
>> On Thu, Apr 27, 2023 at 5:06 PM Hugo Villeneuve <hugo@hugovil.com> wrote:
>>
>>> Hi Fabio,
>>> it uses a ADIN1300 PHY.
>>>
>>> The datasheet indicate that the "Management interface active (t4)" state is reached at most 5ms after the reset signal is deasserted.
>>
>> Please add this information to the commit log and please add a Fixes: tag.
> 
> Good idea, will do.

Please also add the PHY name into the DT, e.g.:

  ethphy: ethernet-phy@4 { /* ADIN1300 */

I find this very useful when bringing up a new board and looking
for similar DTs.

Thanks,
Ahmad

> 
> Hugo.
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

