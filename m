Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A714D0C16
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 00:33:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243462AbiCGXd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 18:33:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243902AbiCGXd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 18:33:57 -0500
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C647B5549A
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 15:33:01 -0800 (PST)
Received: by mail-oo1-f51.google.com with SMTP id k13-20020a4a948d000000b003172f2f6bdfso19947634ooi.1
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 15:33:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MMFvv+A8EpZWIQh+l11k5XPjimtRgswqGHQotND/lwY=;
        b=OyaelwwngExQH4Qmxw3aHtOcIukevNa7zr9/ti8EzGA8SG1D/Hwf9C1t/zeMc1iGb7
         P/ereaGkXxmLRI7eHWBKkpo68jxSTEcLx8zj9OjmBOGkSjMuYSrlAmy01PkVlsf+sX7a
         JS7b1PiEIbCw4uQgr5rtBnDJ7qAnEF+9ptfVtNMOiAOYUFDeQilZ29MoCWvqnJFWdpu/
         k9N9zNJzjMbF6mK0bwLE2WtKyfZlum5WGHgfI8PlKIyHlD1PyTeKF1L27PLN9dQ+ndj4
         bFryRUhY/gZbS3On5Im91nKO2FbaGm7HTMprHF7qi//uLaevM0tsOgT670tPBQF8rV08
         AHvQ==
X-Gm-Message-State: AOAM533kZEccROE1vau2ryUp3dmAHwoKhFVYb7bv/xi7aCLU21SijXFQ
        Ys5Owhj4E1NH8o4lP5jm1w==
X-Google-Smtp-Source: ABdhPJz9uuu/bb+uGVeQCedRpt1336Cmy3Vq6EP+ZSw5UR3pIqTaDOUphnklb82Hx9iiqwixa6i9ZA==
X-Received: by 2002:a05:6870:1682:b0:da:b3f:3255 with SMTP id j2-20020a056870168200b000da0b3f3255mr789618oae.261.1646695981151;
        Mon, 07 Mar 2022 15:33:01 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m5-20020a056870194500b000d9a0818925sm6106997oak.25.2022.03.07.15.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 15:33:00 -0800 (PST)
Received: (nullmailer pid 3472110 invoked by uid 1000);
        Mon, 07 Mar 2022 23:32:59 -0000
Date:   Mon, 7 Mar 2022 17:32:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH V3 01/13] dt-bindings: display: bridge: icn6211: Document
 DSI data-lanes property
Message-ID: <YiaWK8QqwE0Wa6Pr@robh.at.kernel.org>
References: <20220304002508.75676-1-marex@denx.de>
 <20220304002508.75676-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220304002508.75676-2-marex@denx.de>
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

On Fri, 04 Mar 2022 01:24:56 +0100, Marek Vasut wrote:
> It is necessary to specify the number of connected/used DSI data lanes when
> using the DSI input port of this bridge. Document the 'data-lanes' property
> of the DSI input port.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V3: New patch
> ---
>  .../display/bridge/chipone,icn6211.yaml        | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
