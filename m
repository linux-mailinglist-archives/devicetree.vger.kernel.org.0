Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAE9665CCD4
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 07:11:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbjADGL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 01:11:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231418AbjADGK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 01:10:59 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE0EE13CD4
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 22:10:58 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pCwzH-0006lD-V5; Wed, 04 Jan 2023 07:10:56 +0100
Message-ID: <053cb4ce-1fc6-b533-19eb-ac85f1273d75@pengutronix.de>
Date:   Wed, 4 Jan 2023 07:10:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 0/1] pmic on imx8mm
Content-Language: en-US
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20230104052317.1083372-1-johannes.schneider@leica-geosystems.com>
 <905e34eb-c9fd-f44f-4897-377a22a3b234@pengutronix.de>
In-Reply-To: <905e34eb-c9fd-f44f-4897-377a22a3b234@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04.01.23 07:04, Ahmad Fatoum wrote:
> Hi,
> 
> On 04.01.23 06:23, Johannes Schneider wrote:
>> current(?) imx8mm EVKs come with a different PMIC: used to be "rohm,bd71847", which is now replaced by "nxp,pca9450a" on the LPDDR4 variant at least
> 
> So you have a LPDDR4 EVK.
> 
>> the register settings etc where "backported" from current u-boot sources for the EVK
>>
>> Note: not sure if the changes should go in the ddr4-evk.dts or elsewhere;
> 
> Why change the DDR4 EVK's device tree?
> 
>> what about backwards compatibility? = users/holders of the EVKs with the bd71847 IC?
> 
> It's a new device, so give it a new device tree and a new DT compatible.

Also, you didn't include the maintainers in the recipient list. 

> 
> Thanks,
> Ahmad
> 
>>
>>
>> Johannes Schneider (1):
>>   arm64: dts: imx8mm: set PCA9450a as PMIC
>>
>>  .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 124 ++++++++++++++++++
>>  1 file changed, 124 insertions(+)
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

