Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AFF74DB217
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 15:01:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233184AbiCPOC3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 10:02:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240745AbiCPOC1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 10:02:27 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7212866CB3
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 07:01:13 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 738BD1F416FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1647439272;
        bh=b7DxzgX/+W8/AlqSmL1OfcChj9C1UYGvNw0Y8aIj/FQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fCKGKbRAVYs0MG7CZtAtS8/QMk9OkfCYqW7Nep5s5JeK12xXfIQULQCA2LQtqma2f
         /ZfcFA4ErV0IFpPOQ61LbI3O/raH6ulrtcdBPyGJ/dbR75AZ/Jv7Of+wlzZWHSXgM4
         42z0n5pwHx7b1G6lzsxwgQdWybtLKCYORlubbwlX62FcnHCL5S43wZ/pAadngdAshk
         z08gQ61mePQTRMmjVg37ItinBe6fiYSWUOJAm78aV5YboswShSYv/AaRYuYN613L2a
         2zssDvgUHeZE54XLUtq1oHZdIrtJjBC8uaUKLx7Ve6lOmh1K5jsnOxaEN7L7E4XSYH
         r/Dcb7c/CsA9g==
Message-ID: <d14345fe-c1be-73c0-825c-61d0b6471cc2@collabora.com>
Date:   Wed, 16 Mar 2022 17:01:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-US
To:     Robin Murphy <robin.murphy@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     "elaine.zhang" <zhangqing@rock-chips.com>,
        devicetree@vger.kernel.org,
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
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
 <20220314081834.GK405@pengutronix.de>
 <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
 <20220316091253.GQ405@pengutronix.de>
 <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
 <e65975a4-7d5f-1fb3-a031-2bb61de7f6a5@arm.com>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <e65975a4-7d5f-1fb3-a031-2bb61de7f6a5@arm.com>
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

On 3/16/22 16:55, Robin Murphy wrote:
>> To me that NIU quirk should be internal to the clk h/w module, so it
>> doesn't feel nice to mix the clk h/w description with the HDMI h/w
>> description.
>>
>> On the other hand, making clk driver to handle this case indeed will
>> take some effort as I see now. For example, clk driver of NVIDIA Tegra
>> has concept of shared gates, but bringing it to the RK clk driver will
>> be quite messy.
> 
> From a quick look, it seems like it could be straightforward
> conceptually at least. Presumably: subclass clk_gate_ops to
> enable/disable a required clock before enabling/disabling normally, have
> rockchip_clk_register_branch() resolve an optional required clock and
> pick gate_ops as appropriate, then the rest is basically just
> boilerplate for describing the dependencies in the first place. However
> I'd agree that in practical implementation terms it does look even
> simpler and cleaner for the clk_hw abstraction to provide the
> appropriate ops and resolution itself.
> 
>> Alright, let's work around the clk limitation like you're suggesting. I
>> agree that it shouldn't really be a problem to deprecate the extra clock
>> later on.
> 
> If there's a realistic chance that someone will actually work on a
> proper coupled/dependent/whatever clock abstraction before the rest of
> RK3588 is supported well enough for mainline users to start really
> caring about power efficiency, then arguably the simplest and cleanest
> workaround would be the other option that Elaine mentioned, of just
> marking hclk_vo as critical for now. If it's likely to turn into a
> "nothing's as permanent as a temporary fix" situation, though, then the
> DT binding has less functional impact, even if it does leave us
> developers with baggage down the line.

I missed that suggestion about marking hclk_vo as critical. That's a
good idea, I like it.
