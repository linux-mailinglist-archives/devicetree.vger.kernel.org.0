Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3302B78BA5B
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 23:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230421AbjH1Vew (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 17:34:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233778AbjH1Ve2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 17:34:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F209319B
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 14:34:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8807D651C4
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 21:34:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36035C433C7;
        Mon, 28 Aug 2023 21:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693258463;
        bh=rdMNwLBUBrqIx10Ynf9DLHyYSuYCdN6wSGRVvQMZ3c0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Oh5khnBmAxWFqriaVz6ke1FbDpx4zllrIjrdyROp43yXAlDHkhbbpYZLIuni8oCuo
         kz0kgNK8fm9QN3oDfGcmxw/AOmybZrezW6WFRnS1oLteM/iN+Abnmtv6KIuItjwyfm
         6NDfsQlXPyl7ODev08UYujz03/oMEC9rTm8528Tx7602UowqB02lSSRyk7v6c9m1KB
         yAoECJp0MKprYT8xLdwhPd66rZ2GNv13aYMNPqmq5CkC5GvoWK5MwyPSH6p3anU+pT
         NHhZDEsXCnG91YXo1M8PxZmZIZ+j3dhIzuTrFE9Nl7mv6VXG62/XmCWjKd6vwVcLBJ
         CquE44gxJ1DUg==
Received: (nullmailer pid 384607 invoked by uid 1000);
        Mon, 28 Aug 2023 21:34:20 -0000
Date:   Mon, 28 Aug 2023 16:34:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     Conor Dooley <conor.dooley@microchip.com>, heiko@sntech.de,
        uwu@icenowy.me, andre.przywara@arm.com, robh+dt@kernel.org,
        noralf@tronnes.org, daniel@ffwll.ch, conor+dt@kernel.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
        samuel@sholland.org, airlied@gmail.com, sam@ravnborg.org,
        mripard@kernel.org, linux-sunxi@lists.linux.dev, jagan@edgeble.ai,
        krzysztof.kozlowski+dt@linaro.org, jernej.skrabec@gmail.com,
        wens@csie.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V4 5/8] dt-bindings: usb: Add V3s compatible string for
 OHCI
Message-ID: <169325845386.384418.11147757539841975746.robh@kernel.org>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
 <20230828181941.1609894-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828181941.1609894-6-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 28 Aug 2023 13:19:38 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Allwinner V3s uses a generic EHCI and OHCI for USB host
> communication and the MUSB controller for OTG mode. Add compatible
> strings for the EHCI node.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/usb/generic-ohci.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

