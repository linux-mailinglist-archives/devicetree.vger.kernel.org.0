Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 817FF4EC4ED
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 14:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244759AbiC3MwA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 08:52:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244177AbiC3Mv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 08:51:59 -0400
Received: from mail-m176237.qiye.163.com (mail-m176237.qiye.163.com [59.111.176.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DA7E16F6C6
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 05:50:12 -0700 (PDT)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m176237.qiye.163.com (Hmail) with ESMTPA id 02B40C40431;
        Wed, 30 Mar 2022 20:50:09 +0800 (CST)
Message-ID: <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
Date:   Wed, 30 Mar 2022 20:50:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 20/23] drm/rockchip: Make VOP driver optional
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Kever Yang <Kever.yang@rock-chips.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-21-s.hauer@pengutronix.de>
 <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
 <20220330063913.GW12181@pengutronix.de>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220330063913.GW12181@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUMfTR5WHh0dGktIQh
        gZT0lOVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NEk6Vhw5IT4BPw8iFhkBFksQ
        SDkKCz1VSlVKTU9DTU9PTUpLTkNIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0xKTzcG
X-HM-Tid: 0a7fdae0591ed9afkuws02b40c40431
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha:

On 3/30/22 14:39, Sascha Hauer wrote:
> Hi Andy,
>
> On Tue, Mar 29, 2022 at 07:56:27PM +0800, Andy Yan wrote:
>> Hi Sascha:
>>
>> On 3/28/22 23:11, Sascha Hauer wrote:
>>> With upcoming VOP2 support VOP won't be the only choice anymore, so make
>>> the VOP driver optional.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>    drivers/gpu/drm/rockchip/Kconfig            | 8 ++++++++
>>>    drivers/gpu/drm/rockchip/Makefile           | 3 ++-
>>>    drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
>>>    3 files changed, 11 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
>>> index fa5cfda4e90e3..7d22e2997a571 100644
>>> --- a/drivers/gpu/drm/rockchip/Kconfig
>>> +++ b/drivers/gpu/drm/rockchip/Kconfig
>>> @@ -23,8 +23,16 @@ config DRM_ROCKCHIP
>>>    if DRM_ROCKCHIP
>>> +config ROCKCHIP_VOP
>>> +	bool "Rockchip VOP driver"
>>> +	default y
>>> +	help
>>> +	  This selects support for the VOP driver. You should enable it
>>> +	  on all older SoCs up to RK3399.
> That reminds me that I wanted to rephrase this. Will change in next
> round.
>
>>> +
>>>    config ROCKCHIP_ANALOGIX_DP
>>>    	bool "Rockchip specific extensions for Analogix DP driver"
>>> +	depends on ROCKCHIP_VOP
>>
>> Aanlogix dp is also on vop2 base soc such as  rk356x and rk3588 .
> I added the dependency because analogix_dp-rockchip.c calls
> rockchip_drm_wait_vact_end() which is implemented in the VOP driver,
> so this driver currenty can't work with the VOP2 driver and can't
> be linked without the VOP driver being present.
> I'll add a few words to the commit message.


Maybe a better direction is move rockchip_drm_wait_vact_end from the VOP 
driver to rockchip_drm_drv.c

int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int 
mstimeout)
{
         struct rockchip_drm_private *priv;
         int pipe, ret = 0;

         if (!crtc)
                 return -ENODEV;

         if (mstimeout <= 0)
                 return -EINVAL;

         priv = crtc->dev->dev_private;
         pipe = drm_crtc_index(crtc);

         if (priv->crtc_funcs[pipe] && 
priv->crtc_funcs[pipe]->wait_vact_end)
                 ret = priv->crtc_funcs[pipe]->wait_vact_end(crtc, 
mstimeout);

         return ret;
}
EXPORT_SYMBOL(rockchip_drm_wait_vact_end);

> Sascha
>
>
