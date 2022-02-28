Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC64F4C6B40
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 12:50:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233996AbiB1Lur (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 06:50:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231491AbiB1Luq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 06:50:46 -0500
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EBD8593A9
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 03:50:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=udd09eFqadeejKNI+SSdE71bPbfoQ042eXd2ldYPGZY=; b=lvZafW5tuWIFwxGWEStnV17ZiA
        QPk/ZJEjkcWY+2TgKbb8StSPNp27aByS/vq4BLVV3Rxs9IfsY0Zy11GhqN5PGHOQQxAOo+WENYYCL
        N4FlNUeAijQONF6lSRtvznWYothf1ZZoVrZq/DEM9yF8HoiwzhxL5Wy5/8f/0HhbQ4h7TayvoR58r
        Ete8ECAAi1w+K9dxQ20QQ2Yar7KQeklvfHX4YDsMaE9whGqcsBhg+Egf1MAVf4YeNvUzVz5cGHCX7
        yBn4NRx8ZnlMM+gYLk9JozPVd9J2QBosRWhgN/U4sC4R2yRGbqjEDVcxNC7tIBs1+W+4LNyxg6eem
        L5DUAjtg==;
Received: from [2a01:799:95e:a400:cca0:57ac:c55d:a485] (port=62627)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nOeXU-0008WB-CA; Mon, 28 Feb 2022 12:50:04 +0100
Message-ID: <165743e0-c661-9f23-a6dd-08f4aaef7659@tronnes.org>
Date:   Mon, 28 Feb 2022 12:50:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v6 0/5] drm/tiny: Add MIPI DBI compatible SPI driver
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org,
        sam@ravnborg.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com
References: <20220227124713.39766-1-noralf@tronnes.org>
 <20220228083138.bl7vbj6scpxrgmdr@houat>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20220228083138.bl7vbj6scpxrgmdr@houat>
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



Den 28.02.2022 09.31, skrev Maxime Ripard:
> Hi,
> 
> On Sun, Feb 27, 2022 at 01:47:08PM +0100, Noralf Trønnes wrote:
>> Hi,
>>
>> This patchset adds a driver that will work with most MIPI DBI compatible
>> SPI panels out there.
>>
>> One change this time: Fix indentation in the DT binding.
>>
>> All patches are reviewed now so I will apply this after Rob's bot have
>> looked at the binding.
>>
>> Thanks for reviewing!
> 
> I just merged it in drm-misc-next.
> 

Thanks.

> Thanks a lot for being persistent enough to get through this, it will
> massively improve the situation for those displays :)
> 

Some times it's good not knowing how long it will take to do a project,
I wouldn't have done it if I knew, but then again I'm now glad there's a
future proof solution for this :) I did it for the maker community which
continues to facinate me with its ingenuity and energy.

Thanks Maxime for the idea that made it possible to do a generic driver
in mainline!

Noralf.
