Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC72051E24F
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1444816AbiEFWnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356030AbiEFWnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:45 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C1C5AA48
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:39:58 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-edeb6c3642so8706115fac.3
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:39:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=gdnoN48c4OtIQTvkUpqjNfjiuzwFbiiCs1QABjCyBsY=;
        b=umjXbQlEw4elEZArrzdtnGcV6lO6PXQz8tueeBHvPq31XAonV62mJDER0fGqtJN1ET
         Lr4EA/6QRs08q4deXVsVeoODl59Yb2sEf2Jo00Un91h5MBoOz7Kq2KCqOyhaDRFTibtj
         1U+JRoD4c8DU9h2Qys39MbG7/FWOrQ0rDYcptaIk4Gf13SxfWTObmT5xT9VEz1efe00D
         RTJpWZBHYNkERXm+JBsWakwvGI9ndm0I1X4D6W9Lbii0a5oG6SzcSqBFfucJNQ/jEiHh
         7MEuslDnIPeW8ZxOeAhAoUNSAetIxTW8kVm0+bs9pRrHt1GowQA3tBrRlrGd8zVmrtZe
         O5jQ==
X-Gm-Message-State: AOAM530tbP/96TX8WwcDvbdShC7F6id/ZpC/J2hEC+0IAJ235DTL68dR
        bxcS7DUJFq71wipaB2sm/Q==
X-Google-Smtp-Source: ABdhPJypMneSibUbRivL8Yoczz0j4CFSkTRWYurL+negj4qJZ/gZTxYlBuqjNPARGG9bxw2fstna9g==
X-Received: by 2002:a05:6870:d68e:b0:e2:af08:6cc3 with SMTP id z14-20020a056870d68e00b000e2af086cc3mr5506584oap.189.1651876798315;
        Fri, 06 May 2022 15:39:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g93-20020a9d2de6000000b0060603221240sm2113095otb.16.2022.05.06.15.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:39:57 -0700 (PDT)
Received: (nullmailer pid 2407415 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-phy@lists.infradead.org, Sandor Yu <Sandor.yu@nxp.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        patchwork-lst@pengutronix.de,
        Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20220506181034.2001548-4-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de> <20220506181034.2001548-4-l.stach@pengutronix.de>
Subject: Re: [PATCH v0.5 3/9] dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.651712.2407414.nullmailer@robh.at.kernel.org>
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

On Fri, 06 May 2022 20:10:28 +0200, Lucas Stach wrote:
> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dts:26.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1401: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

