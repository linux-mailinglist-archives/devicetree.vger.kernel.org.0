Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8ED4A4F345C
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 15:32:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233670AbiDEJAr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 05:00:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237584AbiDEImt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 04:42:49 -0400
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A96D140F4
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 01:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=EptHcbXgf4+/YVBV8Lp2UUrmmYj3GkmvAVgxNi5tz5w=; b=CtnmsDt4kkyQausn2HunhXYd/E
        OHt2BuKrDTyuWuS76ABlx0PmVXPqO5iH4DTn7dJQEO9cnhd9IXrCZZvxjv7YcdTp5J5bz9Fcs4LAq
        Jd76QT4JadI0H+/Jm2GA9Ek66qZ2C8ATG7PXycEy7JgPiCF+xHWy3eOJ3E9OcWk/no8ipK2miwE7M
        5yfb+U01BxB/wJngdy3zFPQTH6fv4wwBFypJgATPV4NrJaEtS9avdhp/f40Ejz9C6N10JQQSe0I9G
        TYQHzV4SySpRFDkBt4krl+YrSjHkDB2tqnvN3RGzQTcpwCOIiXPp2JIgjnWnK2XWHZ3GEvXea+ZGk
        zBZ7FJqw==;
Received: from [2a01:799:961:d200:cca0:57ac:c55d:a485] (port=60315)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nbeel-0000bS-1G; Tue, 05 Apr 2022 10:35:19 +0200
Message-ID: <9b268804-8f2d-9de6-cc90-89f3df1838cc@tronnes.org>
Date:   Tue, 5 Apr 2022 10:35:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
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
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20220404192105.12547-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 04.04.2022 21.21, skrev Marek Vasut:
> Make the width-mm/height-mm panel properties mandatory
> to correctly report the panel dimensions to the OS.
> 
> Fixes: 2f3468b82db97 ("dt-bindings: display: add bindings for MIPI DBI compatible SPI panels")
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Noralf Trønnes <noralf@tronnes.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---

Acked-by: Noralf Trønnes <noralf@tronnes.org>

>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> index f29789994b180..c2df8d28aaf5f 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> @@ -83,6 +83,8 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - width-mm
> +  - height-mm
>    - panel-timing
>  
>  unevaluatedProperties: false
