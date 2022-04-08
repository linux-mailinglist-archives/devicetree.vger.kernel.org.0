Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 680AC4F9C12
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 19:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbiDHR54 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 13:57:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238444AbiDHR5r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 13:57:47 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08E526330
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 10:55:42 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E426C83A97;
        Fri,  8 Apr 2022 19:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649440539;
        bh=BDWp6Jago7GfLdFMp4ltJ39tiOzPTVkDp8buYKrvTmY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=f+aidy7DKMENj2sk7/p0sIkVEtnCf94n83X5Js5WdVYofSaCk4MwCLJQZhu3ubN9h
         yprf8Htsdzc15h33iFGnJKVjx0s08x+2km883r3OlcY2hFehgJJLXZtFSEB9/YNhtk
         KuyFaz/T54LUm9l41sII6T30x18ZupUE50vfDDvUVqQGUrdUu7gCnHpOcWxolLnnhc
         skHru1TwidCoqHJ4FabIjGQlSrQtxnlaH4vOUL4LFDsHIs0mvFEtJ50etkwnXSEpu1
         mwale7OhboVJZU4gVGgRkh/kN57Xp+oYDop1wLZ8mvGBmxb9GlNp6IjO1l3r8KfJ6t
         sxA51sRNu91oA==
Message-ID: <257ef1da-dd1f-cec6-2950-42990750af43@denx.de>
Date:   Fri, 8 Apr 2022 19:55:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
Content-Language: en-US
To:     =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
        dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220404192105.12547-1-marex@denx.de>
 <2d4ef041-8339-006e-3e94-8ff16309cba7@tronnes.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <2d4ef041-8339-006e-3e94-8ff16309cba7@tronnes.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/8/22 16:50, Noralf Trønnes wrote:
> Hi Marek,

Hi,

> I see that you have commit rights so I assume you will be applying this
> patch.

It's already in drm-misc-fixes:

https://cgit.freedesktop.org/drm/drm-misc/log/?h=drm-misc-fixes

https://cgit.freedesktop.org/drm/drm-misc/commit/?h=drm-misc-fixes&id=1ecc0c09f19f8e10a2c52676f8ca47c28c9f73c7
