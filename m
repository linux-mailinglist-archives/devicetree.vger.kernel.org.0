Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96BCA4D52A4
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 20:54:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiCJTyW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 14:54:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238852AbiCJTyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 14:54:20 -0500
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B5FDF4A0
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 11:53:18 -0800 (PST)
Received: by mail-oo1-f54.google.com with SMTP id r41-20020a4a966c000000b0031bf85a4124so8158299ooi.0
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 11:53:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xu3Et8aQ6I9ybICOWGEHbIw1BX+KhMzyqVq/7u9sJY0=;
        b=PTF7exSC1nAtVh3/CRyVL/UkWjtPoVKk+upofMid1Q464p1hQLEjkGMW7WDkhncJpI
         RZYCZUte8LH7lwP8OJwdG+vmaSwwAKf7YJImH9K03uXZuIvPDcMbdJCeNznfXou2bLKy
         UYLXwk+lMZ6W7L5A7UNkchECI0WZ7SOrar2ylUylN522oCDMX2Wme5Pjk8SOWSQH5e80
         KILJi72V0ARf41bafX5/4xzJInTuqxGKHfWrE2rrI5ldfCjaahyKygEr4vHFXxMEk0Uf
         mPFLLi5Wb/JnnzZR+pbS5klO5IVjRonLDVJ7nQcpFD4zD0uabK/ASWMPPLL7/jSVkGJc
         wWGA==
X-Gm-Message-State: AOAM533fRC9/FRJYvDEoNeZQwXd9gdBHlKOK6vBs+8WlN8oR0wuJhgTp
        1RMI/KHLwjQrdoQkdQEYvYcpb1IA2g==
X-Google-Smtp-Source: ABdhPJwjZhGSJGgBJSThg2ftdo2rkUEwSln68rbfz5V06qn5NGWdOmnAAS4EPmRPMvXMygVoUEqSkQ==
X-Received: by 2002:a05:6870:4792:b0:da:b3f:3220 with SMTP id c18-20020a056870479200b000da0b3f3220mr3691985oaq.208.1646941997784;
        Thu, 10 Mar 2022 11:53:17 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 45-20020a9d08b0000000b005b2387fefb2sm2690626otf.78.2022.03.10.11.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Mar 2022 11:53:17 -0800 (PST)
Received: (nullmailer pid 1953063 invoked by uid 1000);
        Thu, 10 Mar 2022 19:53:16 -0000
Date:   Thu, 10 Mar 2022 13:53:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     Paul Elder <paul.elder@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: soc: Add i.MX8MP media block control DT
 bindings
Message-ID: <YipXLBp83LgrFO5M@robh.at.kernel.org>
References: <20220228154801.1347487-1-paul.elder@ideasonboard.com>
 <20220228154801.1347487-2-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220228154801.1347487-2-paul.elder@ideasonboard.com>
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

On Tue, 01 Mar 2022 00:47:58 +0900, Paul Elder wrote:
> The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
> peripheral providing access to the NoC and ensuring proper power
> sequencing of the peripherals within the MEDIAMIX domain. Add DT
> bindings for it.
> 
> There is already a driver for block controls of other SoCs in the i.MX8M
> family, so these bindings will expand upon that.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 105 ++++++++++++++++++
>  include/dt-bindings/power/imx8mp-power.h      |  10 ++
>  2 files changed, 115 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
