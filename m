Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77BF04ED96C
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 14:13:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232806AbiCaMPE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 08:15:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235899AbiCaMPD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 08:15:03 -0400
Received: from mail-m176237.qiye.163.com (mail-m176237.qiye.163.com [59.111.176.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99FD91FF21E
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 05:13:16 -0700 (PDT)
Received: from [192.168.60.102] (unknown [103.29.142.67])
        by mail-m176237.qiye.163.com (Hmail) with ESMTPA id CB9D1C40311;
        Thu, 31 Mar 2022 20:13:11 +0800 (CST)
Message-ID: <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
Date:   Thu, 31 Mar 2022 20:13:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220330192054.GA4012@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUMaGkhWSk1LSU9NQh8fSE
        4aVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjI6Qxw*HD4BSg05SjpMOBwS
        DkoaCjpVSlVKTU9DTElDTEJPS0lOVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZSktIVUlCVUpPSVVNTFlXWQgBWUFNS0NCNwY+
X-HM-Tid: 0a7fdfe4e207d9afkuwscb9d1c40311
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Piotr:

On 3/31/22 03:20, Sascha Hauer wrote:
> On Wed, Mar 30, 2022 at 04:52:22PM +0200, Piotr Oniszczuk wrote:
>>
>>> Wiadomość napisana przez Sascha Hauer <s.hauer@pengutronix.de> w dniu 30.03.2022, o godz. 12:20:
>>>
>>> Does it change anything if you do a "modetest -s 69@67:1920x1080" before
>>> starting the app? Or if you run "modetest -P 43@67:1920x1080@NV12"
>>> before starting the app? Or other combinations thereof?
>> So i tried following combinations
>>
>> -boot
>> -modetest -s 69@67:1920x1080 -> ok
>> -modetest -P 43@67:1920x1080@NV12 -> green screen
> I have no idea what is going on here. There same commands work for me.
> You could provide me your kernel config and upstream commitish you are
> working on, maybe that gets me closer to your setup.


It's a little strange, I can't reproduce this issue neither.

But I have problem with this two step command sequence.

step 1:  modetest -s 69@67:1920x1080 -> ok

step 2:  modetest -P 43@67:1920x1080@NV12,

I got the failed message:  "failed to enable plane: Permission denied"

Because the drm core will stop step2 by drm_ioctrl_permit as 
DRM_IOCTL_SETPLANE need a master,

but the current master is the modetest run by step1.

static int drm_ioctl_permit(u32 flags, struct drm_file *file_priv)
{

         /* ROOT_ONLY is only for CAP_SYS_ADMIN */
         if (unlikely((flags & DRM_ROOT_ONLY) && !capable(CAP_SYS_ADMIN))) {
                 printk("DRM_ROOT_ONLY\n");
                 return -EACCES;
         }

         /* AUTH is only for authenticated or render client */
         if (unlikely((flags & DRM_AUTH) && 
!drm_is_render_client(file_priv) &&
                      !file_priv->authenticated)) {
                 printk("DRM_AUTH\n");
                 return -EACCES;
         }

         /* MASTER is only for master or control clients */
         if (unlikely((flags & DRM_MASTER) &&
                      !drm_is_current_master(file_priv))) {
                 printk("DRM_MASTER\n");
                 return -EACCES;
         }

         /* Render clients must be explicitly allowed */
         if (unlikely(!(flags & DRM_RENDER_ALLOW) &&
                      drm_is_render_client(file_priv))) {
                 printk("DRM_RENDER_NOT_ALLOW\n");
                 return -EACCES;
         }

         return 0;
}


After bypass the permission check, I can run step 2 , but the display on 
the screen will have a shift as the wrong dly configuration.

So how you two got step two run success?

Piotr:

What soc is on you board? rk3566 or rk3568?

I have a scripts[0]  use io[1] command to dump the VOP2 register you can 
use it dump the register configuration when you meet a display failure,

then send the dump to me, maybe I can figure out something.

[0]https://github.com/andyshrk/buildroot/blob/2022/board/andyshrk/rootfs_overlay/usr/bin/vop2_dump.sh

[1] https://github.com/andyshrk/io

>
> Sascha
>
