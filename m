Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4945F54E8F7
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 19:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235648AbiFPR6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 13:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233571AbiFPR6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 13:58:05 -0400
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02AD6F590
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:58:03 -0700 (PDT)
Received: by mail-il1-f169.google.com with SMTP id z11so1436972ilq.6
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Vzh2Zm4AVli9IvG1hRT6/9kSvoSMME7E4kKTDugolos=;
        b=Xefg5fAMcHp+mRa65l3hPNCHcM2JXOEynJqbMiQfFdTGxqgZ4zsaiHqn149MTLm/yH
         kG9rqPGJykmm2AjtVj9H/8y2RSSNHGt0TtBaBixsZh0Xpvn5dADRWERyUtOfeGItaOlp
         lTLWxWFz5NmuJt3htG/9RquTWp8QJOkoLhsQmBdFfHkPbqEwR/H5SH1r0OdsUET4zhrx
         8kV3l3kKwP5+sKlZ1IpxceiR7m3sve8rW8M7AK1Hffdd7noa7+EOmQovd3jjGhsQaUo2
         QBY2UpLNQLM4eX7Nfw9Jx134F74jrUl1TgEuJimiAKPeFAUxVtKxMFq+bkGBl3EbS25t
         ekMA==
X-Gm-Message-State: AJIora+0lBXFCsDg1hhke4e5ynbvv/02bp+QdV9brFOC3+1I5HqLTxNG
        3Ze4deMfxyTQltkXCkjuLw==
X-Google-Smtp-Source: AGRyM1sVbtvnP0A8utta8zz6lTur5lT+U7sLerXzx10ITGxVc5NJfom9jFeeT9hnYKnW14CPgT5FmA==
X-Received: by 2002:a05:6e02:168f:b0:2d3:c51d:7f69 with SMTP id f15-20020a056e02168f00b002d3c51d7f69mr3622386ila.64.1655402282173;
        Thu, 16 Jun 2022 10:58:02 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id c4-20020a6bcc04000000b006696754eef5sm1414438iog.13.2022.06.16.10.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 10:58:01 -0700 (PDT)
Received: (nullmailer pid 3725093 invoked by uid 1000);
        Thu, 16 Jun 2022 17:58:00 -0000
Date:   Thu, 16 Jun 2022 11:58:00 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Patrice Chotard <patrice.chotard@st.com>,
        Patrick Delaunay <patrick.delaunay@st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/7] dt-bindings: arm: stm32: Add compatible string for
 DH electronics DHCOR DRC Compact
Message-ID: <20220616175800.GA3721641-robh@kernel.org>
References: <20220613095328.5661-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220613095328.5661-1-marex@denx.de>
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

On Mon, Jun 13, 2022 at 11:53:22AM +0200, Marek Vasut wrote:
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
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 8b31565fee591..17366d9cf15bf 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -61,8 +61,12 @@ properties:
>  
>        - description: DH STM32MP153 SoM based Boards
>          items:
> -          - const: dh,stm32mp153c-dhcom-drc02
> -          - const: dh,stm32mp153c-dhcom-som
> +          - enum:
> +              - dh,stm32mp153c-dhcom-drc02
> +              - dh,stm32mp153c-dhcor-drc-compact
> +          - enum:
> +              - dh,stm32mp153c-dhcom-som
> +              - dh,stm32mp153c-dhcor-som

Seems like dh,stm32mp153c-dhcor-som should be a new entry? Unless that 
plus dh,stm32mp153c-dhcom-drc02 is valid?

>            - const: st,stm32mp153
>  
>        - items:
> -- 
> 2.35.1
> 
> 
