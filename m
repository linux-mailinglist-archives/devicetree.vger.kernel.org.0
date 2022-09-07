Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41E915B0E2E
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 22:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiIGUbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 16:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230087AbiIGUbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 16:31:18 -0400
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 884D1BC807
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 13:31:15 -0700 (PDT)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1280590722dso5464530fac.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 13:31:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=jjuiP2R+Pw7FNdmdH5wn9HpCrjiawKnPFUotbcuTnNQ=;
        b=UTAmo+TXLlw2DNeD5igmQn77JcdU8UMneNaT8sE+7AULT0TBXoEYk/2VXYjhLfwRtJ
         Yzm7ZXYZEPMQNatP7DLuVPi5SpVXYacb+UYrVfejLaQCSaCBF0CoAe1CwcTZ+dYUMKMZ
         4qt3VD9vOagTDtTmu8/elOaiD09wOmgfiPUJA/XWPAvNVdThsOfn/j6By/ATCp1edkmC
         pefLR4/vJj8eLAm9yWXsolVHOfuwQsatDi/47SeBC8k37B2Kt8tmYaPFiNCRmhEI81wD
         YW53G4y2xVO/8zox5SXG7xiNT7grO+VklNAoPupOOg07iq23ZszwVfKRKlzR6zezbhpB
         yeNQ==
X-Gm-Message-State: ACgBeo0jcw+qT6O6YOdro9MbpnrnpSYey6hv6z3T6q3iV2CCbz+WZGnD
        QA9hJBNUKdEbLP4J/XBcVw///QrGfA==
X-Google-Smtp-Source: AA6agR5iQBiw96LLBG+yYQ1WTdCGYTO5BBfgXArlY3P1hUHZekgodz0F+uXsSctRACZ51O8HHfcF1Q==
X-Received: by 2002:a05:6808:170b:b0:333:53cf:8022 with SMTP id bc11-20020a056808170b00b0033353cf8022mr119025oib.28.1662582674606;
        Wed, 07 Sep 2022 13:31:14 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id cy16-20020a056870b69000b001227148da8csm2215769oab.36.2022.09.07.13.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 13:31:14 -0700 (PDT)
Received: (nullmailer pid 286873 invoked by uid 1000);
        Wed, 07 Sep 2022 20:31:13 -0000
Date:   Wed, 7 Sep 2022 15:31:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for Innocom
Message-ID: <20220907203113.GA230820-robh@kernel.org>
References: <20220901112040.1471879-1-s.hauer@pengutronix.de>
 <20220901112040.1471879-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220901112040.1471879-2-s.hauer@pengutronix.de>
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

On Thu, Sep 01, 2022 at 01:20:38PM +0200, Sascha Hauer wrote:
> This adds a vendor prefix for InnoComm Mobile Technology Corp.,
> see https://www.innocomm.com/.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2f0151e9f6bef..631a9a7b0cfa1 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -601,6 +601,8 @@ patternProperties:
>      description: Ingenic Semiconductor
>    "^injoinic,.*":
>      description: Injoinic Technology Corp.
> +  "^innocom,.*":

Should be 2 'm': innocomm

> +    description: InnoComm Mobile Technology Corp.
>    "^innolux,.*":
>      description: Innolux Corporation
>    "^inside-secure,.*":
> -- 
> 2.30.2
> 
> 
