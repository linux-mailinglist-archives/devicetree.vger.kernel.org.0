Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11DB14F9E6A
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 22:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232075AbiDHUyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 16:54:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238772AbiDHUyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 16:54:10 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3BB3A6E12
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 13:52:05 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-d39f741ba0so10930149fac.13
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 13:52:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PT7kIhGKYEWso/FS/FtYSxv89cgBbpRTQgG43vv2qkI=;
        b=QbqhxpK/H5CXfmg+ljuAeg+3/DQxwDhxA21yD3L0yF3R5rx+gNvlihoR4o1MD9+6pq
         Goj+Ts6qXSIuvNuxLhFpwY38qWn244xZNfEtEvEYex2+byXEnJN8u3hnkfnqkYvMIUWh
         gp2V/b/JolFkK3LL8U8luQmdqfunvF5ltiyNdb+UaWRbWzgVVE3erV11XnTZ3WCKEp6I
         URTwF67qzgYh1e+bVl/TVdftT77Eii2U/60b9RdulMrMJqyYVAy74EE4SLQEdqKlGkvc
         rsA2w3ZfcjGbXrjJX/1h72hrFaXIAcUtirKZr5+CTm8bwX0LMx3r2RvvpQJvgKhgSIjq
         CD5Q==
X-Gm-Message-State: AOAM532CtCWIeLYLw/B8yRxDYDUoXU75QHs9Ajrumt8EKfbH4Lf6cJIC
        wRQdV0Uqdvw2F7TbCie8Ig==
X-Google-Smtp-Source: ABdhPJxVEQzi9SiO14bfxFoe1zwfoZO3q7eUy6FYUE5BjSXG7imLkvH1lQA9n4Xc9M5KSZGJQYXAJg==
X-Received: by 2002:a05:6870:d28d:b0:da:b3f:2b51 with SMTP id d13-20020a056870d28d00b000da0b3f2b51mr9053315oae.240.1649451124939;
        Fri, 08 Apr 2022 13:52:04 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k14-20020a056830168e00b005b22c20b195sm9764815otr.45.2022.04.08.13.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 13:52:04 -0700 (PDT)
Received: (nullmailer pid 4042062 invoked by uid 1000);
        Fri, 08 Apr 2022 20:52:03 -0000
Date:   Fri, 8 Apr 2022 15:52:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, robert.foss@linaro.org,
        Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Document DSI
 data-lanes property
Message-ID: <YlCgcw06jJ14n+kT@robh.at.kernel.org>
References: <20220407185617.179573-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220407185617.179573-1-marex@denx.de>
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

On Thu, 07 Apr 2022 20:56:16 +0200, Marek Vasut wrote:
> It is necessary to specify the number of connected/used DSI data lanes when
> using the DSI input port of this bridge. Document the 'data-lanes' property
> of the DSI input port.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> NOTE: This is consistent with all the other DSI panel and bridge bindings which
>       document 'data-lanes' property, all of which already use OF graph and have
>       the 'data-lanes' property in the port@N subnode, see:
>       $ git grep -l data-lanes Documentation/devicetree/bindings/display/
> ---
>  .../display/bridge/chipone,icn6211.yaml        | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

