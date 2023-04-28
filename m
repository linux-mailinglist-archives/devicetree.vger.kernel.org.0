Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB3B46F1248
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 09:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345207AbjD1HU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Apr 2023 03:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345408AbjD1HU2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Apr 2023 03:20:28 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A0146B1
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 00:20:09 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1psIOi-0002ma-OA; Fri, 28 Apr 2023 09:20:04 +0200
Message-ID: <edb9ea50-0a4d-a160-7f23-f1d2b633eb1f@pengutronix.de>
Date:   Fri, 28 Apr 2023 09:20:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] imx8mn-var-som: dts: fix PHY detection bug by adding
 deassert delay
Content-Language: en-US
To:     Hugo Villeneuve <hugo@hugovil.com>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
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
 <76302757-5359-5e70-02e2-daf0923843cb@pengutronix.de>
 <20230427181826.3929691d2aa4820b6db7def8@hugovil.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230427181826.3929691d2aa4820b6db7def8@hugovil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Hugo,

On 28.04.23 00:18, Hugo Villeneuve wrote:
> On Thu, 27 Apr 2023 22:16:45 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> Please also add the PHY name into the DT, e.g.:
>>
>>   ethphy: ethernet-phy@4 { /* ADIN1300 */
>>
>> I find this very useful when bringing up a new board and looking
>> for similar DTs.
> 
> Hi Ahmad,
> altough I agree it is a good idea, I prefer to not add this information for now, because there is probably some (old) versions of this SOM which use other PHY devices (maybe AR8033), but I am not 100% sure as this is not clear from the SOM manufacturer infos/website.

/* ADIN1300 on new revisions */ would work too.

Cheers,
Ahmad

> 
> Hugo.
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

