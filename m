Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AD154AFC51
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 19:58:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241169AbiBIS5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 13:57:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241369AbiBIS4t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 13:56:49 -0500
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14515C0401D2
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 10:56:47 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id i5so3496484oih.1
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 10:56:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TxAZL+Z4U6mKN9dq47U4h0290oyGCuVo1sScd7iLOoU=;
        b=tpPjr4f9DOtefEmrqIMr8H8+YVWS81x3wlAuZZyKeqMbZLBtve5e8ZBvQV0anHd2e2
         v2Ar4TKSAWzzuT3yaFz1j5gGS08qaI/Sc0Av1WDvlSh+SMnsxxg2IgxrLTIs6Jp9GXfR
         VHT6TgIcDKMFwVqGVfYawLfI2YvApTqqmheHfN8USSPNXpbQP0vXkkHBMQNX3IY/X04e
         Am+NUdfYbSNVzvV8zklVcSxqkxmAbju+61wCdJ36v+2c9p/K+GysvUKXLFpEcncrhvNa
         /NHgLjOTpaxScaRgl6tWC6SdhRO+wmD+Qvz7s+5beVi9qILYJ8GWxSZ/sffGjKlXEzlc
         k7Ig==
X-Gm-Message-State: AOAM532XHJFz4GvOSnvbKwOI4fVOIzT9twCojEpSTfGX5zYiUdWRO3V2
        /fSt4JamOd9f7yUBPT6usQ==
X-Google-Smtp-Source: ABdhPJw/7/qsplIF5pD5/KeocY9o3JW0TwPPA4t9x9UVOMPR101hcfMAT3ZxtFzyI+U/a+55dfm4VA==
X-Received: by 2002:a05:6808:3098:: with SMTP id bl24mr2016266oib.312.1644433006374;
        Wed, 09 Feb 2022 10:56:46 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id o14sm7084298otk.77.2022.02.09.10.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 10:56:45 -0800 (PST)
Received: (nullmailer pid 690287 invoked by uid 1000);
        Wed, 09 Feb 2022 18:56:44 -0000
Date:   Wed, 9 Feb 2022 12:56:44 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v5 23/23] dt-bindings: display: rockchip: Add binding for
 VOP2
Message-ID: <YgQObAT7WB9U4MMB@robh.at.kernel.org>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-24-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220209095350.2104049-24-s.hauer@pengutronix.de>
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

On Wed, 09 Feb 2022 10:53:50 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - Fix clk names in example
>     - Drop unnecessary assigned-clocks, assigned-clock-rates and assigned-clock-parents
> 
>     Changes since v3:
>     - drop redundant _vop suffix from clock names
> 
>     Changes since v3:
>     - new patch
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 140 ++++++++++++++++++
>  1 file changed, 140 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
