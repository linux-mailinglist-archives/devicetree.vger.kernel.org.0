Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C363D4B2713
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 14:28:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244295AbiBKN03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 08:26:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:51478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240082AbiBKN02 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 08:26:28 -0500
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9007BBF
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:26:27 -0800 (PST)
Received: by mail-il1-f179.google.com with SMTP id d7so1056740ilf.8
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:26:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=usXnVOzVAtsq25uL4U20BZB/yv2HII5weDIBCqk+E4U=;
        b=LJeq7np23b/vdjFFmKN8xOhrs8Y4ozfCEPNi3dV9RtgJs86Lonf95tst8nL/gGe250
         PXZb5FGq7BtXRGPc8i/7epTzM9oXKUmneJQl5fosuL4UEmKmbQui2eSOzqrYAMBdRZhy
         iep0Y2CFapogSlKE3IcCpy8rKdYkCBFHe7VYWUM+V1hj+epMSsHD/8dlLhOETLpl0/py
         r5bDNxHVlHm5WLtS6xLKHeFzx4Eun87tYo5eofAqs7ouG+Hereqby/jZRokSqLVx6Ms0
         thcI6McLlpTWvoyX1clXqXqgwdqwpvLKjhycMfptAEsOAKfDMTXgtLiZto1Y57j5ItG6
         n82A==
X-Gm-Message-State: AOAM532JRX0bjiZiksR2IY93ctA4dQI9ATMfpluqJB+AE6spchWtSNje
        QHLOS6RGZP3U0AhJZomTpw==
X-Google-Smtp-Source: ABdhPJwbffklELwTuW+sRyDO+kBbzWutSRwJToZJJJEJeflS7G9CiQ0o0u03nYEGqrMi/MIzI3ainw==
X-Received: by 2002:a05:6e02:1bab:: with SMTP id n11mr977641ili.213.1644585986896;
        Fri, 11 Feb 2022 05:26:26 -0800 (PST)
Received: from robh.at.kernel.org ([172.58.139.71])
        by smtp.gmail.com with ESMTPSA id g11sm12885736iom.45.2022.02.11.05.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 05:26:26 -0800 (PST)
Received: (nullmailer pid 253535 invoked by uid 1000);
        Fri, 11 Feb 2022 13:26:21 -0000
Date:   Fri, 11 Feb 2022 07:26:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andrej Picej <andrej.picej@norik.com>
Cc:     y.bas@phytec.de, linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@canonical.com, arnd@arndb.de,
        kernel@pengutronix.de, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, festevam@gmail.com,
        linux@rempel-privat.de, leoyang.li@nxp.com, shawnguo@kernel.org
Subject: Re: [PATCH RESEND 1/4] dt-bindings: arm: fsl: add PHYTEC phyGATE
 Tauri i.MX6 ULL
Message-ID: <YgZj/aQUfzCfWCpu@robh.at.kernel.org>
References: <20220131080526.1171072-1-andrej.picej@norik.com>
 <20220131080526.1171072-2-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220131080526.1171072-2-andrej.picej@norik.com>
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

On Mon, 31 Jan 2022 09:05:23 +0100, Andrej Picej wrote:
> Add devicetree bindings for phyGATE Tauri board with phyCORE-i.MX6 ULL.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
