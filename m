Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEFF85EB0EE
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 21:08:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbiIZTIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 15:08:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231192AbiIZTIh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 15:08:37 -0400
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 138F72250A
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:08:36 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id z18-20020a9d65d2000000b0065c3705f7beso858136oth.9
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:08:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=Eva7tV3JKu5rF/xnYPmEPYtTnQvhb+GH3GvRSLwEx/Q=;
        b=EgfjJ+ZMTa+Zp9SvE/ESQ8quexbvKzo/qI7T8Ihm1/TnxQbs/eiH3/CZ/8kmKZdlEW
         7Z/mV+xpEHoCGU4jp9Ds2JLUHajNq/OOzVVJABEWO21BSARP2ccOZUFWwxE/YZhXFDHt
         ITnbiiKBZnpbzRl5A1NG+ZbLJCC9aa/VTLu2tbqBo5rXk8lMaasVb1weyPW2msFuTlH6
         BYP0jnYmloI4HGamXHJWKDkobT+3N9MI9wWzcqZAZ/IPxgbEEdou3f5oIO73UjGgubut
         YTnxh5cX+CUmJkdlw9zUOvfiEZKP91CiGBVswO8VMjiuu2q1Yy70DWtM6ln9RVQbOa5U
         IDOw==
X-Gm-Message-State: ACrzQf29NUVfNKyuBBsPfu9k1W6A5Xp3/vFy35zL74806rVGNy8CQ9O1
        BmhJ0ya60Mg/rxLdO0KcZQ==
X-Google-Smtp-Source: AMsMyM4+D5Ph9SkZDUpPOqg62ci6DPpUTLinoyKwctvE6MOOEFOkRFlgwMdzu2h8lQhP/LNABBhbBA==
X-Received: by 2002:a9d:6458:0:b0:657:90f0:9c49 with SMTP id m24-20020a9d6458000000b0065790f09c49mr10707927otl.50.1664219315251;
        Mon, 26 Sep 2022 12:08:35 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t11-20020a056808158b00b00350a8b0637asm7688759oiw.47.2022.09.26.12.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 12:08:34 -0700 (PDT)
Received: (nullmailer pid 2605722 invoked by uid 1000);
        Mon, 26 Sep 2022 19:08:34 -0000
Date:   Mon, 26 Sep 2022 14:08:34 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     sr@denx.de, krzysztof.kozlowski+dt@linaro.org,
        arinc.unal@arinc9.com, tsbogend@alpha.franken.de,
        devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v3] dt-bindings: i2c: migrate mt7621 text bindings to YAML
Message-ID: <20220926190834.GA2605301-robh@kernel.org>
References: <20220920052050.582321-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220920052050.582321-1-sergio.paracuellos@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Sep 2022 07:20:50 +0200, Sergio Paracuellos wrote:
> SoC MT7621 I2C bindings used text format, so migrate them to YAML.
> There are some additions to the binding that were not in the original
> txt file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> properly match both dts nodes in tree we need to add to the schema
> 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> 'reset-names' use 'i2c' as string so maintain that as const in
> the schema. Also, Properly update MAINTAINERS file to align the
> changes.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v3:
> - Address review comment from Krzysztof:
>     - Rebase onto last kernel version.
>     - Drop address-cells and size-cells.
>     - Properly explain deviations from txt in commit message.
>     - Drop reset-names as required property.
>     - Squash previous series two commits in one to be bisectable.
> 
> Changes in v2:
> - Maintain current maintainer Stefan Rose as listed in kernel MAINTAINERS file.
>  .../devicetree/bindings/i2c/i2c-mt7621.txt    | 25 --------
>  .../bindings/i2c/mediatek,mt7621-i2c.yaml     | 61 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 62 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> 

Applied, thanks!
