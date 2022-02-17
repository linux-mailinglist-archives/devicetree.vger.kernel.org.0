Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5FA64BA698
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 18:01:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231712AbiBQRBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 12:01:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238745AbiBQRBO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 12:01:14 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D009B2B3574
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 09:00:59 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id A6F431F46171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645117258;
        bh=ff3TSiMV7RvAbS0hNd/AGstmXBT++vNiyhhx50+xrd8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=dBdEbVdp2EEfpi/vkF5YuEEUhxfieguPC+aO0KJIceXvBmWhA4SPcAdagW1ZAQz1H
         xE6PRIb1Fq2LB4lvWqaF5kQti083FrfgjZsN6EgfyHbZqKoylouXB6RZdrUgPU7vRX
         NCWZ1VP4+ZkMG/1VZC1W0Tqge1pfUomwOoLsmYgCpWbQgRL69zL2jlucUzRKvF3cts
         xuuW80kMPuliMf04HN+qIuaKU8cTT8DS3o37OM1gvPzDuGm9GxIcJkGi7OKldabNPc
         0qZFmCCDMJ+vA1mtStR9RdXedEbUJRBTvH8iVjiMV40d3ZyQPm4xwy9U1TGxt6s0U0
         m1lV+rXcuBNpw==
Message-ID: <0c6bd002-dbb3-aa44-9508-974c3ebda778@collabora.com>
Date:   Thu, 17 Feb 2022 20:00:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 13/23] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Douglas Anderson <dianders@chromium.org>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Yakir Yang <ykk@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-14-s.hauer@pengutronix.de>
 <f5abe6aa-473a-a00d-2bc5-b8a1d0560d1f@collabora.com>
 <20220217151259.GT18637@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217151259.GT18637@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



17.02.2022 18:12, Sascha Hauer пишет:
> On Thu, Feb 17, 2022 at 05:00:37PM +0300, Dmitry Osipenko wrote:
>> 17.02.2022 11:29, Sascha Hauer пишет:
>>> From: Douglas Anderson <dianders@chromium.org>
>>>
>>> Jitter was improved by lowering the MPLL bandwidth to account for high
>>> frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
>>> lowered only enough to get us a comfortable margin.  We believe that
>>> lowering the bandwidth like this is safe given sufficient testing.
>>
>> There are no device-trees that use "rockchip,rk3288-cru", AFAICS..
> 
> What do you mean? In my tree I have:
> 
> arch/arm/boot/dts/rk3288.dtsi:863:              compatible = "rockchip,rk3288-cru";
> drivers/clk/rockchip/clk-rk3288.c:985:CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);

Oh, it is ARM32, I was looking at ARM64 only. My bad.

>> Was this change tested on a non-RK3288 devices?
> 
> Yes, on a rk3568 ;)
> 
> The patch has been posted back in 2015 and was added to the Rockchip
> downstream kernel in 2016. I don't know how thoroughly Rockchip tests
> their kernels, but I assume the patch wouldn't be there if it caused
> any problems.

Thank you for the clarification.
