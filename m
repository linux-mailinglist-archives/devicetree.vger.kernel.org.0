Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 783304D94CC
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 07:47:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345324AbiCOGsK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 02:48:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345285AbiCOGru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 02:47:50 -0400
Received: from mail-m121144.qiye.163.com (mail-m121144.qiye.163.com [115.236.121.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B52549933
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 23:46:38 -0700 (PDT)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 713ECAC023E;
        Tue, 15 Mar 2022 14:46:36 +0800 (CST)
Message-ID: <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
Date:   Tue, 15 Mar 2022 14:46:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
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
        Peter Geis <pgwipeout@gmail.com>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220311083323.887372-23-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUIaGh1WH0IfSE5OHx
        1PQk5CVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PUk6Ezo*DD5NES9PCBQvEVYT
        AxJPCxBVSlVKTU9MSElNTEJMS09DVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElJTTcG
X-HM-Tid: 0a7f8c541bd1b039kuuu713ecac023e
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha:

On 3/11/22 16:33, Sascha Hauer wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
>
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
>
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>    functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> - Drop all waiting for framesyncs
>
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.

Do we need some modification to test AFBC by weston-simple-dma-egl ?

I have a buildroot system with weston-10.0.9 and mesa 21.3.5.

After launch weston, I run weston-simple-dmabuf-egl, but from the output

of sys/kernel/debug/dri/0/state, the weston is still use Smart0-win0, 
which is

a non-AFBC window.

Do i need to modify the vop2 driver to set one Cluster window as primary 
plane?


