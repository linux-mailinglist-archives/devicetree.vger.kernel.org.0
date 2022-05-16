Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D736528827
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 17:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240247AbiEPPLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 11:11:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245139AbiEPPLh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 11:11:37 -0400
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40827A8
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:11:36 -0700 (PDT)
Received: by mail-oo1-f44.google.com with SMTP id y22-20020a4acb96000000b0035eb01f5b65so4082935ooq.5
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:11:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XQZilFNnyWOrnsd9+O3k/1NtnfB23HnxNigB7mEQs6g=;
        b=TQIg+2MWcwOZTZK4C9i4Hrazt1bP/IePWbsZ5mS9cmvwx8asggqEpj0HhUHxcUAnst
         oZtFs8bkRUcimYnKKHAs5JTMuPIgmX84j1FNNEUrAr69cA4hP0+ATnaUxTE9fUjA4viG
         QHSvY9IuOt2PMa/Sc9OLG9Q0p/fPOuH/eP90dtc88D/ehqVwWSYDwiQzr9sp8EzbwNz3
         9rxlPtdG1IYy5f5RTndZUmaHLDnJlLLfBE/b5nH7mdFcGtlx0X8rLBL2+2lR1i0KTQCJ
         gqciG6OGInHnA8/Y6QspLLXUwHzArcvpleTiP/fvULagFB0E0M80/pVzKRORpn1D6Ida
         IYXg==
X-Gm-Message-State: AOAM530F97RqeHPpOErHgZctW1RVdLMfAO/t3lAddjfiYBjKVMxppkym
        pH2W0W3Qq+oWMW9vcpuwEg==
X-Google-Smtp-Source: ABdhPJwoINneFOPVMUiM8+pXuhnEFeSw9ccB7ueOeoHaNfTmlTOq11kp8/ddeparMJV2zMR12s/fGw==
X-Received: by 2002:a4a:ea16:0:b0:35e:9a71:4826 with SMTP id x22-20020a4aea16000000b0035e9a714826mr6084849ood.76.1652713895492;
        Mon, 16 May 2022 08:11:35 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q9-20020aca5c09000000b00325cda1ffb6sm3834548oib.53.2022.05.16.08.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 08:11:34 -0700 (PDT)
Received: (nullmailer pid 2652479 invoked by uid 1000);
        Mon, 16 May 2022 15:11:33 -0000
Date:   Mon, 16 May 2022 10:11:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
Message-ID: <20220516151133.GA2652417-robh@kernel.org>
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

Acked-by: Rob Herring <robh@kernel.org>
