Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5376F4FFEF9
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 21:16:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236329AbiDMTS0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 15:18:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238631AbiDMTRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 15:17:50 -0400
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DF0624E
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:14:24 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-de3ca1efbaso2993831fac.9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:14:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iYGhXzHIg+rEEjeQ/jJwW728ph5+Wl0l9PFg2xzLCIg=;
        b=m/h6KYPkheUVDEr5wohhjSwpWkZ49hzSZ6sBXUoH6JkFza/O3tD8m4b1hqAYcuhLBW
         AlLZMjoZgKc5hInz8sqAMOW/mAcEg/MvD5mqxl/scT/mwc0lCBNOYYW8qdov841d225l
         9rUia+t2amATniEZ6WKJSck2vFrglkfuWhyy62HatmVTQrLHQIi7uID9a7pgE4oTIyev
         0DUUROblfNLoJL8gy4N/+5t8l7w5xrwZVWsk6hubSoYpUrnBRyECxdzWh2j0EVZgp/PR
         qsfNI/zxzMYX5EUX0I9ikzYBPLR+uQWW0HTUVNbZGvdvEul3UJzWggvDtR3pnvh6Kqea
         ZJGg==
X-Gm-Message-State: AOAM533mRMnKFYjb5Cb73BH2oq1DDCYrty8cR1kwqLuXmbIsbC9Zu1o8
        bLkJoueUBGurwjo5Esulzw==
X-Google-Smtp-Source: ABdhPJxiogZ9m/XtNhnzrEg+z66QbvH8lzjAyRJljm81F8M8okW6OWYjnXNsubvBZDfVT3oC7r6gbw==
X-Received: by 2002:a05:6870:231f:b0:da:c15:fd43 with SMTP id w31-20020a056870231f00b000da0c15fd43mr87168oao.135.1649877263610;
        Wed, 13 Apr 2022 12:14:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ay5-20020a056820150500b00320f8a179d0sm14886827oob.30.2022.04.13.12.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 12:14:23 -0700 (PDT)
Received: (nullmailer pid 3667950 invoked by uid 1000);
        Wed, 13 Apr 2022 19:14:22 -0000
Date:   Wed, 13 Apr 2022 14:14:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Anson Huang <Anson.Huang@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: nvmem: snvs-lpgpr: Add i.MX8M compatible
 strings
Message-ID: <YlchDiKJOX2/uKVD@robh.at.kernel.org>
References: <20220407103016.16543-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220407103016.16543-1-marex@denx.de>
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

On Thu, 07 Apr 2022 12:30:16 +0200, Marek Vasut wrote:
> Add compatible strings for i.MX8M(Q), i.MX8M Mini, i.MX8M Nano, i.MX8M Plus.
> All these SoCs have the SNVS LPGPR registers and they are at the same offset
> as on i.MX7D.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Anson Huang <Anson.Huang@nxp.com>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Oleksij Rempel <linux@rempel-privat.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Applied, thanks!
