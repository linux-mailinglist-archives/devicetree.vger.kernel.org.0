Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3F15626E9
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 01:19:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232215AbiF3XMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 19:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232223AbiF3XMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 19:12:48 -0400
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B43A6205D7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:12:37 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id k7so358028ils.8
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iHugPUU0MDR5+K9E0jP2XLgfCe7UY26FEf9lftsm730=;
        b=sPMxef3r+mCgrNEwTZBNQAAbDmZ+hQhOqDrzSwkRbv4bGQ5fguz6cyzXf+hafzFZ1E
         xJjjjOf9GQmA1snw8KgnbUARskt/J0mbHfJ7KMR0uEhvERQ1YOy0V9q+QDPD6s3wtKUx
         1O4XKlLlYIvQjwwrXYGJmvLA2WCi5QIKY9ZdKsXAuSHpBEJUSqz60TKQHIC1d2DgsBho
         q8N6mmghwoJDdNPMObi0GnENyztckWhU/iDJHYsysbJcVn7X2qJZkWTfSUvnoTXzTZ3/
         8rJbWGKIRBQPY6BAsisqBwvj1HbCvdEamsgpLcKwm2zo5E16t7SkZlFBwZ18U+b9D1bs
         63mA==
X-Gm-Message-State: AJIora+5GP6xKvGsq5hilDe8S2KYO/bnVkpgIRfZ72cL9Qb2hhgx9rhl
        3skDxB4qYYt2iniMaan+IA==
X-Google-Smtp-Source: AGRyM1tT5CG0yLSSc/va+12RRrHObFuWAOcrGlHu0n3+pHcA/vXqxOczeWF54MgY48MhFLDcGe3lww==
X-Received: by 2002:a92:d24c:0:b0:2d9:2b03:10d8 with SMTP id v12-20020a92d24c000000b002d92b0310d8mr7092646ilg.117.1656630756932;
        Thu, 30 Jun 2022 16:12:36 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x8-20020a6bd008000000b006755ae0679bsm4256075ioa.50.2022.06.30.16.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 16:12:36 -0700 (PDT)
Received: (nullmailer pid 3507068 invoked by uid 1000);
        Thu, 30 Jun 2022 23:12:34 -0000
Date:   Thu, 30 Jun 2022 17:12:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Patrick Delaunay <patrick.delaunay@st.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Rob Herring <robh+dt@kernel.org>,
        Patrice Chotard <patrice.chotard@st.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/7] dt-bindings: arm: stm32: Add compatible string
 for DH electronics DHCOR DRC Compact
Message-ID: <20220630231234.GA3506992-robh@kernel.org>
References: <20220626002105.198854-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220626002105.198854-1-marex@denx.de>
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

On Sun, 26 Jun 2022 02:20:59 +0200, Marek Vasut wrote:
> Add DT compatible string for DH electronics STM32MP15xx DHCOR on DRC Compact
> carrier board into YAML DT binding document. This system is a general purpose
> DIN Rail Controller design.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Split DHCOM and DHCOR SoM entries
> V3: No change
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
