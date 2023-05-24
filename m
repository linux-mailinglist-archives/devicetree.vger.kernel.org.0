Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4281870F2C4
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 11:28:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235477AbjEXJ2k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 05:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230356AbjEXJ2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 05:28:38 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 223CDFC
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 02:28:36 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 94EB386002;
        Wed, 24 May 2023 11:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684920514;
        bh=sScrjWCl2b0d4PiddyCD4G4K5vOdaYARfD19CZMs1R0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NPm+bKVyjkeKzc7tqcNlaO7gViCeJCtQS6XZDFRvXcdbqAwUpIn/gxeLQJG+HW9I0
         t6wMsFNKPyEqiTTePIK7XVD4Sz5ci7iCe04C48kMgiOuB9y5sOpWmG7BAouabk33E1
         8Hwy2EEdUSxeifr9JTwA8xj7qXsOrGrEYbKvIhocqUorYmC4VlL44o3FpG9UfBlTVt
         ++GRXk5gJO2Q5EWRPn2pqy9QR3vctR6Hu/A/qB3omw6lRVy+gF5AWhJSgezlGq4eiH
         xj/h2KZD8EZod2OqDgDDMkzxMb0DC9NrHPgoy1QyGJz+L4Vh7VNslDpqHCXQv5eRdV
         sZYRCd+r7m8Bg==
Message-ID: <a8306df6-3b30-19d1-6153-b30a425c7ed0@denx.de>
Date:   Wed, 24 May 2023 11:28:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics
 i.MX8M Plus DHCOM
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230515162424.67597-1-marex@denx.de>
 <2684415.mvXUDI8C0e@steina-w> <43cb9c13-7d65-064e-943c-a9d3e6c63f64@denx.de>
 <3741758.kQq0lBPeGt@steina-w>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <3741758.kQq0lBPeGt@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/24/23 08:49, Alexander Stein wrote:
> Hi Marek,

Hi,

> Am Dienstag, 23. Mai 2023, 15:10:05 CEST schrieb Marek Vasut:
>> On 5/23/23 13:17, Alexander Stein wrote:
>>> Hello Marek,
>>
>> Hi,
>>
>>> Am Montag, 15. Mai 2023, 18:24:24 CEST schrieb Marek Vasut:
>>>> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
>>>> DH electronics i.MX8M Plus DHCOM SoM . The bridge
>>>> is populated on the SoM, but disabled by default
>>>> unless used for display output.
>>>>
>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>
>>> Were you actually able to access the display? E.g. reading DPCD via AUX
>>> channel?
>>
>> I only tried the full display port (the one with large plug) on the TC
>> evaluation kit, there I could use the aux channel. Are you testing this
>> bridge and running into issues ? Details please ?
> 
> Which SoC is this evaluation kit based on?

There is no SoC attached to it, it's just a breakout board for the 
bridge chip. You can attach it via DSI to whichever SoC you want. So far 
I tried STM32MP15xx and i.MX8MP.

> Yes, I'm trying to test this bridge on imx8mp based board.
> 
> AFAICS I run into a timeout during drm connector .get_modes call, see kernel
> log below.
> 
>> samsung-dsim 32e60000.dsi: [drm:samsung_dsim_host_attach [samsung_dsim]]
> Attached tc358767 device
>> tc358767 1-000f: failed to read DPCD: -110
>> tc358767 1-000f: failed to read display props: -110

How are you supplying clock to the TC358767 (or newer) ?
Do you supply clock from DSI or from Xtal ?
If DSI and if possible, switch to Xtal and see whether that helps.
Also check the Xtal frequency and make sure you define that correctly in DT.

> Looking at the AUX_CH+/- signals, I can see the native aux request and the
> (presumable) correct answer (DP_DPCD_REV register) from the display. But for
> some reason the bridge runs into a aux timeout.
> I can see in the DP0_AUXSTATUS register the bus gets busy (0x1) after starting
> transfer. But after the tc_aux_wait_busy() call DP0_AUXSTATUS his indicating a
> timeout and sync error (0x310002).
> When changing the "Aux Bit Period Calculator Threshold" to 5 (register
> AUXCFG1), the sync error is gone, but the timeout still happens.
> 
> The frequency used from the display is ~1MHz, which should be okay. So on the
> electrical side all seems okay, but the native aux transfer don't work.

I recall DPCD read timeouts, but those were usually triggered by either 
bad clock or wiring problems (the devkit wiring I used was horrible at 
the beginning) from what I can recall.
