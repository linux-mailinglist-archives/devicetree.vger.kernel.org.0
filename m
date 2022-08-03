Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A485589475
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 00:37:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236511AbiHCWhO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 18:37:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbiHCWhO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 18:37:14 -0400
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49C1B22BE3
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 15:37:13 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id c185so13983034iof.7
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 15:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=4pz4MBcrSjB8kB9MOPhMov58tyMfLBBMG6H3f2eOpjw=;
        b=t+CwDWg1/dqiAodC/o8N4smSg1MADqjbLCWPJwpRreEKsjJMM337TpHd9wBe1iiXY9
         jdTOJMiVID6LsoqfYebnkGAHqEVG62ODWkd0l4LnbyKvGEEBs04HvgHpo1fQ9jfKhg3A
         MXLraI3b1oljCgJ8qip6l6oML6oJT4f3pY/NOQcNuwOUCGvnYZYhUA+U1dtD/d5PO5Uu
         rjmc2um9KSpHisEk5JzqOCRQuoQTetaO+FfKxXxbu3EtMQS5Sqz1IJpwSiGrzSLeGgNC
         2pf1PM1Gnd7ohDC9089bbS2SwoPNVnzGeWCJtU9nyJlW7cf3/0BBJBVw5VY7U+zqBFKk
         ZhEg==
X-Gm-Message-State: AJIora9TvOISj3phQsQH/+fKxVYpnP+63O1iKYF1cQhfuAMvQq8J+ktj
        Dx3dzQ3eR3Wjo1DzC8HK2jVAZkIjVA==
X-Google-Smtp-Source: AGRyM1vIT2vAplfGeDRkhgbxS2UqKelL062MMS4BX6biQYqaVsZYCUdK1voS1xq8V8TPBXgUgPtQ7w==
X-Received: by 2002:a05:6638:2410:b0:341:5daa:2bc9 with SMTP id z16-20020a056638241000b003415daa2bc9mr11576771jat.306.1659566232542;
        Wed, 03 Aug 2022 15:37:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id i2-20020a026002000000b0033f8af36a96sm8186583jac.165.2022.08.03.15.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 15:37:12 -0700 (PDT)
Received: (nullmailer pid 2745689 invoked by uid 1000);
        Wed, 03 Aug 2022 22:37:10 -0000
Date:   Wed, 3 Aug 2022 16:37:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support
 for external REFCLK
Message-ID: <20220803223710.GA2744605-robh@kernel.org>
References: <20220801131747.183041-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220801131747.183041-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 01, 2022 at 03:17:46PM +0200, Marek Vasut wrote:
> The ICN6211 is capable of deriving its internal PLL clock from either
> MIPI DSI HS clock, external REFCLK clock, or even internal oscillator.
> Currently supported is only the first option. Document support for
> external REFCLK clock input in addition to that.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org
> ---
>  .../bindings/display/bridge/chipone,icn6211.yaml         | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> index 4f0b7c71313c3..18563ebed1a96 100644
> --- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> @@ -24,6 +24,15 @@ properties:
>      maxItems: 1
>      description: virtual channel number of a DSI peripheral
>  
> +  clock-names:
> +    const: "refclk"

Drop quotes.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>
