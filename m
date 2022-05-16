Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3292E5295A7
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 01:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344851AbiEPX7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 19:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231190AbiEPX7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 19:59:50 -0400
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AD6F40936
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 16:59:50 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-f17f1acffeso9752754fac.4
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 16:59:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xyjHLQTcFMS0UehvpStZdiLsbAVbWDADX0CVhwbS4I0=;
        b=J2jFM/9YAmJcQTxWc/u/37MiU7CkMpkcIGGt0Pvu76M2vpDSL75N7gVrAKJIjWkwUF
         mFWOPzI8jFqc1pytV4EV0qv+QOBujAPD/ipdYxlpmWSEe5D4zKDiUlZos1CGyHHBWiYw
         vGJMGrQ4XNUzeyaGlih9edhk3bfsSbpOftb956ky0wcocP3i7NS5iixGFHIex0e1bL/H
         Vah/LrlC8eNrjs8ND+lNPVZjVDbysZ8zdE/9yBb3BOx4VVa3bDezxkrXndlbZNa3GhcF
         jn12wEPvYHn/XZCxnThfrBGC4stBJSTQhcM8TM0XaR+T0/V/UxePx4rZILPcvm6Op5k7
         xyiQ==
X-Gm-Message-State: AOAM533Uh11wAdHXHXzN8Op37PHl74ZF/9UcfUFI/pM1cVSjGdWcTXk5
        eVmpSzFfVDW5LDpID/SDpg==
X-Google-Smtp-Source: ABdhPJzwtwZZktfAQbVKDiim+hupccYsDrsXiGeH8ruyjgm1smNj3xbdypZjqQgPsmaPHn50cXPHLA==
X-Received: by 2002:a05:6870:e38a:b0:f1:a858:5689 with SMTP id x10-20020a056870e38a00b000f1a8585689mr3247735oad.28.1652745589575;
        Mon, 16 May 2022 16:59:49 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r16-20020a056830081000b006060322127esm4380145ots.78.2022.05.16.16.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 16:59:48 -0700 (PDT)
Received: (nullmailer pid 3593090 invoked by uid 1000);
        Mon, 16 May 2022 23:59:47 -0000
Date:   Mon, 16 May 2022 18:59:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Abel Vesa <abel.vesa@nxp.com>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 2/4] dt-bindings: clock: imx8mp: Add audiomix block
 control
Message-ID: <20220516235947.GA3593018-robh@kernel.org>
References: <20220504204144.442193-1-marex@denx.de>
 <20220504204144.442193-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220504204144.442193-2-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 04 May 2022 22:41:42 +0200, Marek Vasut wrote:
> Unlike the other block control IPs in i.MX8M, the audiomix is mostly a
> series of clock gates and muxes. Add DT bindings for this IP.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Jacky Bai <ping.bai@nxp.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-imx@nxp.com
> To: linux-clk@vger.kernel.org
> ---
>  .../bindings/clock/imx8mp-audiomix.yaml       | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mp-audiomix.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
