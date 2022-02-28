Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6B14C693F
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 12:00:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232873AbiB1LAm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 06:00:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233471AbiB1LA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 06:00:29 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0EAC2559B
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 02:59:50 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id E91441F438DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1646045989;
        bh=gFkF0Up+9NtOgOLNqe9lR243CToghyCTK5EY9eHmHzs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=MJ8oRoRC8+rjgLECF5i6IhrMZzx/P7lN066bGYaNvM2pwNtfI/7W0OUur7hJWQhR0
         CCtVjsT87MhjVFsBPHdsIZWkI77UAoagHwIbtwEzgZ9xL9BeyIkPXDzZp/1BcchcIG
         BhSsZLqbnKAOu0ZpZ34ZZy4lyINvb6pmmzeoKe0kXTGv8hYJLkQ/OPOyiyiMl/hIRy
         vXbePQkvpAHYPycy0hQqHFYZCYXJBKfUbbGy7Er2jJCkE2Pdc9/+mk7lQx+sdlb/9+
         na7iJkOvpxzDEIdiPY9gWohTyDDSDd6n5Qg7fFxa+xqWGqrxQKZ0xwD2ylDTQ7BaYD
         +y/9ykdyFCdXQ==
Message-ID: <29ca1e0c-cb55-edcc-fed5-d60a122dc20b@collabora.com>
Date:   Mon, 28 Feb 2022 13:59:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 03/24] drm/rockchip: dw_hdmi: rename vpll clock to
 reference clock
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-4-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220225075150.2729401-4-s.hauer@pengutronix.de>
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


On 2/25/22 10:51, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock. The clock
> name "vpll" is left for compatibility to old device trees.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v6:
>     - Simplify by using devm_clk_get_optional() instead of devm_clk_get()
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 27 +++++++++++----------
>  1 file changed, 14 insertions(+), 13 deletions(-)

Looks nice now. Thank you!

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
