Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 338C64F060F
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 22:09:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237684AbiDBUKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 16:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbiDBUKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 16:10:04 -0400
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE43C10240E
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 13:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=OgpSvd+sEKNYnhFTtmz9rc03zoQTnAyTRtqKshoW03c=; b=O8i5i12gdbIiEYBkVUMTvyapiC
        HO2iJvNBtGmhAS+HUvDLOYBMqqmRaB4tGtxvEUDl2yW0c1/qQqdU46LfMhP3aISchcfvhJxqWvMaf
        zRwnk0MjioWJH+9G97IzT4MJQC4o7jbWNxgkdeVt4BJDGzSWE/2xHt6XLzpFtalfMD49GUHR6kj+v
        jVoYEnNK4TlPYKiAwmphwJoZRrHTmRzQ3JHEOxxAEDAEEnePLqTTkZqaUbFQ5iTSCK/WFXl3R9LFI
        rNCp+E50issSM+ZgVxj34p1F44gwqRPqU6X0hBz25Iby94IS1FIdW2ORq75KdX+kr9QS9WTnJlkm0
        qrWXKZFQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:63235 helo=[192.168.10.61])
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nak2b-0004sz-Hf; Sat, 02 Apr 2022 22:08:09 +0200
Message-ID: <db7c6ab5-afe3-2e92-33c7-7ebf75801439@tronnes.org>
Date:   Sat, 2 Apr 2022 22:08:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in
 of_get_drm_panel_display_mode()
To:     Marek Vasut <marex@denx.de>,
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
 <d230da1b-2649-2f8d-680b-015e9044540e@denx.de>
 <35a66df7-5619-cb10-620e-008adb64f2d7@tronnes.org>
 <92a5854f-0dc0-8bb9-0607-549d52822af1@denx.de>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <92a5854f-0dc0-8bb9-0607-549d52822af1@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 02.04.2022 19.55, skrev Marek Vasut:
> On 4/2/22 19:08, Noralf Trønnes wrote:
>>
>>
>> Den 02.04.2022 18.39, skrev Marek Vasut:
>>> On 4/2/22 09:45, Noralf Trønnes wrote:
>>>>
>>>>
>>>> Den 02.04.2022 06.28, skrev Marek Vasut:
>>>>> On 4/2/22 05:19, Laurent Pinchart wrote:
>>>>>> On Fri, Apr 01, 2022 at 10:36:24PM +0200, Marek Vasut wrote:
>>>>>>> On 4/1/22 20:46, Laurent Pinchart wrote:
>>>>>>>> On Fri, Apr 01, 2022 at 06:37:54PM +0200, Marek Vasut wrote:
>>>>>>>>> Make the width-mm/height-mm panel properties mandatory in
>>>>>>>>> of_get_drm_panel_display_mode(), print error message and
>>>>>>>>> return -ve in case these DT properties are not present.
>>>>>>>>> This is needed to correctly report panel dimensions.
>>>>>>>>
>>>>>>>> Can we guarantee this won't cause a regression ?
>>>>>>>
>>>>>>> For the upstream DTs, I think we can.
>>>>>>> For downstream DTs, we cannot know.
>>>>>>
>>>>>> Are there users of this function whose DT bindings don't require the
>>>>>> width-mm and height-mm properties ?
>>>>>
>>>>> There is literally one user of this function upstream:
>>>>> drivers/gpu/drm/tiny/panel-mipi-dbi.c
>>>>
>>>> Yes, the function was added for that driver since it was so generic in
>>>> nature. What about adding an argument to
>>>> of_get_drm_panel_display_mode()
>>>> that tells if the properties are mandatory or not?
>>>
>>> Sure, we can do that, but maybe the question here is even bigger than
>>> this series.
>>>
>>> Should every panel set mandatory width_mm/height_mm so e.g. the user
>>> space can infer DPI from it and set up scaling accordingly, or should
>>> width_mm/height_mm be optional ?
>>>
>>> I think width_mm/height_mm should be mandatory for all panels.
>>>
>>> Thoughts ?
>>
>> If this had come up during the review of the driver I would have no
>> problem making it mandatory. It makes sense for DPI. Maybe it's possible
>> to get around the ABI break by getting in a change through -fixes before
>> 5.18 is released? I'm fine with that.
> 
> Well that's awesome, the dbi-spi.yaml didn't land in any kernel release
> yet, so we still have a chance to fix it ?

It entered this merge window.
