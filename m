Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B669D5EFF85
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 23:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbiI2V5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 17:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiI2V5M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 17:57:12 -0400
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F99D13D1E2
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:57:11 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id l5so2971255oif.7
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:57:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=x+Q9SkY/t8f6YCH6b1kEoFXwBT3u+UL9IwDrAo5lr0M=;
        b=lM2yZtLqDJOfwLLnJ99V/mejE2Hkqrej7RYMxhJMLCts4aZ2T4rsknfsxg6P3SPbN8
         f75/ymNchvAg7nW0pEAk52HuvmN3qkC5JSkVtdQFZEX+Q5jM4jsubkAAL8GowRUML7i+
         fEEvn7UyFa06JhsHbBM0e3mFm/SJgEhn3lCn+mLTNXhLbekPTEmxkQQVQBjG3OhKEzR8
         qvovCzh1XS8Tg9+KTCVh93kETFvkDnNosK5oE9E5gJjtL22i3ZOI1IjDla98Ahv+BJH0
         N/lpXi5nAdH3SfP6HAnIsPEmhscS2TjypImnLvUP5JbhZP2KaVfZkuvCv566WLjalAur
         9rKg==
X-Gm-Message-State: ACrzQf2sw0ez8gTzmPMpYvpwtK1ZSnlPsQNEx7WdTYsXIF5qWFs+N+P6
        5gSJ/9uA0duuRLa5kEDiGA==
X-Google-Smtp-Source: AMsMyM7nqwzi2KeUvC7ZWXcSo2fp12eGC/DnbC7wxOpemGUYP4RxavxcmcHP5Ksd8yZ1YKQYH5BBrA==
X-Received: by 2002:a05:6808:1583:b0:350:597e:8f17 with SMTP id t3-20020a056808158300b00350597e8f17mr2637957oiw.296.1664488630799;
        Thu, 29 Sep 2022 14:57:10 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6313000000b0065c3bb3c72esm202464otk.14.2022.09.29.14.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 14:57:10 -0700 (PDT)
Received: (nullmailer pid 2775743 invoked by uid 1000);
        Thu, 29 Sep 2022 21:57:09 -0000
Date:   Thu, 29 Sep 2022 16:57:09 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org,
        Patrick Delaunay <patrick.delaunay@foss.st.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: stm32: Add compatible string for
 DH electronics DHCOR Testbench board
Message-ID: <166448862913.2775698.5920003910831747959.robh@kernel.org>
References: <20220926212958.505561-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926212958.505561-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Sep 2022 23:29:57 +0200, Marek Vasut wrote:
> Add DT compatible string for DHCOR Testbench board, which is a testbench
> for testing of DHCOR SoM during manufacturing. This is effectively a
> trimmed down version of AV96 board with CSI-2 bridge, HDMI bridge, WiFi,
> Audio and LEDs removed and used as GPIOs instead.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Patrice Chotard <patrice.chotard@foss.st.com>
> Cc: Patrick Delaunay <patrick.delaunay@foss.st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
