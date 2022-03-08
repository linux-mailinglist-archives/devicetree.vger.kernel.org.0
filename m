Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 940F64D127A
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 09:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344945AbiCHInK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 03:43:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233181AbiCHInK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 03:43:10 -0500
Received: from mail-m121144.qiye.163.com (mail-m121144.qiye.163.com [115.236.121.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB26F3FBDA
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 00:42:13 -0800 (PST)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 2F016AC0510;
        Tue,  8 Mar 2022 16:42:11 +0800 (CST)
Message-ID: <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
Date:   Tue, 8 Mar 2022 16:42:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To:     Daniel Stone <daniel@fooishbar.org>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNPGUJWT0xNT0IaTU
        MaQkoYVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktDSUNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OT46FTo*IT4MMzJOGDgYVjET
        AR1PC01VSlVKTU9NTElDQkhKQk9MVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0JDSjcG
X-HM-Tid: 0a7f68b168bcb039kuuu2f016ac0510
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel:

On 3/7/22 21:09, Daniel Stone wrote:
> Hi Andy,
>
> On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
>> On 2/25/22 15:51, Sascha Hauer wrote:
>>> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
>>> It replaces the VOP unit found in the older Rockchip SoCs.
>>>
>>> This driver has been derived from the downstream Rockchip Kernel and
>>> heavily modified:
>>>
>>> - All nonstandard DRM properties have been removed
>>> - dropped struct vop2_plane_state and pass around less data between
>>>     functions
>>> - Dropped all DRM_FORMAT_* not known on upstream
>>> - rework register access to get rid of excessively used macros
>>> - Drop all waiting for framesyncs
>>>
>>> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
>>> board. Overlay support is tested with the modetest utility. AFBC support
>>> on the cluster windows is tested with weston-simple-dmabuf-egl on
>>> weston using the (yet to be upstreamed) panfrost driver support.
>> When run a weston 10.0.0:
>>
>>    # export XDG_RUNTIME_DIR=/tmp
>>    # weston --backend=drm-backend.so --use-pixma --tty=2
>> --continue=without-input
>>
>> I got the following error:
>>
>> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB
> Can you please start Weston with --logger-scopes=log,drm-backend and
> attach the output?

Please see the weston ouput here[0]


This failed is from   drm_atom_plane_check: both CRTC and FB must be set 
or neither.

static int drm_atomic_plane_check(const struct drm_plane_state 
*old_plane_state,
                                   const struct drm_plane_state 
*new_plane_state)
{
         struct drm_plane *plane = new_plane_state->plane;
         struct drm_crtc *crtc = new_plane_state->crtc;
         const struct drm_framebuffer *fb = new_plane_state->fb;
         unsigned int fb_width, fb_height;
         struct drm_mode_rect *clips;
         uint32_t num_clips;
         int ret;

         /* either *both* CRTC and FB must be set, or neither */
         if (crtc && !fb) {
                 drm_dbg_atomic(plane->dev, "[PLANE:%d:%s] CRTC set but 
no FB\n",
                                plane->base.id, plane->name);
                 return -EINVAL;
         } else if (fb && !crtc) {
                 drm_dbg_atomic(plane->dev, "[PLANE:%d:%s] FB set but no 
CRTC\n",
                                plane->base.id, plane->name);
                 return -EINVAL;
         }

[0]https://pastebin.com/mGXKqD2S

> Cheers,
> Daniel
