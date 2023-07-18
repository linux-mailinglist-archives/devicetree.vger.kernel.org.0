Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC8A3758860
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 00:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjGRWY6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 18:24:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjGRWY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 18:24:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 500E8BD
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 15:24:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BC94E61299
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 22:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D90C433C9;
        Tue, 18 Jul 2023 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689719095;
        bh=8oG1Eq2q5+HPYfFF4MQZLoFisNklIYLouYmVJXNXPi4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qj2fLOt10MObz5drcyVmP8JH3w71hIXR83x8ETYgz54p4eDwVgjyMf+vg7WDSZFHh
         OlXDrgxV6gf2U9zeUBovBfPtsqOWA3/hjvn3nTtdgPQgJ1QBvSlrgteJ4VmygWoYvX
         omY7rwoech9jo1yaDG7i4WGWrgP+S1NS04g7ddFDKx3lpEJ2gKbtO0gYgwMfc9+r3P
         NPgVHb+96woiCyYmVpuowMznnK3jOb/4oSQqvo9xikabiYSY4/lE24bK6RhbAyg0RW
         CGRCehuZV0Y+V13+r7lnAjaN0CksFSyNuhOSnXol3SArweILIKT4lEYTRMzxs8O76+
         NxVhVgC52jrJQ==
Received: (nullmailer pid 2111957 invoked by uid 1000);
        Tue, 18 Jul 2023 22:24:52 -0000
Date:   Tue, 18 Jul 2023 16:24:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     rfoss@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org,
        daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        shawnguo@kernel.org, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Laurent.pinchart@ideasonboard.com,
        linux-arm-kernel@lists.infradead.org, festevam@gmail.com,
        neil.armstrong@linaro.org, linux-imx@nxp.com, airlied@gmail.com,
        jonas@kwiboo.se, kernel@pengutronix.de, andrzej.hajda@intel.com,
        s.hauer@pengutronix.de
Subject: Re: [PATCH 8/9] dt-bindings: display: bridge: Document Freescale
 i.MX93 MIPI DSI
Message-ID: <168971909191.2111776.12496208121997931602.robh@kernel.org>
References: <20230717061831.1826878-1-victor.liu@nxp.com>
 <20230717061831.1826878-9-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230717061831.1826878-9-victor.liu@nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 17 Jul 2023 14:18:30 +0800, Liu Ying wrote:
> Freescale i.MX93 SoC embeds a Synopsys Designware MIPI DSI host
> controller and a Synopsys Designware MIPI DPHY.  Some configurations
> and extensions to them are controlled by i.MX93 media blk-ctrl.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  .../display/bridge/fsl,imx93-mipi-dsi.yaml    | 115 ++++++++++++++++++
>  1 file changed, 115 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx93-mipi-dsi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

