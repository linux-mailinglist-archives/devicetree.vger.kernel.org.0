Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 996AC5392D7
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 15:56:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343798AbiEaN4n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 09:56:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345086AbiEaN4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 09:56:42 -0400
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A92D76
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:56:41 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-f2bb84f9edso18396035fac.10
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RgtoDz79MqxCMpo5unEswVuciYwf9SoneSMZ6fKufS0=;
        b=e+VlnPbNanw9gBgyYrjBDzYW9kJa5aJIvmcvZm6oWfeC9rnEjXDxl1byDDi6542it/
         nChGhgV83n0K88HUgEUbXnu5BAePXjtklHFr2XdomCokjNI6MSwjUAij4Kpo7yhdv6Z4
         L2vff7ZlGoRA5klehTg7nEWnY1fXtMr39ipdLfvAqYfSefLrHFnhjAbckh44kCZxnp37
         sjTmM1s1OhokWvwGwoeFdOrvOSsyZXAF50uXKzFlxhI+gKvMCXMgSHoeYu1gXcXQScMy
         RdSl1zSV/q700iJzYrZf/vgMix9lSVHpzk/XBYxIX8MfLli8LlyEBe63J+7pGday7zfb
         lhQQ==
X-Gm-Message-State: AOAM533i4gq+yte/hdALzWAbd2hppfkJ67+mvyrOCH03XkOR3q90Ma9y
        Ct/3ja8cZIVyA7O1PlUS0Q==
X-Google-Smtp-Source: ABdhPJyhKYDYPx9LfyX8+JmdpwkVz+kWCc8EPx5cjacmDBckm0XSfeQDzclyrBzb639MibxiC0aMwQ==
X-Received: by 2002:a05:6870:709c:b0:f1:b173:2ca2 with SMTP id v28-20020a056870709c00b000f1b1732ca2mr12907083oae.70.1654005400768;
        Tue, 31 May 2022 06:56:40 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e21-20020aca2315000000b0032bbcbd59b4sm5442223oie.17.2022.05.31.06.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:56:40 -0700 (PDT)
Received: (nullmailer pid 1661150 invoked by uid 1000);
        Tue, 31 May 2022 13:56:39 -0000
Date:   Tue, 31 May 2022 08:56:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Paul Elder <paul.elder@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
Message-ID: <20220531135639.GA1659604-robh@kernel.org>
References: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
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

On Tue, 10 May 2022 23:05:43 +0300, Laurent Pinchart wrote:
> The DT example incorrectly names the ISP power domain "isp1" instead of
> "isp". This causes a validation failure:
> 
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
>         From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> 
> Fix it.
> 
> Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Shawn, this fixes an issue in linux-next, could you please apply the
> patch to your imx/bindings branch for v5.19 ?
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Now failing in Linus' tree and linux-next and no response, so I've 
applied.

Rob
