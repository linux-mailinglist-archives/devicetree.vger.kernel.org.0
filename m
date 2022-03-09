Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7D94D299B
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 08:38:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbiCIHiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 02:38:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230415AbiCIHiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 02:38:54 -0500
Received: from mail-m121144.qiye.163.com (mail-m121144.qiye.163.com [115.236.121.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B603FBF7
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 23:37:51 -0800 (PST)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 41C10AC0283;
        Wed,  9 Mar 2022 15:37:49 +0800 (CST)
Message-ID: <30f195d6-e9d7-3da6-89fa-4a064a1f6bf9@rock-chips.com>
Date:   Wed, 9 Mar 2022 15:37:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
From:   Andy Yan <andy.yan@rock-chips.com>
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
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
 <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
 <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
In-Reply-To: <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlDGhpWSk5JSEJOGh
        1OSRoeVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjY6Qyo4Cz5IMzAYFSwLUU8N
        PQsKFBhVSlVKTU9NQ0pKT01CQktKVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0hMSTcG
X-HM-Tid: 0a7f6d9cd74ab039kuuu41c10ac0283
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel:

On 3/9/22 10:03, Andy Yan wrote:
> Hi Daniel:
>
> On 3/8/22 22:04, Daniel Stone wrote:
>> On Tue, 8 Mar 2022 at 08:42, Andy Yan <andy.yan@rock-chips.com> wrote:
>>> On 3/7/22 21:09, Daniel Stone wrote:
>>>> On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
>>>>> When run a weston 10.0.0:
>>>>>
>>>>>     # export XDG_RUNTIME_DIR=/tmp
>>>>>     # weston --backend=drm-backend.so --use-pixma --tty=2
>>>>> --continue=without-input
>>>>>
>>>>> I got the following error:
>>>>>
>>>>> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB
>>>> Can you please start Weston with --logger-scopes=log,drm-backend and
>>>> attach the output?
>>> Please see the weston ouput here[0]
>> Are you running with musl perhaps?
> Do you mean the C library? I chose uClib-ng in buildroot, not use musl.
>> Either way, please make sure your
>> libdrm build includes commit 79fa377c8bdc84fde99c6a6ac17e554971c617be.
>
>
> The upstream buildroot use libdrm2.4.109, this commit[0] if from 
> libdrm2.4.110
>
> I cherry-pick this patch to my local libdrm, but has no effect, still 
> has "atomic: couldn't commit new state" error.
>
> I have do a search in libdrm and weston, but find no one call 
> drmModeAtomicMerge, is that right?
>
> [0]https://gitlab.freedesktop.org/mesa/drm/-/merge_requests/167
>

With your patch applied from libdrm2.4.110, I do a make clean for 
buidlroot, than build it again,  That's take effect.

I can see only the second value (non-zero FB) of plane 31 commit to the 
kernel. So this is works.

Maybe the buidroot should update libdrm package.

Thank you.

>>
>> Cheers,
>> Daniel
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
