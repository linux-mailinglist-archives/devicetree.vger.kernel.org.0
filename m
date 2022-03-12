Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B31C04D70F3
	for <lists+devicetree@lfdr.de>; Sat, 12 Mar 2022 22:08:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbiCLVJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Mar 2022 16:09:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232680AbiCLVJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Mar 2022 16:09:08 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 935D83B295
        for <devicetree@vger.kernel.org>; Sat, 12 Mar 2022 13:08:02 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id AE00E1F4595D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1647119280;
        bh=wLExJO5a7BmNAEjWa2vEXI65hZUlcnfDKIQubmXYQnc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=QYeUEH+ikY/Ro0+JeLJULZFKaxxIFkAzMFLOhDP83klBIXSO/dTzyh02Ta91Msvkz
         Co7Da98R4PxLxTf2su/UBioVU1YgOlfOenhHw9yjbvlMiP8/WA1Qld7GSG3cGG4J7x
         EZUrFmknuwGh3ws+Cq61njszuQwOgN+ztZthFrmQDfnJpw6xvxp6h9urLbStLUAE94
         sby0sevwi1CxegYfipUaMpooeK8yJl7rIW2Pfy90HqIgLTzifmmpOgC03xlNdjseFg
         UorG2by37kNYSuDTChgTvPzoOxNyzudZ62M5A8MCmVbQqawTlFPPQSLjS4XE456Bl4
         FAnhceRnDkSWg==
Message-ID: <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
Date:   Sun, 13 Mar 2022 00:07:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        "elaine.zhang" <zhangqing@rock-chips.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220311083323.887372-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/11/22 11:33, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. This clock is not needed for the HDMI
> controller itself, but to make the SoC internal bus logic work. From the
> reference manual:
> 
>> 2.8.6 NIU Clock gating reliance
>>
>> A part of niu clocks have a dependence on another niu clock in order to
>> sharing the internal bus. When these clocks are in use, another niu
>> clock must be opened, and cannot be gated.  These clocks and the special
>> clock on which they are relied are as following:
>>
>> Clocks which have dependency     The clock which can not be gated
>> -----------------------------------------------------------------
>> ...
>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
>> ...
> The clock framework does not support turning on a clock whenever another
> clock is turned on, so this patch adds support for the dependent clock
> to the HDMI driver. We call it "NIU", which is for "Native Interface
> Unit"

This still doesn't make sense to me. You're saying that "pclk_vo_niu,
hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
uses pclk_hdmi. I don't see how these "niu" clocks are related to HDMI
from your description. The pclk_vo should remain being disabled for HDMI.

I already said before that the datasheet suggests that hclk_vo needs to
be enabled in order to ungate the AHB part of the VO module, which is
needed for CPU accesses. Elain, could you please confirm this or clarify
more about why hclk_vo needs to be enabled for HDMI?
