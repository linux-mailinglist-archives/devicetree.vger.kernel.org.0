Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F7FE6D4096
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 11:28:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231909AbjDCJ2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 05:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232020AbjDCJ2c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 05:28:32 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D005D44A8
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 02:28:29 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pjGUE-0008BG-Kt; Mon, 03 Apr 2023 11:28:26 +0200
Message-ID: <a8cedf08-7b7d-712c-1c35-4da8d0542e72@pengutronix.de>
Date:   Mon, 3 Apr 2023 11:28:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [Linux-stm32] [PATCH v7 10/10] ARM: dts: stm32: add
 STM32MP1-based Phytec board
Content-Language: en-US
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230330050408.3806093-1-s.trumtrar@pengutronix.de>
 <20230330050408.3806093-11-s.trumtrar@pengutronix.de>
 <31b1300b-7dd9-9bdf-be01-a79b1ac6e8cd@foss.st.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <31b1300b-7dd9-9bdf-be01-a79b1ac6e8cd@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-3.6 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Alexandre,

On 03.04.23 11:15, Alexandre TORGUE wrote:
> On 3/30/23 07:04, Steffen Trumtrar wrote:
>> Add the Phytec STM32MP1-3 Dev board. The devboard uses a Phytec
>> stm32m157c-som.
>>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---

[snip]

>> +/ {
>> +    model = "PHYTEC phyCORE-STM32MP1-3 Dev Board";
>> +    compatible = "phytec,phycore-stm32mp1-3",
>> +             "phytec,phycore-stm32mp157c-som", "st,stm32mp157";
>> +
>> +    aliases {
>> +        mmc0 = &sdmmc1;
>> +        mmc1 = &sdmmc2;
>> +        mmc2 = &sdmmc3;
> 
> mmc aliases are still used in linux?

Since kernel commit fa2d0aa96941 ("mmc: core: Allow setting slot
index via device tree alias") added with v5.10-rc1, aliases
dictate kernel numbering of /dev/mmcblk devices, so it's good
to have these aliases for consistency as the alternative of
using PARTUUID breaks down once the same image is flashed to
both SD and eMMC and use of an initrd is not always practical.

>> +&sdmmc1 {
>> +    secure-status = "disabled";
>> +};
>> +
>> +&sdmmc2 {
>> +    status = "okay";
>> +    secure-status = "disabled";
>> +};
> 
> What is the need to put the secure status disabled for SDMMC nodes ?

TF-A parses them, but for SDMMC, it should have no effect, so I agree
they can be removed.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

