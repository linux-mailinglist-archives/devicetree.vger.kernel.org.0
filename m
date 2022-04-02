Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C33A04F0501
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 18:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358300AbiDBQlw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 12:41:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358276AbiDBQlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 12:41:51 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F7A12108B
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 09:39:58 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6F62983953;
        Sat,  2 Apr 2022 18:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648917596;
        bh=0ybHmqe+VzHvO1ZZrASxVNHub0Bcbx0SFes6A9+I44U=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=INtI0rcGu+kJvLrcjemjundyZ1jAcfVPI3GoUBMmGtBv2H5SQI4fDJFtVgyNhiwH+
         YYK8ABaL8Bsng9w4ZEq9SLw6fw/sZbqcy4a96mRD7k5NW9I6Hnk/hLYO3cHQFLSgX+
         V3VDn0K+1+hnyi5e3ZIB63J0W3wECGMHsgUUwdGPkbGHi8jLxxoooh1Os/52yKzuRZ
         B0n+xBDLIGvVC/U/vWWWq0RCdK+WlLctK7heF46JcLzajUmS+K5biaSqIYvJhRPyrT
         w+s8RpsQbUwLvTzlJLKL4mCccylK0aAj7/mspCqjBo+e0nAO3BZCs+bn95xxzMW1F6
         TK5LMM1rWRZIg==
Message-ID: <d230da1b-2649-2f8d-680b-015e9044540e@denx.de>
Date:   Sat, 2 Apr 2022 18:39:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in
 of_get_drm_panel_display_mode()
Content-Language: en-US
To:     =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220401163755.302548-1-marex@denx.de>
 <20220401163755.302548-2-marex@denx.de>
 <YkdImJRIRkaqeGDl@pendragon.ideasonboard.com>
 <efaa195a-bbdc-ca24-eccc-271995dfd27f@denx.de>
 <YkfAtkOtaWksnrlH@pendragon.ideasonboard.com>
 <a8b45b0a-b458-f9dd-c983-6ef4ec175432@denx.de>
 <d16332a6-63cc-8fa6-91f2-59064ce333f1@tronnes.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <d16332a6-63cc-8fa6-91f2-59064ce333f1@tronnes.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/2/22 09:45, Noralf Trønnes wrote:
> 
> 
> Den 02.04.2022 06.28, skrev Marek Vasut:
>> On 4/2/22 05:19, Laurent Pinchart wrote:
>>> On Fri, Apr 01, 2022 at 10:36:24PM +0200, Marek Vasut wrote:
>>>> On 4/1/22 20:46, Laurent Pinchart wrote:
>>>>> On Fri, Apr 01, 2022 at 06:37:54PM +0200, Marek Vasut wrote:
>>>>>> Make the width-mm/height-mm panel properties mandatory in
>>>>>> of_get_drm_panel_display_mode(), print error message and
>>>>>> return -ve in case these DT properties are not present.
>>>>>> This is needed to correctly report panel dimensions.
>>>>>
>>>>> Can we guarantee this won't cause a regression ?
>>>>
>>>> For the upstream DTs, I think we can.
>>>> For downstream DTs, we cannot know.
>>>
>>> Are there users of this function whose DT bindings don't require the
>>> width-mm and height-mm properties ?
>>
>> There is literally one user of this function upstream:
>> drivers/gpu/drm/tiny/panel-mipi-dbi.c
> 
> Yes, the function was added for that driver since it was so generic in
> nature. What about adding an argument to of_get_drm_panel_display_mode()
> that tells if the properties are mandatory or not?

Sure, we can do that, but maybe the question here is even bigger than 
this series.

Should every panel set mandatory width_mm/height_mm so e.g. the user 
space can infer DPI from it and set up scaling accordingly, or should 
width_mm/height_mm be optional ?

I think width_mm/height_mm should be mandatory for all panels.

Thoughts ?
