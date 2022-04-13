Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52F1B4FFDED
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 20:35:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233365AbiDMSiC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 14:38:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237536AbiDMSiB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 14:38:01 -0400
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 516FF4BBA1
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 11:35:40 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-d39f741ba0so2863410fac.13
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 11:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wQHTRDbT/z2hiXzoZ5sjw9GaPBgqU0MY/bA+tOwx2z8=;
        b=qXh8ZdDWLOLYZ1ESdL2efwAJEbEvv9Rgm1mb588AvBipCfP925z6c3Bl7C9D5tZIxJ
         fHNBURCZy5PrYw2p0/ul1BkqqcsIKDAG7FBCOQOPMz3ZoCkyFGTRLgE76bkj4yuKlup3
         2CjFLNSmu/9G6O1bSH/sqGpZYaOp2vleXSpQ+oUn7/rxhVo0FuqI0IbbXaq/EaKmLZ/n
         EmPskRZ5Rqx2yA8+QZ+7RZZJd0EHDF7DYrb5HxWwkLpY1+mYSycDB1XR0WLHIUrvstKd
         +2WrFlzKst+MOZ5RTTPGEEjflbjMrP4XfdoXDYSgN9IkfzvZ7H7V6bTHSry7xuZ2mLdX
         d3LA==
X-Gm-Message-State: AOAM533gH6uqKQZgWS6kcdrWmykjlAHeBl3KzVRGyR8MAhiBu8A/6izm
        p0WBfQ4JzAyjmU4+gskFiA==
X-Google-Smtp-Source: ABdhPJz+xEsS/gg6k4//52mggT85LbjRPQKdQzSQd+gb9RBtxRFa9xUv0MRpzlLPpnm3edUJX9moOQ==
X-Received: by 2002:a05:6870:d112:b0:e2:e609:f94c with SMTP id e18-20020a056870d11200b000e2e609f94cmr42847oac.126.1649874939588;
        Wed, 13 Apr 2022 11:35:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a3-20020a056830100300b005e973e22081sm860836otp.37.2022.04.13.11.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 11:35:39 -0700 (PDT)
Received: (nullmailer pid 3612453 invoked by uid 1000);
        Wed, 13 Apr 2022 18:35:38 -0000
Date:   Wed, 13 Apr 2022 13:35:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Paul Elder <paul.elder@ideasonboard.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/11] dt-bindings: power: imx8mp: add defines for
 HDMI blk-ctrl domains
Message-ID: <YlcX+k4vSndb8d97@robh.at.kernel.org>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <20220406153402.1265474-6-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220406153402.1265474-6-l.stach@pengutronix.de>
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

On Wed, 06 Apr 2022 17:33:56 +0200, Lucas Stach wrote:
> This adds the defines for the power domains provided by the HDMI
> blk-ctrl on the i.MX8MP.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/dt-bindings/power/imx8mp-power.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
