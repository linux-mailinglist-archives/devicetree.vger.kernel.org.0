Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48854652623
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 19:21:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233220AbiLTSVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 13:21:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbiLTSV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 13:21:29 -0500
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA8626264
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:21:27 -0800 (PST)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-144bd860fdbso16456027fac.0
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:21:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZDT69BkMgS1ufb9QGMpPvJfUJp4V81FFwfzz64wqN0=;
        b=4I23jONjCuaDFE605B0XKnv8zqVLzGEkG6w5ulbo0YQIfa7+oywJlD8jgfHdcBArO3
         exxLP5kAwgs1wRickhRrUU04Vs3ZZvBq3qxRmbEWInZSxwhCFv52ej7DsROkhgp7fRPF
         PdgnZjOLCfnyQcCQiDX4UVpeIpOKInoGLA18Mo9sQniCoAWjHjaJQucuRJn5eiGtzVa4
         nAPJesmA6bhJ+72TvqLsD+EapeMJOrrni1e6QUrfxp2tSz05mkwic8UwT4F/LbiXIHHf
         6CBk373ztfTZsJDZpEOWEy3C+sBUp0VCpSY8ba9alWDjSQ7YwxPvA6D1lrplQEgYnIq2
         ERmQ==
X-Gm-Message-State: ANoB5pniDd91Aun86TsCz/zURa7RUiz7kHTyGKQDhLZYiX16i0Ro39ZM
        l5tcm3yTK1fZn2CRqY/yCw==
X-Google-Smtp-Source: AA0mqf7Q4eZrgq+NP4KvXJf91fyaf1Lcmk8bAS4SFYoyNaOLa0cYasaVxutbCgSlUYO73Jc3Wyq2Kg==
X-Received: by 2002:a05:6870:390c:b0:144:4246:9f3a with SMTP id b12-20020a056870390c00b0014442469f3amr26539660oap.17.1671560487102;
        Tue, 20 Dec 2022 10:21:27 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k48-20020a4a94b3000000b004a0918698f9sm5298797ooi.17.2022.12.20.10.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 10:21:26 -0800 (PST)
Received: (nullmailer pid 860739 invoked by uid 1000);
        Tue, 20 Dec 2022 18:21:25 -0000
Date:   Tue, 20 Dec 2022 12:21:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@denx.de>, Peng Fan <peng.fan@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: Move MX8Menlo board to i.MX8M
 Mini Toradex Verdin SoM entry
Message-ID: <167156048507.860678.14154644174455603947.robh@kernel.org>
References: <20221216210244.591865-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216210244.591865-1-marex@denx.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 16 Dec 2022 22:02:41 +0100, Marek Vasut wrote:
> The MX8Menlo board is based on i.MX8M Mini Toradex Verdin SoM
> which results in compatible string in the form:
> "vendor,custom-board", "toradex,som-nonwifi", "toradex,som", "fsl,soc"
> Move the binding entry so this quadruplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Rework the patch
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
