Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 726946B1649
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 00:12:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbjCHXMM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 18:12:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230168AbjCHXL4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 18:11:56 -0500
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C357DD5168
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 15:11:28 -0800 (PST)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-176b48a9a05so552756fac.0
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 15:11:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678317084;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZpzTxP9pW1iBHQk9wRx6hMBRNY1p1JwGR3VDx2jwqk=;
        b=Rbn1TD/FK3h5PFEjHIvs9bmYBeqcVUBOcdFUIiCTwnJkd+GSna+qzzLdK2xa76E3cy
         p8b2fj/jiTFlXSW2TJQ47RMjQDs3uSizAlw+2VY4CbzDhd10x4hhcj4m7C94Mm321Ruq
         G5/jsaWuxSKN5+uQJ+Bf/sBNePRqB5zyDJ+KZ/jK3OyuXH0nKWhWtUOZjNyBvQU0kdUq
         IDknOeuo+8TKtpl4DLmIoE5t+o9oDz1CbJiCNIKMxRdUa7M0Ch9k48F9pDK9U4TtAJMP
         R3MHzdAYkji+Zu1yHXejpX4Jt4Oh2nJeI90mgYzNJTUBDt3JdFrqRgiJXpQ7hBYAolCu
         xZnw==
X-Gm-Message-State: AO0yUKXAln84tPx5WMsO+UPfsIneYcsoKqV1nKZX0CjRErobpUiW1RXM
        yc8RoGtLpi1/nCIOTqbJag==
X-Google-Smtp-Source: AK7set+GQezD3s44J8QbgIKux6j6r+1ND9bRslkRgIszTGTYlsmg8oIPSAKZbv6hx45+kb2D2todPQ==
X-Received: by 2002:a05:6870:b251:b0:176:26fe:d473 with SMTP id b17-20020a056870b25100b0017626fed473mr12265865oam.12.1678317084085;
        Wed, 08 Mar 2023 15:11:24 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t21-20020a0568301e3500b0068657984c22sm2019932otr.32.2023.03.08.15.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:11:23 -0800 (PST)
Received: (nullmailer pid 4048309 invoked by uid 1000);
        Wed, 08 Mar 2023 23:11:23 -0000
Date:   Wed, 8 Mar 2023 17:11:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linuxppc-dev@lists.ozlabs.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        Madalin Bucur <madalin.bucur@nxp.com>
Subject: Re: [PATCH v10 04/13] dt-bindings: gpio-mmio: Add compatible for
 QIXIS
Message-ID: <167831708254.4048249.12955206935149233096.robh@kernel.org>
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-5-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230306191535.1917656-5-sean.anderson@seco.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 06 Mar 2023 14:15:26 -0500, Sean Anderson wrote:
> NXP has a "QIXIS" FPGA on several of their reference design boards. On
> the LS1088ARDB there are several registers which control GPIOs. These
> can be modeled with the MMIO GPIO driver.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v10:
> - New
> 
>  .../devicetree/bindings/gpio/gpio-mmio.yaml        | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

