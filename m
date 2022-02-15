Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC38A4B7695
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:49:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235781AbiBOTsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 14:48:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232560AbiBOTsD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 14:48:03 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25DD9DEAD
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 11:47:53 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 2C4B91F413B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644954471;
        bh=BCTFBXRXvRz6slrOppBSCzuCpNgtXgHw8VTvEi/F91c=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jd/M6U2Sj9jRmq/fvlQsMiylkbMa9eLtc8Kszpl55iTbO2tXfEASLtBXx2oDKnWU4
         R/YXNWjLIzS5CBeOKxoT7rjJHsadCfb+r0I40csrAijVEtZUix5P10CuVrK68iAdbt
         8IGfd3ZFJZac67E6St0NYmZ35Gm4osSaQxEDrcH7jGkBRs131Ht80zpRv4bOQBAi2p
         mFrBKbYunk6hzOPo91qLTUr7mVHM1bdoEv/PsH3RQWoD9DyYKlg+pwFn1xsha8e+7N
         wbxE3ihAj+J6oQ0VWUFdgeZmmsyBMxmlkygvGyYr6MJEpISZ4CsKlps1AJZQj3/SUN
         kSfGMEclwF4ew==
Message-ID: <f0d9ae21-1cce-8ce2-c81d-595a639ac490@collabora.com>
Date:   Tue, 15 Feb 2022 22:47:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
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
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
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

09.02.2022 12:53, Sascha Hauer пишет:
> @@ -31,6 +31,9 @@ struct rockchip_crtc_state {
>  	int output_bpc;
>  	int output_flags;
>  	bool enable_afbc;
> +	uint32_t bus_format;
> +	u32 bus_flags;
> +	int color_space;

The variable types could be cleaned up like s/uint32_t/u32/ all over
this patch.

I'd also remove signes from all variables that should be unsigned.
