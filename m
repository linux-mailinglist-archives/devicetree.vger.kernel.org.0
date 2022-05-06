Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D94E851E273
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:41:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1444814AbiEFWnq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355771AbiEFWnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:41 -0400
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D55E5AA48
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:39:57 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id y63so9023454oia.7
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=h6f3Y9vrDdYYFTDNJT9zpurZsh7x1xQsR89Awh+MrAI=;
        b=zSum5+pCFN/gPBEb+MUnmu0lR9Sj6BcZSjiV6983Gj6fZcXA1xyZf3HN2gMpZBkr0r
         59Knq0bYz3z5qjHWfMs3LufjQ4X+G6xhIkXMdFJeApX05Y3tIdhDWW3s3Vp2/rWbgaM4
         FVQVL+UikzI7wRQWCQVh/5MOMxkc39CoG/egA+9XODyNKCSLf0FMkYl8yfFXelJ6n2zh
         WES6iM9sPXRLUyvAwOTJWZQCN2jJyzEd5WmyHRKydEYHwRBwIWgqONSKMEjSqTlRmeYI
         9n5FaAHnYXokutT3pbJi3r7XpT0cFc7Tmr1w+VKrewSvqLGegk9gVcUe4h9A2lCD7I9X
         5tdg==
X-Gm-Message-State: AOAM531QCJMZdKEY4VDhp/vcC8Fp6evfdKkGYToWGKbJh9vUYEc/PAFO
        2QcYQ5mP4er/tshsLTFqvF+L0z/J2g==
X-Google-Smtp-Source: ABdhPJxYXgg20GjMyoMfP6GFwskmlW2eE/9SxYDmtFmaVd+42Ppf9qzFfTkX/9IUh8dQNSNxLfRU/w==
X-Received: by 2002:a05:6808:e89:b0:2f7:34db:6915 with SMTP id k9-20020a0568080e8900b002f734db6915mr2475740oil.284.1651876796724;
        Fri, 06 May 2022 15:39:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r13-20020a9d5ccd000000b005b22a0d826csm2056138oti.1.2022.05.06.15.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:39:56 -0700 (PDT)
Received: (nullmailer pid 2407423 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Will Deacon <will@kernel.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Robin Murphy <robin.murphy@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>
In-Reply-To: <20220506140533.3566431-10-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com> <20220506140533.3566431-10-andre.przywara@arm.com>
Subject: Re: [PATCH v2 09/11] dt-bindings: display: convert Arm HDLCD to DT schema
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.696398.2407422.nullmailer@robh.at.kernel.org>
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

On Fri, 06 May 2022 15:05:31 +0100, Andre Przywara wrote:
> The Arm HDLCD is a display controller that scans out a framebuffer and
> hands a signal to a digital encoder to generate a DVI or HDMI signal.
> 
> Convert the existing DT binding to DT schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/display/arm,hdlcd.txt | 79 ----------------
>  .../bindings/display/arm,hdlcd.yaml           | 89 +++++++++++++++++++
>  2 files changed, 89 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/arm,hdlcd.txt
>  create mode 100644 Documentation/devicetree/bindings/display/arm,hdlcd.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


hdlcd@2a110000: 'port' is a required property
	arch/arm/boot/dts/vexpress-v2p-ca5s.dtb

hdlcd@2b000000: 'port' is a required property
	arch/arm/boot/dts/vexpress-v2p-ca15_a7.dtb
	arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dtb

