Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F1574F655F
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 18:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237637AbiDFQ32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 12:29:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237748AbiDFQ2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 12:28:49 -0400
Received: from mail-m17637.qiye.163.com (mail-m17637.qiye.163.com [59.111.176.37])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215B82016B7
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 19:03:02 -0700 (PDT)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m17637.qiye.163.com (Hmail) with ESMTPA id F0DA798048A;
        Wed,  6 Apr 2022 10:02:59 +0800 (CST)
Message-ID: <12a8c0ef-90ee-cf7e-50a0-e00add8af147@rock-chips.com>
Date:   Wed, 6 Apr 2022 10:02:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
 <20220405093700.GQ4012@pengutronix.de>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220405093700.GQ4012@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlIGEtWGE1LSkpOGB
        oYSkhIVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRA6GCo5Aj4MHUsIMBYxFThK
        NDYwCjNVSlVKTU9CSUpLTkNLTUxIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTklNSjcG
X-HM-Tid: 0a7ffc9c5db9d992kuwsf0da798048a
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi:

On 4/5/22 17:37, Sascha Hauer wrote:
> On Sat, Apr 02, 2022 at 09:37:17AM +0800, Andy Yan wrote:
>> Hi Sacha:
>>
>> On 4/1/22 20:52, Sascha Hauer wrote:
>>> -- 
>>> >From cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00:00 2001
>>> From: Sascha Hauer<s.hauer@pengutronix.de>
>>> Date: Fri, 1 Apr 2022 14:48:49 +0200
>>> Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
>>>
>>> ---
>>>    drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 ++++++++++++++
>>>    1 file changed, 14 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>> index 7dba7b9b63dc6..1421bf2f133f1 100644
>>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>> @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 *vop2)
>>>    			}
>>>    		}
>>> +		if (vop2->data->soc_id == 3566) {
>>> +			/*
>>> +			 * On RK3566 these windows don't have an independent
>>> +			 * framebuffer. They share the framebuffer with smart0,
>>> +			 * esmart0 and cluster0 respectively.
>>> +			 */
>>> +			switch (win->data->phys_id) {
>>> +			case ROCKCHIP_VOP2_SMART1:
>>> +			case ROCKCHIP_VOP2_ESMART1:
>>> +			case ROCKCHIP_VOP2_CLUSTER1:
>>> +				continue;
>>> +			}
>>
>> Think about this , there maybe other upcoming vop2 base soc, they may only
>> have
>>
>> mirror window Smart1 Esmart1, or Smart1, Esmart1, Esmart2, Cluster1.
>>
>> I think this should add WIN_FEATURE at the platform description file
>> rockchip_vop2_reg.c, then
>>
>> check the FEATURE to decide whether the driver should give this window a
>> special treatment.
>>
>> this can make one code run for different soc with different platform
>> description. or we should add
>>
>> the same code logic for different soc again and again.
> You mean like done in the downstream Kernel? Here indeed we have a
> WIN_FEATURE_MIRROR flag added to the platform description. This is then
> evaluated with:
>
> static bool vop2_is_mirror_win(struct vop2_win *win)
> {
>          return soc_is_rk3566() && (win->feature & WIN_FEATURE_MIRROR);
> }
>
> So a flag is added and afterwards its evaluation is SoC specific. That
> doesn't help at all and only obfuscates things.
>
> Besides, experience shows that you can't predict a good abstraction for

This is not a  predict,  this is an IP feature, so it will appeared on 
upcoming SOC.

We have rk3588 with 8 windows(4 Cluster + 4 Esmart, no Smart window), and

also have a entry level soc which only have 4 windows, they both have 
this feature.

> future hardware revisions, the hardware guys are just too creative in
> creating hardware that breaks existing abstractions.
>
> Sascha
>
