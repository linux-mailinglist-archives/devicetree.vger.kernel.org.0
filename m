Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1E7D4F6772
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239228AbiDFRfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:35:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239245AbiDFRfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:35:33 -0400
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 963D330F0C5
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:43:17 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id t21so2758702oie.11
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 08:43:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zm0gltZzePsTxjzckZtmhsyfP1/8o8D5XY9uAa+8SjQ=;
        b=kaUeGCgYOFQNLjCZIQzUBfs4SvLYyoQnMY/wA51Wn5SlkvLeZcgmk8zOp1yqAfhulm
         Z1DJkSJk6gSn11AH1q6rVwkQX3EjdL9xBiKh85wpuvumAkobcfj9Io1j6t2k7/80u/Pc
         sKjkB8DeFTPIldvIFretBGfMZkNkmEA2967ewhFkJh+zcQtjhnYuVuAU8/7iAQ/Q2s+G
         I/Q+QggKiVYtktrI3K8/gRXTzcs7cXkLNt+05VZWh1d5YbFMfyL2G2aGxuuk0ziDvHm/
         6mh37ZlPPv4Hx4m2HIYEEZ8xImUsVE0tvHRkWJ50tnfTHVbQ3L919mvVAP7B7/mpvSA/
         lbeQ==
X-Gm-Message-State: AOAM531/TpMf5WQlwdsath/dFcs3eOxyWp1hacCE8jAq9yo5ZNmbWmG+
        qAS9CH9s/S8gl+dehdETOA==
X-Google-Smtp-Source: ABdhPJzeazWOgofzEVWYmwO7b8kSZEd7/9CWRnKH+S7isZUkaFj9UwOUoWXUCGuMU+R/y4krcswH5A==
X-Received: by 2002:aca:2311:0:b0:2ec:cb84:c5bb with SMTP id e17-20020aca2311000000b002eccb84c5bbmr3776315oie.246.1649259796324;
        Wed, 06 Apr 2022 08:43:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bp21-20020a056820199500b003298e6877c7sm378089oob.29.2022.04.06.08.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 08:43:15 -0700 (PDT)
Received: (nullmailer pid 2300667 invoked by uid 1000);
        Wed, 06 Apr 2022 15:43:15 -0000
Date:   Wed, 6 Apr 2022 10:43:15 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
        Robert Foss <robert.foss@linaro.org>,
        linux-amarula@amarulasolutions.com,
        Neil Armstrong <narmstrong@baylibre.com>,
        Christopher Vollo <chris@renewoutreach.org>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Add TI DLPC3433 DSI
 to DMD
Message-ID: <Yk21E3nZo678iGz/@robh.at.kernel.org>
References: <20220331150307.58777-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331150307.58777-1-jagan@amarulasolutions.com>
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

On Thu, 31 Mar 2022 20:33:06 +0530, Jagan Teki wrote:
> TI DLPC3433 is a MIPI DSI based display controller bridge
> for processing high resolution DMD based projectors.
> 
> It has a flexible configuration of MIPI DSI and DPI signal
> input that produces a DMD output in RGB565, RGB666, RGB888
> formats.
> 
> It supports upto 720p resolution with 60 and 120 Hz refresh
> rates.
> 
> Add dt-bingings for it.
> 
> Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - fix compatible
> - drop reg description
> - fix enable_gpio description
> - fix port@2
> 
>  .../bindings/display/bridge/ti,dlpc3433.yaml  | 117 ++++++++++++++++++
>  MAINTAINERS                                   |   6 +
>  2 files changed, 123 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
