Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B97DB4CFDC3
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 13:06:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241194AbiCGMHU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 07:07:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241727AbiCGMHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 07:07:17 -0500
Received: from mail-m121144.qiye.163.com (mail-m121144.qiye.163.com [115.236.121.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C64175E45
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 04:06:14 -0800 (PST)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 1C9D7AC0245;
        Mon,  7 Mar 2022 20:06:11 +0800 (CST)
Message-ID: <1483d5c1-1a4b-615c-b7c0-41da51b5f38c@rock-chips.com>
Date:   Mon, 7 Mar 2022 20:06:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 15/24] drm/rockchip: dw_hdmi: add default 594Mhz clk
 for 4K@60hz
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Nickey Yang <nickey.yang@rock-chips.com>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-16-s.hauer@pengutronix.de>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220225075150.2729401-16-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRoeTxlWH0xKHRpJHx
        5IQk4aVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTI6Khw4Aj4MKzMxKEgPPygj
        HzBPCgxVSlVKTU9NTU5PTExKTUhMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElOSzcG
X-HM-Tid: 0a7f6445d0eeb039kuuu1c9d7ac0245
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi:

  I have a test with the 24 patches applied on Linux-5.17-rc5 on 
rk3568-evb1-v10 board with Sony XR-75z9j  HDMI TV,

4K don't work, the tv shows no signal.

1080P can work.

On 2/25/22 15:51, Sascha Hauer wrote:
> From: Nickey Yang <nickey.yang@rock-chips.com>
>
> add 594Mhz configuration parameters in rockchip_phy_config
>
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Notes:
>      Changes since v3:
>      - new patch
>
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index e97ba072a097b..03cda7229e559 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -192,6 +192,7 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
>   	{ 74250000,  0x8009, 0x0004, 0x0272},
>   	{ 148500000, 0x802b, 0x0004, 0x028d},
>   	{ 297000000, 0x8039, 0x0005, 0x028d},
> +	{ 594000000, 0x8039, 0x0000, 0x019d},
>   	{ ~0UL,	     0x0000, 0x0000, 0x0000}
>   };
>   
