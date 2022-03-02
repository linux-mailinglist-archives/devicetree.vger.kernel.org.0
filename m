Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BF704CAC42
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 18:39:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236689AbiCBRjy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 12:39:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238287AbiCBRjx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 12:39:53 -0500
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FD8B419B8
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 09:39:10 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id g6-20020a9d6486000000b005acf9a0b644so2267373otl.12
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 09:39:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0cyeUtIEWSn6C2eD/841ecQ8uKSqDwR9p8LtwQSucsQ=;
        b=Nz7yrTrCZrkLsQUKnbS6Ej8WE2+PvB2Rzqv1V6/k8/dS8tbFziEV7GoELOnWI5fZUj
         llSbHyq+9LwFDpBlLhOPr2A1KCTutWJyXp8RkdLNjz8GL7JPg2WmNWKxL5lsE+NPDZaM
         TknEgaRiiKL+Nt3sncypyEdR+FJKkEC98eZCcAcSaGHIGX4+/4J+IjWRCyXaD4ZA1dme
         epkM32bbsVtoLa4kGGU95isqI/fzvHC/WESMRDsnSb8I+3y/F2wZEcOG2w6zIsdgkThx
         0lX9LWiUbL3+2sLbv4MJ4ZfyjjEP1xiq0mqiwtY6Pc2/Ll6ZcUL//M2hcdnKKH7t5+ZV
         HwlA==
X-Gm-Message-State: AOAM53041pZGAQ35p91B+slEPAFOtI7TtVoxeHASKs80I8XsyQ8dMO+n
        R5DTnG7PqlX0XC9rT6Zb4w==
X-Google-Smtp-Source: ABdhPJwp+yRZtQGBn+SnQoAi4X+vvtovYYFSJgAagSldAJD/T26gQzaSwJOkYMhKXm/glaBc0gk/Rw==
X-Received: by 2002:a05:6830:1650:b0:5af:8c61:7a23 with SMTP id h16-20020a056830165000b005af8c617a23mr15829413otr.118.1646242749344;
        Wed, 02 Mar 2022 09:39:09 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 23-20020a9d0b97000000b005ad33994e93sm8043268oth.31.2022.03.02.09.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 09:39:08 -0800 (PST)
Received: (nullmailer pid 3936597 invoked by uid 1000);
        Wed, 02 Mar 2022 17:39:07 -0000
Date:   Wed, 2 Mar 2022 11:39:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v3 4/7] dt-bindings: usb: dwc3-imx8mp: add power domain
 property
Message-ID: <Yh+ru3drWx5nwybv@robh.at.kernel.org>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
 <20220228201731.3330192-5-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220228201731.3330192-5-l.stach@pengutronix.de>
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

On Mon, Feb 28, 2022 at 09:17:28PM +0100, Lucas Stach wrote:
> The USB controllers in the i.MX8MP are located inside the HSIO
> power domain. Add the power-domains property to the DT binding
> to be able to describe the hardware properly.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>
