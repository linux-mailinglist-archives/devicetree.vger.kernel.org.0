Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE2CE4BA69B
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 18:01:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235985AbiBQQ7p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 11:59:45 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232094AbiBQQ7o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 11:59:44 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E7B5169390
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 08:59:29 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id BF5F11F46169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645117168;
        bh=h7AJTVAuzazEP/DL/m+GeC4fCl6qypW09UJ/r563xOo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=GmtpIfjXozt247NQrOj8RTlTJN5EWtAHsFkWp/WST3gsK5nJDY5EfOz6inSHULUVT
         qonh/z+mv7dh9xhb1vPfxszQxZmeOhMU+4QRgF148mpoqT4xN65LhbPd2RgxAQ1LE9
         jp9NZ2+Ck3aGXv95kAfke7W6XZnPuf9h9/gE7otG1rDPszdP0zJS2G7Z5kLrSGWA/H
         qsknMpMhN0+ZqGDr5EAFRSitFybFpglvUxsyXHGQFWmaR9LiJlk8H/3FgD0aH9MBDm
         OLTjuFlO8TpXQx9XiSD+7x87VPMqHMPmAn71/3Uh4m34NxavQYLOSp88Fd7YrO8TBe
         gNpeVpJCvf4sA==
Message-ID: <15952d98-960b-76b7-4e74-257d0e069f74@collabora.com>
Date:   Thu, 17 Feb 2022 19:59:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 09/23] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        Dmitry Osipenko <digetx@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        kernel@pengutronix.de, Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-10-s.hauer@pengutronix.de>
 <cd66c9da-15c2-54e1-8016-8d951926eaa2@gmail.com>
 <20220217150041.GS18637@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217150041.GS18637@pengutronix.de>
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

17.02.2022 18:00, Sascha Hauer пишет:
> On Thu, Feb 17, 2022 at 03:35:08PM +0300, Dmitry Osipenko wrote:
>> 17.02.2022 11:29, Sascha Hauer пишет:
>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>> HDMI controller to work. The purpose of that clock is not clear. It is
>>> named "hclk" in the downstream driver, so use the same name.
>>
>> Have you checked that DSI works without the enabled hclk? I'd expect the
>> whole VOP to be clock-gated.
> 
> No, I haven't checked that.
> 
> I am not sure where you aiming at. The HCLK_VOP is supplied to the vop2
> as well and the vop2 driver also enables this clock. Still, when the
> HDMI registers are accessed before the vop2 driver enables HCLK_VOP then
> the system hangs, so the HDMI needs it also.

HDMI, MIPI and etc are a part of VOP. I'm curious whether MIPI should
also hang, at least datasheet suggests that it should since hclk ungates
the AHB part of the VOP's h/w module, which is used for registers access.
