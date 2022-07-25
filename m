Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D782D58084C
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:34:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237162AbiGYXeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237447AbiGYXeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:34:21 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A7D2715E
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:34:20 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-10dc1b16c12so11552995fac.6
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:34:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=o3KszqdegW1rCrrRVqTd7TlbpUQq4Yc3Oli4GrEoXzA=;
        b=2mgn2620mw724DSO66Pj1SMikcGRGEg7/1voTz2cOrbvTMO1MtyOIcn16lQakddJpU
         eAh3NUQUQZVLd1DUF1attuAaZmyPMo1a+6aw1BQhJ0izTSPK5fucX2Dag2Lsb8LCnrAo
         APKDqrlctJaX0Nq5Ii+VHRZr7uNqAFMq2ZEbGaAsTDpQHJCZDGOfSiTpp27HAdYRTPpn
         ah++LwS52mrJB6s1+kwTE6cCiWX7/fHOIfNV1uPfJIsroYwhdOJTvnopWELzySyZ+VCy
         pBR0bmkr9G6Kdr95kOvNtA0PGCMw8JbbGlELufwMP0A2slSqj7LRgr9/rxuYP0xsREP4
         W68w==
X-Gm-Message-State: AJIora/k2FL6BVgSTWK0gPw9ecbNBSr87QhfL2qKMbtqW4WD9jai2XMt
        mI2rI57l6PBsnAhjwsMf3g==
X-Google-Smtp-Source: AGRyM1sDXy2v8NAiVOa9bbxVTTLHd5ACgO2mQ/fQXRcuaZx7fm8HXCrqReajq/upB1S3Z8FfpIcM/g==
X-Received: by 2002:a05:6870:1484:b0:10c:22a0:3e0a with SMTP id k4-20020a056870148400b0010c22a03e0amr15745813oab.71.1658792059616;
        Mon, 25 Jul 2022 16:34:19 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id o6-20020a9d6d06000000b0061c309b1dc2sm5513945otp.39.2022.07.25.16.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:34:19 -0700 (PDT)
Received: (nullmailer pid 2966691 invoked by uid 1000);
        Mon, 25 Jul 2022 23:34:17 -0000
Date:   Mon, 25 Jul 2022 17:34:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        robert.foss@linaro.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: sitronix,st7701: Add
 Densitron DMT028VGHMCMI-1A TFT
Message-ID: <20220725233417.GA2966657-robh@kernel.org>
References: <20220725151703.319939-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220725151703.319939-1-marex@denx.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Jul 2022 17:17:02 +0200, Marek Vasut wrote:
> Add compatible string for Densitron DMT028VGHMCMI-1A TFT matrix.
> This is a DSI-attached 480x640 2.83 inch panel.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Guido Günther <agx@sigxcpu.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/display/panel/sitronix,st7701.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
