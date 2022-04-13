Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C971B4FFDF0
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 20:37:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232479AbiDMSjz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 14:39:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231866AbiDMSjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 14:39:54 -0400
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 975F550B1A
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 11:37:32 -0700 (PDT)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-d39f741ba0so2868670fac.13
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 11:37:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UqMbbRjnj/Mxx3h+0U9ricfQlygbvJiJAVBC4mBrIxs=;
        b=RVRX8AVsDY9HPSJ2gitUiTpNGbvx28cB6fH0o4KNqRHogzmRp1GkfxkCTbm8gCAjno
         6+Sw0da/9BVZBvgijUDBbi9rBR3mTKmVYloaf4ixnG09v8xmd1ckr5Sg0pyS35/GWqiL
         zNMRQdPi7akE4IbYa9KYz9A8OgDSQ86msZw+GEkpg0xHSkMnWfquv0kbVm06mZz5N5P8
         9vyJWV2mEu6X2TCPwYB0+1NRuX3SBDyZNsbKxNdH1P0YJWRy7QWbr1+hNtrIr/0pB0nn
         KfltudIe/R2tTiyl7mPT7d37g4raNt1PrUCvom0cKY7zur5UKBGuHJE7LBr7oFTeWf/V
         BG4A==
X-Gm-Message-State: AOAM530mxBrvw9ShCPiyxhgqRAkiDF+bZ6aSGP6W8ObyWpHDDYm+h7qe
        IwYI2wzEB1gXv6uPc0O5hw==
X-Google-Smtp-Source: ABdhPJzNJYQGtrcCxtoAaCe2WWHDznGKED+rHWLb7NlfyR6WehfmfEGaIQUAsyUDhFYx+EjyMQnaBQ==
X-Received: by 2002:a05:6870:41c9:b0:db:f23:f5e with SMTP id z9-20020a05687041c900b000db0f230f5emr46129oac.118.1649875051771;
        Wed, 13 Apr 2022 11:37:31 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x7-20020a056830408700b005ea44eaa848sm343323ott.28.2022.04.13.11.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 11:37:31 -0700 (PDT)
Received: (nullmailer pid 3614957 invoked by uid 1000);
        Wed, 13 Apr 2022 18:37:30 -0000
Date:   Wed, 13 Apr 2022 13:37:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Fabio Estevam <festevam@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>, NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v4 06/11] dt-bindings: soc: add binding for i.MX8MP HDMI
 blk-ctrl
Message-ID: <YlcYatlunKUF1UsW@robh.at.kernel.org>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <20220406153402.1265474-7-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220406153402.1265474-7-l.stach@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 06 Apr 2022 17:33:57 +0200, Lucas Stach wrote:
> Add the DT binding for the HDMI blk-ctrl found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
