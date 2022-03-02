Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 750FE4CACC7
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 19:01:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232799AbiCBSCF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 13:02:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232648AbiCBSCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 13:02:05 -0500
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1162BCA719
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 10:01:22 -0800 (PST)
Received: by mail-oo1-f44.google.com with SMTP id x6-20020a4a4106000000b003193022319cso2805951ooa.4
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 10:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/goqT9AknfrrTEcTqtCY9P/6UOTTnBDztD2PHfR3fqA=;
        b=E8keEnLr4w53c8IgNmzrWdnjma6gHm1PICrR7OF6C1QpZVAQmYA13zx2BSeapiTs+4
         G42EnfOG4zsRGJgkILqRdsAUeFyBt1bwWPBsKGHtBP6C2r0dzV09KJ+72VLl/84gA/YG
         s1RO1HxAT5fcZt11wcT6UzVFULyjqc4fqrftXYcjQx/Cq3xPxHBc3wkFnMzOS6v381Gv
         DwSOrznMbmU/KUCTXgsmtTVeIoLAAPa7sFz+wbq2wU3a7oBqDU6zB8Q+ciwE2nPC1x/0
         nBUT1K2pOQrswufxy9PzpC5hkJmx7mcjgNmQvHo/IwCssaeuPHupHfDUXEH4F5LDmlZo
         DWMQ==
X-Gm-Message-State: AOAM5322Z2WGlupsSA15a8mmtnv1NHMfytXe42tK+EAQwnmxB4zUuzpt
        jsnDNCAHBERU1b2swttuoQ==
X-Google-Smtp-Source: ABdhPJwU081ZnsYALg3ngDKnxVTNDVswhLhomVWcfKM5MhTUgPTmsvi/R9c2nx7mXVO6EHrERhIVNA==
X-Received: by 2002:a05:6870:f58f:b0:d4:395b:535e with SMTP id eh15-20020a056870f58f00b000d4395b535emr820759oab.136.1646244081294;
        Wed, 02 Mar 2022 10:01:21 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id g2-20020a056830160200b005af14cf9962sm7986991otr.32.2022.03.02.10.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 10:01:20 -0800 (PST)
Received: (nullmailer pid 3969417 invoked by uid 1000);
        Wed, 02 Mar 2022 18:01:19 -0000
Date:   Wed, 2 Mar 2022 12:01:19 -0600
From:   Rob Herring <robh@kernel.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Tommy Haung <tommy_huang@aspeedtech.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: gpu: Convert aspeed-gfx bindings to yaml
Message-ID: <Yh+w7+CdtYYJoRkh@robh.at.kernel.org>
References: <20220302051056.678367-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220302051056.678367-1-joel@jms.id.au>
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

On Wed, Mar 02, 2022 at 03:40:56PM +1030, Joel Stanley wrote:
> Convert the bindings to yaml and add the ast2600 compatible string.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
>  .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
>  2 files changed, 69 insertions(+), 41 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt

Applied, thanks.
