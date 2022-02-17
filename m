Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54A7A4BA10C
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 14:25:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240597AbiBQNYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 08:24:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240901AbiBQNYt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 08:24:49 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86D7D2AF916
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 05:24:34 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 905D41F45B52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645104273;
        bh=lsIfh5sbMJI4WTP9N2IRqlEUycgB2AeckJcRBUnq8ao=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=lzHbuZ2gFiSAjaNLa3T7PR090kaaJAVlPwS2PnJ5aCZaealX1zqQknnpf9CKbrOXf
         7Q+jbbY6uO0BagvCWblUzDl8sKDA8wwlUhOuq+9ZGVXMIoMdFFWxBZxrOYjdkGyo11
         TNrrOMr13ZDhgbRj2Uaoes4aX3gXj18eGIdAT6W2NXYZ378DLtDvVeoEZTJUuj3nlS
         LxV3WdDafBmp44y632lsfVRk/XNTVsv8Ua1KmzysetWUr5LIbOEa5tl8FS1KpTGDOx
         8ssWlTK+HinOWSB2ejLkLjmaJ5iT48yqyZNJiOmZhwlYGJ04+y2gwZQtNQkZUQY+2C
         ehK+5V3f8uP4g==
Message-ID: <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
Date:   Thu, 17 Feb 2022 16:24:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
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
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-22-s.hauer@pengutronix.de>
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
> @@ -28,6 +28,12 @@ config ROCKCHIP_VOP
>  	  This selects support for the VOP driver. You should enable it
>  	  on all older SoCs up to RK3399.
>  
> +config ROCKCHIP_VOP2
> +	bool "Rockchip VOP2 driver"
> +	help
> +	  This selects support for the VOP2 driver. You should enable it
> +	  on all newer SoCs beginning form RK3568.

s/form/from/

The ROCKCHIP_VOP option is "default y". Do you really want "default n"
for the VOP2?
