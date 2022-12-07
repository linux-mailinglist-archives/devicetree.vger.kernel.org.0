Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33F66646082
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 18:44:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbiLGRoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 12:44:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230039AbiLGRoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 12:44:18 -0500
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65C25528AB
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 09:44:17 -0800 (PST)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-144b21f5e5fso10176134fac.12
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 09:44:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/8CiTJV9ucFQbeePUlzvXCbWokuGfhKoiuYFuI3St0=;
        b=fATr9sSZlFkFU4SAdk90MJrK4mm3zxkD8V5m/MDOo3f2Da31lziN/HObIIyHg1TF3m
         XMT26qMra0Du3pHGsLhw8GU5yHvBAlhtVCdrVzeIrC8VtsA4+L3lt6zT9OUXlr4YXb+5
         6u2nKoQK2Dxo+lp7STCWHXbxOGV7ao9c+x1HzRubeidtMZbQ56Bk2+cjzzaungfP3txJ
         4KccPjHUOaAA2cV4fIed6/9XmbXJwIGh9d6D/6fXEBbFF8rq2kHHUTan0ouBnY1d8vIc
         EqAwYP8+xZD2f0HXLILcEdD7tuC2SkfrnVUDdRVffgo37vNpEEakiInzGwQMxwq30yk/
         0fQg==
X-Gm-Message-State: ANoB5pmc4BOm4uERXukbOkxUAFy3f0bFILTT1zQTjbgBj0veKpf+qAbL
        298CO/gKmTgMEHCqmSzfOQ==
X-Google-Smtp-Source: AA0mqf7yzwcq443GX5MxHi0Hh4y/QyySkeQ148hJ60MONDowgCyxSvAdaU9jVjH/XctFGfNPZWS1ig==
X-Received: by 2002:a05:6871:410e:b0:143:7889:c525 with SMTP id la14-20020a056871410e00b001437889c525mr29926687oab.171.1670435056616;
        Wed, 07 Dec 2022 09:44:16 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a7-20020a9d4707000000b0066e7e4b2f76sm8137389otf.17.2022.12.07.09.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Dec 2022 09:44:16 -0800 (PST)
Received: (nullmailer pid 2464259 invoked by uid 1000);
        Wed, 07 Dec 2022 17:44:15 -0000
Date:   Wed, 7 Dec 2022 11:44:15 -0600
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: lcdif: Fix clock constraints for imx8mp
Message-ID: <167043505517.2464220.1273885867090905581.robh@kernel.org>
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 07 Dec 2022 16:13:59 +0100, Alexander Stein wrote:
> i.MX8MP uses 3 clocks, so soften the restrictions for clocks & clock-names.
> 
> Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
