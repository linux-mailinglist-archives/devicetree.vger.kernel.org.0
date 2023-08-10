Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3472C777977
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 15:20:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231990AbjHJNUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 09:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230147AbjHJNUe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 09:20:34 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70DC72691
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 06:20:29 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AE63686637;
        Thu, 10 Aug 2023 15:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1691673626;
        bh=CP3gp/DAa5QJmtYg08sWKgvCcKNpvdj+CwdAt+U16Kw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=J580GXvqZbswIIWaRu7pEZXlZaed8auo0z2+GeyxMi1jBjskfIOsjjRTD84By26Dq
         OKjyvo3o8ji9jo/N+EtvRzCUHvJKSavSTPBqbJwb/w4BoS4q6k7dV7lw3JV3vDEuAl
         klahV/n6mCggfWzw/Rgb+u3oHsVem3elCw6NARFza1NkeO6C58NDAFAIXIFiR3PTAE
         FkJMvCnwrNfXBCjJqnAIzMAbdXq7dGEZuXI8ZlPN+TjIgjPmitwUFJVr0w4XhF9zRJ
         jeo0ufwyoXzp0NTQTCWAI/8MUv32tcvfgg2USCXlDTGk/Wf6aGFHdwdrqAc2dWtzsh
         utUk+A1O4sqYQ==
Message-ID: <e81c74cf-0341-fd11-d7cf-e3f257d1c056@denx.de>
Date:   Thu, 10 Aug 2023 15:20:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] arm64: dts: imx8mp: Improve VPU clock configuration
Content-Language: en-US
To:     Adam Ford <aford173@gmail.com>,
        Marco Felsch <m.felsch@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Frank Li <Frank.Li@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>
References: <20230810001320.626744-1-marex@denx.de>
 <20230810074227.i62ybnbpcavsijum@pengutronix.de>
 <CAHCN7xKaYS_=jSxuEVNkieMe65KaJrBr+DOFWGa+8hukO8xpmQ@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAHCN7xKaYS_=jSxuEVNkieMe65KaJrBr+DOFWGa+8hukO8xpmQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-6.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/10/23 14:46, Adam Ford wrote:
> On Thu, Aug 10, 2023 at 2:42 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>>
>> Hi Marek,
>>
>> On 23-08-10, Marek Vasut wrote:
>>> Update VPU clock according to reference manual to improve performance.
>>> i.MX 8M Plus Applications Processor Reference Manual, Rev. 1, 06/2021
>>>
>>> Table 5-1. Clock Root Table (continued) reads as follows:
>>> Clock Root ............... Max Freq (MHz)
>>> VPU_BUS_CLK_ROOT ......... 800
>>> VPU_G1_CLK_ROOT .......... 800
>>> VPU_G2_CLK_ROOT .......... 700
>>>
>>> 5.1.5.1 Input Clocks
>>> Input Clock .............. Frequency (MHz)
>>> VPU_PLL_CLK .............. 800
>>
>> Acoording the datasheet not the reference manual, this would be the
>> overdrive mode now. Can we ensure that VDD_SOC is in overdrive state?
> 
> Shoot, I explicitly searched the TRM for overdrive, because I remember
> this coming before with either the 8MQ or 8MM, but I couldn't
> remember.  I forgot all about the actual datasheet.

Same here, I vaguely recall there might've been a reason why those lower 
freqs, but I couldn't find it either.

> The operating-points for the various voltage rails would have to
> increase to get this into overdrive mode.  I think this would have to
> be done on a per-board basis if memory serves when this came up
> before.  :-(

I don't mind doing it per board. Actually, I don't mind dropping this 
patch, since the decoding performance increase is not even an issue in 
any of the use cases I care about.

I guess the general agreement here is to go with the "nominal mode" by 
default and enable "overdrive mode" per-board , while the NXP downstream 
goes full "overdrive mode" all the time ?
