Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 011AE4F9F1D
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:23:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237562AbiDHVZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233408AbiDHVZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:25:28 -0400
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F5E925EBC
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:23:23 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-d39f741ba0so11002801fac.13
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=H79gwitqcvzl2Y8ovBtHc/xIStjgsxp27OPyMTqCC08=;
        b=OCdmg3Fhupe0qooNbMZ+gesN5A0qUAScImBZyedhK0eACksN+hDMnQQZDwCNxRCLfv
         7S/uzZdbv2T2Aau7gaDd9XRMShSXYV1nyWXmBX4ZE/G2dTw9YLNU3WcAD3CANHNthQSS
         a/7tkLsJD5P3lZHql3G5ID0NDpcR/x8hJecxSVBHlhY9VGAYy5qU6PPLJWcaeV6nUb0y
         KrvLRp41XPpWE8P+6BIr2oUQnu26VnK0sYJtLHRWomyYw7gML4hm46sp2O3pE6vWbEoe
         4LNbAAQppB/Q/Qf5+JVDoNXibu8G4pGkAPBY8k9sMFxmZxOrRGgQ/GfhFFAQc2dNk7sA
         RTpQ==
X-Gm-Message-State: AOAM532hnp3xzLvkD+huACQrhW/Hs/xpsQZSD5rOGow4mffFUNfbaMmb
        K96dPtMysz3kKaUdesw8fg==
X-Google-Smtp-Source: ABdhPJxEoG40BYw0Bu+FWK04ett8NFCDEIvQyJRYNYjo+QxXyRsNd6cFHb1/oPU7aZyssScQjiAkZg==
X-Received: by 2002:a05:6870:ea85:b0:da:a935:f06c with SMTP id s5-20020a056870ea8500b000daa935f06cmr9520909oap.42.1649453002443;
        Fri, 08 Apr 2022 14:23:22 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e81-20020a9d01d7000000b005cdbabcbab0sm9421035ote.22.2022.04.08.14.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:23:21 -0700 (PDT)
Received: (nullmailer pid 4090884 invoked by uid 1000);
        Fri, 08 Apr 2022 21:21:42 -0000
Date:   Fri, 8 Apr 2022 16:21:42 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Subject: Re: [PATCH v2] dt-bindings: rcc: Add common clock properties
Message-ID: <YlCnZvdNbpVj/tch@robh.at.kernel.org>
References: <20220408004412.663880-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220408004412.663880-1-marex@denx.de>
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

On Fri, Apr 08, 2022 at 02:44:12AM +0200, Marek Vasut wrote:
> Add common properties appearing in DTSes (assigned-clocks and similar)
> to fix dtbs_check warnings like:
> 
> arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dt.yaml: rcc@50000000: 'assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> To: devicetree@vger.kernel.org
> Acked-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
> ---
> V2: Add AB from Gabriel
> ---
>  .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml          | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
> index a0ae4867ed27e..9bcf198bae170 100644
> --- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
> @@ -62,6 +62,12 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  clocks: true

How many and what are they?

> +  clock-names: true

Needs exact names.

> +  assigned-clocks: true
> +  assigned-clock-parents: true
> +  assigned-clock-rates: true

These are automatically added when 'clocks' is present.

> +
>  required:
>    - "#clock-cells"
>    - "#reset-cells"
> -- 
> 2.35.1
> 
> 
