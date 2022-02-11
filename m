Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E44B04B2A52
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 17:28:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245697AbiBKQ2P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 11:28:15 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242429AbiBKQ2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 11:28:15 -0500
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59263BD0
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:28:14 -0800 (PST)
Received: by mail-oo1-f44.google.com with SMTP id u47-20020a4a9732000000b00316d0257de0so10913476ooi.7
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:28:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=klHNfWnJ8kVxgjRGYO4d5Im4kGGxPFL8Ns5oPAKJg+M=;
        b=LjHtnW3CJq5Wo7NvSOYs1WTU+UJGdm0cdttyBngVIuVmAxeU2qlUXaoeKQJ2bsyX9U
         Fe/23Mbl+hbM1BCvccgc+VcaKk86Mk+uxAzPJ5VmpPfxPJQdq2ywYcwkZIa616HJ5G9/
         qTC5p76kUKPn+gSaQ7yL220hgvdg3w7KMjjsg0+SRDgpY37Z/ZQARYUPXpMB1ECm3nE2
         U4ol5miMI1XbmIKCmldIbXmkSwBLwv/O9gmUuqOqD2yjLh/S+VMnkZvTNXfquKoDcOXU
         VdQYM/zP3PyXg9qVgzwNsFCzYnKmU74kDhCi1Ijogrm9tzyPSIDPjm3O8XDJZqczcs/g
         Nv/w==
X-Gm-Message-State: AOAM532pdgh/bdh9oM6SDl0zHcksCHH0L92jsQMKDKSlPRq0+9iwlG7e
        8uzL1IO8FhNtOIT7s9JC+A==
X-Google-Smtp-Source: ABdhPJzW10FlF1Ej2krMekurDu36Zx02Bt6f9K2Lty7YtmjK4FTtz23LBgND3HAAdhC/s0CQVn1nng==
X-Received: by 2002:a05:6870:5384:: with SMTP id h4mr414920oan.112.1644596893687;
        Fri, 11 Feb 2022 08:28:13 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:5fee:dfce:b6df:c3e1:b1e5:d6d8])
        by smtp.gmail.com with ESMTPSA id eq37sm11365799oab.19.2022.02.11.08.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 08:28:12 -0800 (PST)
Received: (nullmailer pid 470916 invoked by uid 1000);
        Fri, 11 Feb 2022 16:28:11 -0000
Date:   Fri, 11 Feb 2022 10:28:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v2 4/9] dt-bindings: power: imx8mp: add defines for HSIO
 blk-ctrl domains
Message-ID: <YgaOmzz1jURAkA6u@robh.at.kernel.org>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-4-l.stach@pengutronix.de>
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

On Mon, 07 Feb 2022 20:25:42 +0100, Lucas Stach wrote:
> This adds the defines for the power domains provided by the HSIO
> blk-ctrl on the i.MX8MP.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/dt-bindings/power/imx8mp-power.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
