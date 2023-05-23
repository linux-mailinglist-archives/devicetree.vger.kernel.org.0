Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE2170DD84
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 15:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235887AbjEWNdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 09:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236782AbjEWNdB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 09:33:01 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D4A13E
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:32:57 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C0A3F85E6B;
        Tue, 23 May 2023 15:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684848775;
        bh=1iaE7U6YZGsOpl2nGXZOl1YdV+ufEK7JbaMRkjXVZQw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=zVwfrkPbhqavwHMD5fAu5UAo9rR8cWAF+8OdZX2Jly72wYkMnBt4OKAzk2+eI1ST7
         LEZOLCZuoOQCYh3DcVxMiFdK4uGsdr/cLnNvII+Hp+fbxko4SPl9qzBDH4BgxL7rW2
         d0FwVDrpoG2cKpOV/Al/HuHKR7LVB9yrjo2YbdgNaa4SuhgQKBYCJliEf+FVExkVO+
         sZwTu2Cy1ymhXu/8o0TiM2MplLm/dDPf7eXAlOt3z8Uw2o+rukOhCopm6KGl9LCtrU
         grFjmcgGVJHWIccupK+0r6EZ1d8OqtNnFFmrzHWSt43KE5LI5tN87JVyNmQDuPJJQr
         WUO86Sy3cFruA==
Message-ID: <43cb9c13-7d65-064e-943c-a9d3e6c63f64@denx.de>
Date:   Tue, 23 May 2023 15:10:05 +0200
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
 <2684415.mvXUDI8C0e@steina-w>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <2684415.mvXUDI8C0e@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/23/23 13:17, Alexander Stein wrote:
> Hello Marek,

Hi,

> Am Montag, 15. Mai 2023, 18:24:24 CEST schrieb Marek Vasut:
>> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
>> DH electronics i.MX8M Plus DHCOM SoM . The bridge
>> is populated on the SoM, but disabled by default
>> unless used for display output.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> 
> Were you actually able to access the display? E.g. reading DPCD via AUX
> channel?

I only tried the full display port (the one with large plug) on the TC 
evaluation kit, there I could use the aux channel. Are you testing this 
bridge and running into issues ? Details please ?
