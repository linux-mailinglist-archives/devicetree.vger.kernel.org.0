Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE3C078BA5A
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 23:35:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233994AbjH1Vew (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 17:34:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233763AbjH1VeT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 17:34:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1254E18D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 14:34:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9FD306230C
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 21:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8D2DC433C8;
        Mon, 28 Aug 2023 21:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693258452;
        bh=qN7pNxG0J5mbeYN5+tZ6fUg7paWZnxUjZeSAaskCCW8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Nl/386jjeFdIjNmmbkgUC2qkUXrOeNFNYXerAiHYGtJ8kpJmB/a1z8TUak1drhBvx
         KUao1FLuroE7KSQmcsTd2lbZP0InLi/uZ54R+QGbZV0SvXVTG12E1aFlPZupjW2N3L
         xum8SUWQ4ItodqShJtRrm+bwMCp+E+xjMtKvZP1IhYhkdUa/9k3PcygH2e4gldzKTG
         gYyKZjqlrsSYzpBxBblui25sNS2QFNhpSgUt7FakqQkR1HsK3ue4R+LQaxMg6i7R5N
         6tJT3D3GOF5xE2oBjs4huTr2QzEuHWIOdfWt+7YZErJkQtG7uORVx92Ltqrk4kw3H2
         gvOYEoHygbFpA==
Received: (nullmailer pid 384190 invoked by uid 1000);
        Mon, 28 Aug 2023 21:34:08 -0000
Date:   Mon, 28 Aug 2023 16:34:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     samuel@sholland.org, devicetree@vger.kernel.org,
        neil.armstrong@linaro.org, mripard@kernel.org, wens@csie.org,
        sam@ravnborg.org, airlied@gmail.com, conor+dt@kernel.org,
        jagan@edgeble.ai, linux-sunxi@lists.linux.dev,
        krzysztof.kozlowski+dt@linaro.org, uwu@icenowy.me, daniel@ffwll.ch,
        Conor Dooley <conor.dooley@microchip.com>, heiko@sntech.de,
        Chris Morgan <macromorgan@hotmail.com>,
        jernej.skrabec@gmail.com, andre.przywara@arm.com,
        robh+dt@kernel.org, noralf@tronnes.org
Subject: Re: [PATCH V4 4/8] dt-bindings: usb: Add V3s compatible string for
 EHCI
Message-ID: <169325844800.384111.13904652434846250219.robh@kernel.org>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
 <20230828181941.1609894-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828181941.1609894-5-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 28 Aug 2023 13:19:37 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Allwinner V3s uses a generic EHCI and OHCI for USB host
> communication and the MUSB controller for OTG mode. Add compatible
> strings for the EHCI node.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

