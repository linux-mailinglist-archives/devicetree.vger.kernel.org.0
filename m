Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B75A70F451
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 12:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232616AbjEXKh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 06:37:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbjEXKh4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 06:37:56 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 138C098
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 03:37:55 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8AD8883741;
        Wed, 24 May 2023 12:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684924672;
        bh=/S0XRw901Nv3LCmgOpL0c3muQd0Pcarv1TB08mSsugs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=stg46sG7x1qqEWmyAQlgtFTVemi66v59skcUwj0/UI9TPA3OLM9P0hncLHPccJ/gH
         nNdsBJSllnOQmyMREQ10CnKcyirgl3eBYnS/0O/0QeKxULb0ZjWeKgLEjPSZUoV/n7
         1oVKpyJyu5xN1Ih80F+8kBuagTftflpTX5kMlyrtLaFpPggc3E4+ZCh8k9C7g1qbGS
         VSPHT8vHRjFA8zEo+52EqWaEK5ymFQ+56LSHzXs+c1eZkzilVSgRRDtC/mRB2J5K5G
         KMnCJip6nQWfza7magLfQp4IHqa6dqbmwFObYGH5kXjPMswGS1NlwuASAuCQq5oSJh
         ruxFzafKFF9IA==
Message-ID: <75c45018-fae3-aa9d-db5d-7d378f69b53c@denx.de>
Date:   Wed, 24 May 2023 12:37:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics
 i.MX8M Plus DHCOM
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
 <3741758.kQq0lBPeGt@steina-w> <a8306df6-3b30-19d1-6153-b30a425c7ed0@denx.de>
 <1953702.usQuhbGJ8B@steina-w>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <1953702.usQuhbGJ8B@steina-w>
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

On 5/24/23 12:24, Alexander Stein wrote:

Hi,

>>> Looking at the AUX_CH+/- signals, I can see the native aux request and the
>>> (presumable) correct answer (DP_DPCD_REV register) from the display. But
>>> for some reason the bridge runs into a aux timeout.
>>> I can see in the DP0_AUXSTATUS register the bus gets busy (0x1) after
>>> starting transfer. But after the tc_aux_wait_busy() call DP0_AUXSTATUS
>>> his indicating a timeout and sync error (0x310002).
>>> When changing the "Aux Bit Period Calculator Threshold" to 5 (register
>>> AUXCFG1), the sync error is gone, but the timeout still happens.
>>>
>>> The frequency used from the display is ~1MHz, which should be okay. So on
>>> the electrical side all seems okay, but the native aux transfer don't
>>> work.
>> I recall DPCD read timeouts, but those were usually triggered by either
>> bad clock or wiring problems (the devkit wiring I used was horrible at
>> the beginning) from what I can recall.
> 
> bad clock in the sense of badly configured or bad xtal hardware?

As in, the xtal clock drives the internal PLLs and if those are 
misconfigured for whatever reason, the chip can misbehave. You might 
want to double-check the clock routing chapter in the toshiba bridge 
datasheet and matching registers.

Have you tried forcing the chip into 1.62G (instead of 2.7G) operation 
and into 1-lane DP instead of 2-lane DP mode ? Does that make any 
difference ?

> As the bridge
> and the xtal is on the same mainboard, for now, I ignore wirings.

OK
