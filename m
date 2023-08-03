Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A05E376F05F
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 19:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233660AbjHCRK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 13:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232799AbjHCRK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 13:10:57 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5DE6420B
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 10:10:38 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A7C6D867C3;
        Thu,  3 Aug 2023 19:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1691082636;
        bh=ZpiNwq40RXZusYmoWEATOLRAeKdftNPEiFCNe0CqvXw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=F65V/+kvw0tt8fo4DRsRIOiQxoSf8gAL4QNUfyYwM6Qt2USRdwbWW+qURyshZgX5q
         P2VQpzMW9+inj8w6BCP80zEMp6NOLRwsPZN5yggvtTOG8c3/8Ym1mIq1AWUvvl3CD6
         SzJeMNUbEX6TED4ply3LSfv9j628koepgMcK4AVjCTaHzbXwEUqDMuPIP6Y7NZDGjg
         m8jmeHK1g5eCcNJ4R449Jim2YnSXT+hNKL8GFXvIQmWrzic3fxAIkd3Tk4TeyLi+SC
         TiqfBP6TnoEZ6tRgLQcBM2vJd94OhVYFXyx0t2LdVPw436y/91lLD6IPzGRsNzrmFY
         NteaqqwLwnNqg==
Message-ID: <01496199-5be9-7084-735d-55a11e30217f@denx.de>
Date:   Thu, 3 Aug 2023 19:10:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 2/2] drm/panel-simple: Add Innolux G156HCE-L01 panel entry
To:     Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc:     dri-devel@lists.freedesktop.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230731210258.256152-1-marex@denx.de>
 <20230731210258.256152-2-marex@denx.de> <20230803162314.122fab64@booty>
 <9b236561-36af-da7a-2caf-892be68e2b76@denx.de>
 <20230803170659.2e44e204@booty>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230803170659.2e44e204@booty>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/3/23 17:06, Luca Ceresoli wrote:
> Hi Marek,
> 
> On Thu, 3 Aug 2023 16:25:37 +0200
> Marek Vasut <marex@denx.de> wrote:
> 
>> On 8/3/23 16:23, Luca Ceresoli wrote:
>>> Hi Marek,
>>
>> Hi,
>>
>>> On Mon, 31 Jul 2023 23:02:58 +0200
>>> Marek Vasut <marex@denx.de> wrote:
>>>    
>>>> Add support for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
>>>> dual-link LVDS TFT panel. Documentation is available at [1].
>>>
>>> Interesting, I'm bringing up this exact panel right now and found your
>>> patch.
>>>    
>>>> The middle frequency is tuned slightly upward from 70.93 MHz
>>>> to 72 MHz, otherwise the panel shows slight flicker.
>>>
>>> Using 70.93 MHz here does not show any flickering. I even tried going
>>> in the opposite direction and set 70 MHz, and to use different
>>> backlight settings, all without any flickering.
>>>
>>> Do you think you might be using a defective device? Would you have a
>>> chance of testing another sample?
>>
>> I have literally one such display.
>>
>> Which SoC do you use (and if applicable, which bridge) ?
> 
> The panel is driven by the DSI-2 output of a i.MX8MP through a TI
> SN65DSI84 bridge.

I use the LT9211 , so I wonder whether this might be another Lontium 
specific oddity.
