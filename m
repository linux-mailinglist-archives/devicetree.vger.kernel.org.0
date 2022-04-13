Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B33AA50022E
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 01:00:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236001AbiDMXDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 19:03:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbiDMXDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 19:03:03 -0400
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FC8D252A5
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 16:00:41 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id e25-20020a0568301e5900b005b236d5d74fso2220497otj.0
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 16:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=h+3WZG3nR/oeeS3lXfYkS2bA2pF1sEx1gmB8em6uge4=;
        b=CZXEAyDODxH0Or4g+0DiN3Pc5UnER3BNoYNV7CtpPh3bjq60lTqO5fxOc5qujCPK5O
         348CFK+cISkcfsr/5dr2uFJfgpPzCdxlR8NmWiiq+mp0IjUfvu2tPBUSKQIFMFnXpgoB
         qSxZyviARw0xVkjcsZcg91sbQVHoaEeObPlXVgPuyyIKT4zKJvG5DIik6cfXkAw25cnI
         Enb6p2kuTdsTTianavCyHen89MAAd7dOxcxDQ9aJU+gWcdVChTA+XGcXAJSbgLA7rn7o
         K3Lek3X9y/xkNDymlLyghMp2ZElYerBCkJo0R8l/ZHfv3OzXPuOZRXwqpDYo5f0I9gao
         Cgew==
X-Gm-Message-State: AOAM532nbbW304cK4BSXNhZ4DmuNBocvSdlmLarywFCRaiY8zlmL1JOE
        q+Au4EUNRir9Ssz2tfjThzUG5w+Xjw==
X-Google-Smtp-Source: ABdhPJzpn7bfqRJd/RuhxMebpXjAKgHNWB6uHW4sTw9opcKOMrvpnPMCYJ3ahh93UZ+iomk/8hmcsw==
X-Received: by 2002:a05:6830:1383:b0:5e6:f765:933 with SMTP id d3-20020a056830138300b005e6f7650933mr4817867otq.372.1649890840781;
        Wed, 13 Apr 2022 16:00:40 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j5-20020a4a9445000000b00329dab1a07fsm114248ooi.17.2022.04.13.16.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 16:00:40 -0700 (PDT)
Received: (nullmailer pid 4097896 invoked by uid 1000);
        Wed, 13 Apr 2022 23:00:39 -0000
Date:   Wed, 13 Apr 2022 18:00:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
        robh+dt@kernel.org, Alexandre Torgue <alexandre.torgue@foss.st.com>
Subject: Re: [PATCH v3] dt-bindings: rcc: Add optional external ethernet RX
 clock properties
Message-ID: <YldWFzbORDGACClA@robh.at.kernel.org>
References: <20220410220514.21779-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220410220514.21779-1-marex@denx.de>
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

On Mon, 11 Apr 2022 00:05:14 +0200, Marek Vasut wrote:
> Describe optional external ethernet RX clock in the DT binding
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
> V3: - Describe the optional clocks and clock names
>     - Update commit message
> ---
>  .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml        | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Applied, thanks!
