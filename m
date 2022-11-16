Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74A3862C4B5
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 17:37:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiKPQhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 11:37:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233296AbiKPQgn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 11:36:43 -0500
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F0CE391F7
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:30:48 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id l42-20020a9d1b2d000000b0066c6366fbc3so10722877otl.3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:30:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I9PfmWY0uAiItNeX2xBFnbcrticS+AKvQv7bWI/stRY=;
        b=CUc31HFqfr8YC9NgVljcA69Kfawu9zdUT1otvBnwE5o/yN07ek64szRtckZED56VEq
         D60kN4I3YsSv5puz4o7W3qSLfAJyhSlcEVmvgfcbc4l5xiyzETIgygJt+v1cUJqv6oEA
         qa646xD0gthE/9uaXEpGB70wHwajWtFwKQLBRiz+XwL52NPGtsAesZqXOtYw+fewR/0t
         8iOXYbCb1luZ7VS7H2VDKo5XvQ5AG7bb4f/N3aNS3VE+NONvtd1gj5J6XNtbsgf/61ZK
         UkTl441AM94cZ3WNO4OtEx79pVtjzzxz5KzwRrN98PGjfZ00vD4IJXA/rdNP37MmTBvz
         IK/g==
X-Gm-Message-State: ANoB5pkIAVkSHBBtPjN7IjVfS5rtufl53oaZnKD44zBKG7io9MzjTZFs
        TDcvCV3zbaOOk+7rqEjZ2w==
X-Google-Smtp-Source: AA0mqf5O2+rp6h4lVVO7YYV/JYyx+c/9Jmytq6W3y6Pk0+zdFYlsrAJDC3TOIr++2hjQObqbNDg3lQ==
X-Received: by 2002:a9d:6291:0:b0:66b:d68c:b16f with SMTP id x17-20020a9d6291000000b0066bd68cb16fmr11252032otk.63.1668616247254;
        Wed, 16 Nov 2022 08:30:47 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 64-20020aca0743000000b0034fc91dbd7bsm6251669oih.58.2022.11.16.08.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 08:30:46 -0800 (PST)
Received: (nullmailer pid 201468 invoked by uid 1000);
        Wed, 16 Nov 2022 16:30:48 -0000
Date:   Wed, 16 Nov 2022 10:30:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH v5 1/3] dt-bindings: imx6q-pcie: Handle various clock
 configurations
Message-ID: <166861624800.201410.15345843362002572722.robh@kernel.org>
References: <20221109002449.35936-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221109002449.35936-1-marex@denx.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 09 Nov 2022 01:24:47 +0100, Marek Vasut wrote:
> The i.MX SoCs have various clock configurations routed into the PCIe IP,
> the list of clock is below. Document all those configurations in the DT
> binding document.
> 
> All SoCs: pcie, pcie_bus
> 6QDL, 7D: + pcie_phy
> 6SX:      + pcie_phy          pcie_inbound_axi
> 8MQ:      + pcie_phy pcie_aux
> 8MM, 8MP: +          pcie_aux
> 
> Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Alex
> V3: - Duplicate clock-names maxItems to mx6sx and mx8mq compatibles
>     - Flatten the if-else structure
>     - The validation no longer works and introduces errors like these:
>       arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: clock-names:2: 'pcie_phy' was expected
> V4: - Reinstate minItems: for clock-names in main section, turn the
>       last two clock-names items into enums to cover all IP variants.
>     - Add another allOf entry for mx6q/mx6qp/mx7d clock-names list.
>     - Adjust clock maxItems in the allOf section.
> V5: - No change
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 73 +++++++++++++++++--
>  1 file changed, 68 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
