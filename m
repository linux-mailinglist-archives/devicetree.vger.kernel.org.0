Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB7FA5399B4
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 00:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348522AbiEaWrD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 18:47:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348516AbiEaWrB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 18:47:01 -0400
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9866EB1D8
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:46:59 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id y131so354348oia.6
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=DZZtk3mmH2Uftva4nnZWRRASwAL7J0/4OgI8K1pv32U=;
        b=o5p5AEAeNPJWuUnYSTHIIiKNnNPLWgiGtJ7bHblOgi8MKIOhYDirTiHo+emG/QfUje
         apdmEOfYqh2woDnsDoz2PNQXCoFNoqiw1QNbXzAt/cnKovoRUXy3cL39MiKchYrsX/ew
         138fSGUs2LGOA2ktPtafdDmoCeyD9ZTD7FkfNAbrw+tWs3LU6nACJv6eBVR+SqZuEGnr
         n+zvb19vclkrNtODDWOYglLmKcZ9ocL/iqoWdIvLQw//g9ZSruXpSJ9f0bCy2LTo4K48
         Jt54Ri/MohiCuY06oWrr01XGRAHQV4S8ugkGUapBuL/7Rt5zKTFxKBWUZjOKCChAkWzX
         Zvcw==
X-Gm-Message-State: AOAM5324Gxs3Lv4lB5BLEIRAeEke8bP1eJAAwI9gjmoJ8NnNfwsCTcwm
        /fQLDoTgHIaHY58i1KSuAQ==
X-Google-Smtp-Source: ABdhPJyahNtzfgfQNEpLagL+4xN0bn8ym/sU1ceRtzVz3hVUAqExMfrao8LUp3cIoB/yoY5Qot63nA==
X-Received: by 2002:aca:1e04:0:b0:325:473:4038 with SMTP id m4-20020aca1e04000000b0032504734038mr13707953oic.159.1654037218851;
        Tue, 31 May 2022 15:46:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b30-20020a9d60de000000b006060322125dsm7005222otk.45.2022.05.31.15.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 15:46:58 -0700 (PDT)
Received: (nullmailer pid 2476571 invoked by uid 1000);
        Tue, 31 May 2022 22:46:54 -0000
From:   Rob Herring <robh@kernel.org>
To:     Chanho Park <chanho61.park@samsung.com>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-2-chanho61.park@samsung.com>
References: <20220531121913.48722-1-chanho61.park@samsung.com>        <CGME20220531121922epcas2p15861df56f7253265c591a88244520446@epcas2p1.samsung.com> <20220531121913.48722-2-chanho61.park@samsung.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as phandle-array
Date:   Tue, 31 May 2022 17:46:54 -0500
Message-Id: <1654037214.485315.2476567.nullmailer@robh.at.kernel.org>
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

On Tue, 31 May 2022 21:19:10 +0900, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml:46:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

