Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A46084AE81D
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 05:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344732AbiBIEHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 23:07:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347092AbiBIDjC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 22:39:02 -0500
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 418B7C043184
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 19:32:38 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id t199so1195202oie.10
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 19:32:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=U3oOjIeVi1C82XPxQZmsfVaWQzE3dxNvbFyDd9qEgEE=;
        b=dYf4AOohAUUzhzUTDoF6fqxpXkkHuGSmEBSRMkyGfY+6ZxG/orKAUk5i5nUG+ILgee
         1vOJQ2UICbvDpQUzKvVujwDVcsBQVqurQ1w3Cbvq8kE7I5fkKKBaHiWKb9tBB5lIdRJ8
         QWxV7YyfEBnryA6FfOL5rggSzcR5Qefg+PACEOVSBVCfv0JSEiipjgH9rU7GQqwNcrS2
         CTtRqyWjZQmkXtGLUwHLjsN615iOQNlTZAUD6m0J3RAgZW7kUPO21c/dTt9fjK9xVq3G
         iMBuMkzDzGLRhGC7AujDNOURJVyguzHgebYjXmsKXctdmQuL8HlUmdgC//S0knGEscbm
         2L7A==
X-Gm-Message-State: AOAM530gNkDeDQzGrKxgblknW0LbmbSP1isUTYibcqLqCkXLY+MLOdC5
        nTc5nQNNTGskeGjA2DBHpw==
X-Google-Smtp-Source: ABdhPJyIZbDtFNyphezJ8O3TyklDXoGPLMe2pQ2ZQ03AXwwMSzMipIvWQeMcLWWnOU+Q1ItTth4NJQ==
X-Received: by 2002:a05:6808:9b3:: with SMTP id e19mr138998oig.90.1644377557610;
        Tue, 08 Feb 2022 19:32:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bg34sm6438397oob.14.2022.02.08.19.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 19:32:36 -0800 (PST)
Received: (nullmailer pid 3586500 invoked by uid 1000);
        Wed, 09 Feb 2022 03:32:35 -0000
Date:   Tue, 8 Feb 2022 21:32:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        kernel@pengutronix.de, linux-rockchip@lists.infradead.org,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 20/27] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <YgM100sUfmKALBD1@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-21-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-21-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jan 2022 15:55:42 +0100, Sascha Hauer wrote:
> The VOP2 is the display output controller on the RK3568. Add the node
> for it to the dtsi file along with the required display-subsystem node
> and the iommu node.
> 
> changes since v3:
> - Bring back gamma_lut regs
> - Drop redundant _vop suffix from clock names
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi |  4 ++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  4 ++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 51 ++++++++++++++++++++++++
>  include/dt-bindings/soc/rockchip,vop2.h  | 14 +++++++
>  4 files changed, 73 insertions(+)
>  create mode 100644 include/dt-bindings/soc/rockchip,vop2.h
> 

Acked-by: Rob Herring <robh@kernel.org>
