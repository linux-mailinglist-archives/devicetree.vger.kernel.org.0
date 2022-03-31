Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 362F34ED819
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 13:00:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234851AbiCaLC0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 07:02:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231893AbiCaLCZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 07:02:25 -0400
Received: from mail-m176237.qiye.163.com (mail-m176237.qiye.163.com [59.111.176.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB2C1F6861
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 04:00:37 -0700 (PDT)
Received: from [172.16.12.141] (unknown [58.22.7.114])
        by mail-m176237.qiye.163.com (Hmail) with ESMTPA id 29203C40318;
        Thu, 31 Mar 2022 19:00:35 +0800 (CST)
Message-ID: <8aa9da47-d7ed-41bf-384c-103757c19fe2@rock-chips.com>
Date:   Thu, 31 Mar 2022 19:00:34 +0800
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
 <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
 <20220331070614.GD4012@pengutronix.de>
 <eebd2731-f18b-af1c-b0b9-09df669f5a3c@rock-chips.com>
 <20220331081815.GF4012@pengutronix.de>
From:   Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220331081815.GF4012@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
        kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRoYGRlWTEsaS09NT0
        tMQh9IVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBA6KQw5GD5DKw03PSItLUwC
        LTUaCjxVSlVKTU9DTElPT0hOTEJOVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
        WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTU5NQzcG
X-HM-Tid: 0a7fdfa2623dd9afkuws29203c40318
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi:

On 3/31/22 16:18, Sascha Hauer wrote:
> On Thu, Mar 31, 2022 at 03:20:37PM +0800, Andy Yan wrote:
>> Hi Sascha:
>>
>> On 3/31/22 15:06, Sascha Hauer wrote:
>>> On Wed, Mar 30, 2022 at 08:50:09PM +0800, Andy Yan wrote:
>>>> Hi Sascha:
>>>>
>>>> On 3/30/22 14:39, Sascha Hauer wrote:
>>>>> Hi Andy,
>>>>>
>>>>> On Tue, Mar 29, 2022 at 07:56:27PM +0800, Andy Yan wrote:
>>>>>> Hi Sascha:
>>>>>>
>>>>>> On 3/28/22 23:11, Sascha Hauer wrote:
>>>>>>> With upcoming VOP2 support VOP won't be the only choice anymore, so make
>>>>>>> the VOP driver optional.
>>>>>>>
>>>>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>>>>> ---
>>>>>>>      drivers/gpu/drm/rockchip/Kconfig            | 8 ++++++++
>>>>>>>      drivers/gpu/drm/rockchip/Makefile           | 3 ++-
>>>>>>>      drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
>>>>>>>      3 files changed, 11 insertions(+), 2 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
>>>>>>> index fa5cfda4e90e3..7d22e2997a571 100644
>>>>>>> --- a/drivers/gpu/drm/rockchip/Kconfig
>>>>>>> +++ b/drivers/gpu/drm/rockchip/Kconfig
>>>>>>> @@ -23,8 +23,16 @@ config DRM_ROCKCHIP
>>>>>>>      if DRM_ROCKCHIP
>>>>>>> +config ROCKCHIP_VOP
>>>>>>> +	bool "Rockchip VOP driver"
>>>>>>> +	default y
>>>>>>> +	help
>>>>>>> +	  This selects support for the VOP driver. You should enable it
>>>>>>> +	  on all older SoCs up to RK3399.
>>>>> That reminds me that I wanted to rephrase this. Will change in next
>>>>> round.
>>>>>
>>>>>>> +
>>>>>>>      config ROCKCHIP_ANALOGIX_DP
>>>>>>>      	bool "Rockchip specific extensions for Analogix DP driver"
>>>>>>> +	depends on ROCKCHIP_VOP
>>>>>> Aanlogix dp is also on vop2 base soc such as  rk356x and rk3588.
>>> BTW I just looked at the downstream driver. Here we have the same
>>> situation that the analogix dp driver calls rockchip_drm_wait_vact_end()
>>> which is implemented in the VOP driver, so when the analogix dp driver
>>> is actually used on a VOP2 SoC then it is either used in a way that
>>> rockchip_drm_wait_vact_end() will never be called or it explodes in all
>>> colours.
>>>
>>>>> I added the dependency because analogix_dp-rockchip.c calls
>>>>> rockchip_drm_wait_vact_end() which is implemented in the VOP driver,
>>>>> so this driver currenty can't work with the VOP2 driver and can't
>>>>> be linked without the VOP driver being present.
>>>>> I'll add a few words to the commit message.
>>>> Maybe a better direction is move rockchip_drm_wait_vact_end from the VOP
>>>> driver to rockchip_drm_drv.c
>>> I am not sure if that's really worth it. Yes, the direction might be the
>>> right one, but I would really prefer when somebody does the change who
>>> can test and confirm that the analogix dp really works with VOP2 in the
>>> end.
>> If follow this point, the current DW_MIPI also has not been tested for
>> confirm that it
>>
>> can really work with VOP2, so you should also make it depends on
>> ROCKCHIP_VOP.
> Well at least I have patches here which make DW_MIPI work with VOP2 ;)


But you DW_MIPI patches for rk356x didn't come. So this is not keep 
consistency with this point.

>
> What about the others, like LVDS and RGB?


Yes, we also have other interface , RK356X has LVDS/RGB/BT1120/BT656, 
RK3588 has BT1120/BT656, no LVDS or RGB.

>> I think the current solution is just a workaround to make your patch pass
>> the kernel compile
> Indeed.
>
> I agree that it would be good to add a note somewhere which outputs
> work with the VOP2 driver (currently only HDMI), but I wonder if Kconfig
> dependencies is the right place for it, because only people who deliberately
> disable VOP support will see this information.
> Maybe we should rather add it to the Kconfig help text?


If a device is supported for this soc, we will add dt node at the dtsi file.

A Kconfig dependencies don't seems a good idea.


>
> Sascha
>
