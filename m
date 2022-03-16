Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5174DA748
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 02:14:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349544AbiCPBP4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 21:15:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239951AbiCPBPz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 21:15:55 -0400
Received: from mail-m121144.qiye.163.com (mail-m121144.qiye.163.com [115.236.121.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17E2A12AFA
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 18:14:41 -0700 (PDT)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 20987AC02AF;
        Wed, 16 Mar 2022 09:14:35 +0800 (CST)
Message-ID: <baaf0a2e-72ee-1e6a-a99f-a68e8371d844@rock-chips.com>
Date:   Wed, 16 Mar 2022 09:14:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
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
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
 <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
 <CAPj87rM4StzGMqPfK=j5p0-mY2=ENZnZWx9QDL_jo8SzNTXWTQ@mail.gmail.com>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <CAPj87rM4StzGMqPfK=j5p0-mY2=ENZnZWx9QDL_jo8SzNTXWTQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUJOHxpWGR4eGkMZGU
        waQh5CVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktDSUNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NyI6Lio5Nj5RTi41DRhNNBM3
        OhVPCjpVSlVKTU9MSEJISUxOTEtLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT05ISDcG
X-HM-Tid: 0a7f904a7e25b039kuuu20987ac02af
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel:

On 3/15/22 20:43, Daniel Stone wrote:
> Hi Andy,
>
> On Tue, 15 Mar 2022 at 06:46, Andy Yan <andy.yan@rock-chips.com> wrote:
>> On 3/11/22 16:33, Sascha Hauer wrote:
>>> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
>>> board. Overlay support is tested with the modetest utility. AFBC support
>>> on the cluster windows is tested with weston-simple-dmabuf-egl on
>>> weston using the (yet to be upstreamed) panfrost driver support.
>> Do we need some modification to test AFBC by weston-simple-dma-egl ?
>>
>> I have a buildroot system with weston-10.0.9 and mesa 21.3.5.
>>
>> After launch weston, I run weston-simple-dmabuf-egl, but from the output
>>
>> of sys/kernel/debug/dri/0/state, the weston is still use Smart0-win0,
>> which is
>>
>> a non-AFBC window.
>>
>> Do i need to modify the vop2 driver to set one Cluster window as primary
>> plane?
> Are you using the open-source Panfrost driver, or the proprietary Arm
> DDK? The DDK was previously using some non-standard modifier tokens
> which have since been corrected upstream.


I use mesa 21.3.5 with open-source Panfrost driver enabled.

When I modify Sascha's vop2 driver, set a Cluster windows as primary plane,

Then launch weston,  vop2 report POST_BUF_EMPTY irq err.

 From the log I can see many "panfrost fde60000.gpu: js fault, js=0, 
status=DATA_INVALID_FAULT" [0]

I check the register configuration of Cluster window, there is no 
obvious error.

I event run a ovltest[1] written by myself feed a AFBC RGB data to 
Cluster0.  it can display ok.

It seems that the basic afbc configuration of vop2 is right, but 
something is wrong with Panfrost?

[0]https://pastebin.com/ydZkSz1f

[1]https://gitee.com/andyshrk/drm/tree/master/tests/ovltest

>
> You can see from running `weston-debug drm-backend` (if you start
> Weston with `--debug`) the output as it tries to put client surfaces
> on to overlay planes, and why it can or cannot.
>
> For Weston's own composited output (used when it cannot place client
> surfaces on to planes), it will just use whatever the KMS driver
> declares as the primary plane. Weston does not have any logic to say
> 'oh, this plane is AFBC and AFBC is better, so I will use this as my
> primary plane': we just follow what the kernel tells us.
>
> Cheers,
> Daniel
