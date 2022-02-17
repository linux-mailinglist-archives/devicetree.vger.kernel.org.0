Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D68214BA0EF
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 14:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234020AbiBQNUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 08:20:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:42834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240662AbiBQNUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 08:20:39 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E242AED91
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 05:20:22 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 314181F45C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645104021;
        bh=frvkPvpz6EtNe12MCXtRLAiBcdyezvJMEVigFM8+kGY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RGsVsI/lQpoUKPA6V3Twhpxur+3Y+o6SyrYEKhCHhJnVUkGSdRrTbzhckA6Z8vruL
         ZFCkGZ7FZ3XA2nHIdLJ+811J/y2ivyUjsdG8WaVsdZMh4ZCVViUbinVp7sQmWQFiDy
         3t9IGpwnR2aDxLUD7Yx45IdCTohzsP/YfefaFo6ENeMRJQ96FaIbQ0jV/JBsvxQwfD
         gzJJJED0QxI7RA3ui1ytubcIxPQ1iZuWyqMKve9fg7CTJ6TzBvBC5hlCQhxpuobfei
         Gyv3aKQIsS5Yv1FuVr9MU3UZUHh/jG1zOfB/kS5Zkw+0IshM7cq00jpEX+7ptY8sdz
         QAdJg4pLtwH1w==
Message-ID: <0fa21d91-b15f-8049-d776-8c6e9e9334b2@collabora.com>
Date:   Thu, 17 Feb 2022 16:20:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 02/23] drm/rockchip: dw_hdmi: rename vpll clock to
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
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-3-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-3-s.hauer@pengutronix.de>
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

17.02.2022 11:29, Sascha Hauer пишет:
> +	hdmi->ref_clk = devm_clk_get(hdmi->dev, "ref");
> +	if (PTR_ERR(hdmi->ref_clk) == -ENOENT)
> +		hdmi->ref_clk = devm_clk_get(hdmi->dev, "vpll");
> +
> +	if (PTR_ERR(hdmi->ref_clk) == -ENOENT) {
> +		hdmi->ref_clk = NULL;

I missed in v5 that devm_clk_get_optional() could be used here. But this
doesn't worth the v7 by itself.
