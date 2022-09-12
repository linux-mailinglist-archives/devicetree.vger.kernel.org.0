Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 840405B61DE
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 21:50:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbiILTuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 15:50:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbiILTuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 15:50:00 -0400
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C50115A22
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 12:49:59 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1225219ee46so26275617fac.2
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 12:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=WOtGK76hRewU1QooFGTAv4sMui+JsERKP+VFBuwDcNE=;
        b=01survgoZsr1Fn/lz9D3g2qzYF+eN5ewMDQwt5rztC2ngh/xtuAN8bmL0ckegfAAsx
         33FVgejMi8niUI6XxM1xEFaUJsrcYlmzYxrQhi5xA5AM/x1rec2YVbQHRDBc4hmnIyDe
         PvVjC14GljMcTz6DEvQ2kdA8YNGRrT8GDZC31fg/gaLeLYeS6bu1KmaKsppvDea4BzLV
         L79benJaCplneSXox2+uaAsZqXINOj2cjNbBX5qOFML998GmtuWxwSOOVxxzQFAyLqZP
         OTwHLR9wG5qdduw9kXrqCzlTXfIiD0rJqdY1qIv46fCqMsp82CbN7YfeHdVw+S23jMyv
         /v8g==
X-Gm-Message-State: ACgBeo2npoSgkBY2i8UCwuoSu0zOFf7U0s7vbR2525tJKU06yIfMe3oM
        C5zUolevARp/Fim7ZugvNg==
X-Google-Smtp-Source: AA6agR7Iy/SIPE6vlqf90Htx5gWZAzMAyaiURTrk8MO8EPAXdDWJI+/GfdC3pq3qc2RMgABz6ZQj3g==
X-Received: by 2002:a05:6870:7089:b0:11e:a4e8:e669 with SMTP id v9-20020a056870708900b0011ea4e8e669mr5164oae.156.1663012198534;
        Mon, 12 Sep 2022 12:49:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j16-20020a056870169000b0011e73536301sm6002348oae.52.2022.09.12.12.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 12:49:58 -0700 (PDT)
Received: (nullmailer pid 1723465 invoked by uid 1000);
        Mon, 12 Sep 2022 19:49:56 -0000
Date:   Mon, 12 Sep 2022 14:49:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: Add 2500BASE-X and 10GBASE-R
Message-ID: <20220912194956.GA1718874-robh@kernel.org>
References: <20220902213721.946138-1-sean.anderson@seco.com>
 <20220902213721.946138-2-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220902213721.946138-2-sean.anderson@seco.com>
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

On Fri, Sep 02, 2022 at 05:37:14PM -0400, Sean Anderson wrote:
> This adds some modes necessary for Lynx 10G support. 2500BASE-X, also
> known as 2.5G SGMII, is 1000BASE-X/SGMII overclocked to 3.125 GHz, with
> autonegotiation disabled. 10GBASE-R, also known as XFI, is the protocol
> spoken between the PMA and PMD ethernet layers for 10GBASE-T and
> 10GBASE-S/L/E. It is typically used to communicate directly with SFP+
> modules, or with 10GBASE-T phys.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> (no changes since v4)
> 
> Changes in v4:
> - New
> 
>  include/dt-bindings/phy/phy.h | 2 ++
>  1 file changed, 2 insertions(+)

A corresponding update to the schema for phy-type[1] will be needed. A 
GH PR or patch to devicetree-spec@vger.kernel.org is fine.

Acked-by: Rob Herring <robh@kernel.org>

Rob

[1] https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/phy/phy-provider.yaml#L19
