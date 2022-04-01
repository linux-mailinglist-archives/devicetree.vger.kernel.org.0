Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5C94EFBB5
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 22:36:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352510AbiDAUi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 16:38:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352568AbiDAUiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 16:38:25 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 065DD13F8DF
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 13:36:35 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 23BE68428C;
        Fri,  1 Apr 2022 22:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648845392;
        bh=i+KWy4qDX7bCrAOl/rOMbkxLO75xz0UBbrARoMX7Bnc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HixoDvQhlon5d0o/HXLD2rIa+0Cuasp7O6XdeznZBkIO0OgECl2XEvC/Zyel2TPl+
         vF5a775S/3iC1zZSIUZrzs6dVnbuJuyyb3amsGJRyP1EJyUSSOAthQHT+7gvki0VvC
         kWdiVyP5+ikgQwnQkfRoxVlYNHg3EOKOkg4NN2frAyJ4vGkJV+Wz9Zu2hcNcRC29tA
         tJvrGmW0qIxXhnjYAH+J2rQV7suupPDM99pGUsoYDqP9VrWz9OI9D2JtIV4PtcwYfh
         ehX5fCTU9gghGPAlArUOKJo6QoK7vdpJixO5ac6MOz8Md0l+GM3w+mijpCWlQBdy0O
         DeInkcCRb9+Cg==
Message-ID: <efaa195a-bbdc-ca24-eccc-271995dfd27f@denx.de>
Date:   Fri, 1 Apr 2022 22:36:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in
 of_get_drm_panel_display_mode()
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220401163755.302548-1-marex@denx.de>
 <20220401163755.302548-2-marex@denx.de>
 <YkdImJRIRkaqeGDl@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YkdImJRIRkaqeGDl@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 4/1/22 20:46, Laurent Pinchart wrote:

Hi,

> On Fri, Apr 01, 2022 at 06:37:54PM +0200, Marek Vasut wrote:
>> Make the width-mm/height-mm panel properties mandatory in
>> of_get_drm_panel_display_mode(), print error message and
>> return -ve in case these DT properties are not present.
>> This is needed to correctly report panel dimensions.
> 
> Can we guarantee this won't cause a regression ?

For the upstream DTs, I think we can.
For downstream DTs, we cannot know.
