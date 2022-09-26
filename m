Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2A45EADA8
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 19:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbiIZRJb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 13:09:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230170AbiIZRJN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 13:09:13 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A692FFE6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:16:39 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-127dca21a7dso9839280fac.12
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=XF+ovS4VMkmGRNYWO5YxgiK+cFOcRW88wTtc33uE75k=;
        b=aGeC4UVC0lOmeHUIEHU24y6/KCpnZbpftAEg2vRAUA11q2COPWirGinlOilqMJ/zta
         IAGfxBoWa433poY8GoKghvaWS/gi4kOBtl1GXU00ALZRql3Ol0IW0E0HPmRtScEAD9zA
         imzwwZyBFrODTcEXLgLhAgYQ7i9fTVIUCjMg6u63f8bMnh8YnRnqgwnag6KAu6SSlm/7
         eTjjMW95akS5CglQTnT5FrVG0Ua33ip+vXoU+lEiAypR0bpGb14Y0FtNKrCyYWXSXUTK
         LRtDv4Gm88tkRqee/kypFlGi8z1bUJKJmobWsSevNWDISEdkhWW/wGZmwciCSloRszmo
         hI8g==
X-Gm-Message-State: ACrzQf1GerwvvFs9XunbJS6/73J7vnAudR8rWV4Pc10E3geJSoxrJxRZ
        PRb6cPZM1nwV+i2WctkctQ==
X-Google-Smtp-Source: AMsMyM6doo8R9a8sR1OXZoD1/2rzy4wv06DZ1BoKXZRmz5Nqo61znsYvpB0HSz8otuuwJ1/jeBnOVA==
X-Received: by 2002:a05:6870:608e:b0:12b:c0de:bc9d with SMTP id t14-20020a056870608e00b0012bc0debc9dmr12981348oae.52.1664208999121;
        Mon, 26 Sep 2022 09:16:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e2-20020a056808148200b0034fddfc5922sm7431416oiw.36.2022.09.26.09.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 09:16:38 -0700 (PDT)
Received: (nullmailer pid 2133695 invoked by uid 1000);
        Mon, 26 Sep 2022 16:16:38 -0000
Date:   Mon, 26 Sep 2022 11:16:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com,
        sr@denx.de, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: watchdog: migrate mt7621 text bindings
 to YAML
Message-ID: <20220926161638.GA1989274-robh@kernel.org>
References: <20220920051617.582025-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220920051617.582025-1-sergio.paracuellos@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 20, 2022 at 07:16:17AM +0200, Sergio Paracuellos wrote:
> Soc Mt7621 Watchdog bindings used text format, so migrate them to YAML.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v2:
> - Rebase onto last kernel version.
> - Add Krzysztof Reviewed-by tag.
> 
>  .../watchdog/mediatek,mt7621-wdt.yaml         | 33 +++++++++++++++++++
>  .../bindings/watchdog/mt7621-wdt.txt          | 12 -------
>  2 files changed, 33 insertions(+), 12 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt

You will want resend to the watchdog maintainers if you want this 
applied. IOW, use get_maintainers.pl.

Rob
