Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 304B54BA0DD
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 14:19:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbiBQNTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 08:19:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233011AbiBQNTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 08:19:03 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6054B2AE714
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 05:18:47 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 48BA71F45BBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645103926;
        bh=wxrjZyYHBBx6bMd1iTzODLfhd7VNtutE1D1YpDU9LAo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fiwU6yQ2mwVDRQi6CN3nOx5Xnty57YwZ9f5Wugus5Zij9pb3SBxWVXBHRW+hdg7no
         fq6MIvMEA4fyi9LoEpDu8N825SRVVdZ/kFKxup3Wv1FfgkeTdTwahfY+MqOm3vTV0F
         hj7kqZeBHPvED6abRYlDo2uuTQ9zRlfKcYKq1J0GYXQB/9ctEH1uvPYnOvH+5043bN
         1OhGBUDGFTLt8Nx+x6zleeD/Oa9mtXmEnyN5ffxCNm/Y/Q0gRwN+f0tqowH2UCfCVU
         h7IluhCJZkwUEh1d43ZWjFP4mCyJ+7B8i46RkppGMITwrxUMS5pnrjalwC/bHsQf/Y
         G6EwcCVR+fVLA==
Message-ID: <f63f7616-9fea-48fd-4e5d-97751640b5ad@collabora.com>
Date:   Thu, 17 Feb 2022 16:18:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 07/23] drm/rockchip: dw_hdmi: add regulator support
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
 <20220217082954.2967889-8-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-8-s.hauer@pengutronix.de>
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
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> for the HDMI port. add support for these to the driver for boards which
> have them supplied by switchable regulators.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
>  1 file changed, 38 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
