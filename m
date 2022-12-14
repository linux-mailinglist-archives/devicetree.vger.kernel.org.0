Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1EFD64CCD1
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 16:05:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238502AbiLNPFa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 10:05:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237778AbiLNPF3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 10:05:29 -0500
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D2D2715E
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 07:05:28 -0800 (PST)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1447c7aa004so16897705fac.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 07:05:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPntG3i9d1CkuYh94mewfgIcwECQqTOuWKbwWZWH1so=;
        b=NiAIHrhqC/HsQyqGbCwZ8CmmcW2zv55BBOkCQdxJzzuFpgbZUmIpBn9RWdsBUhC0R4
         2WdVGSMyI9iBdHYA4JwT0qamx+oF+/8Bf7IPqK9uKGypUzbjbuY4l1iKRKCce0wwjtC0
         7wAg4x6n/p+IToRgHwNxnRuyLIV06Pkh0qbu2fiYsOxOr7znxQpBFWnVxhkmBA9eCLZo
         rb9q6/lFZlxXT4wdtM6GODTe7FCXzc15yGSLMikD6doVfCRYEuwvkYksc6ti5B2Evypy
         dOiR8ALdCrURGhdFtjTYMK5Mn3JrVdFxP5qP3uMQJl9pfhmaRb7+p0GEri1xvUOOiK3U
         G5fQ==
X-Gm-Message-State: ANoB5pnDis+UOqL9Win8BfbpkBhOuRzYCCpWcU+Im/OjTP/ZA21EuU2z
        uQHacsZJmSl2xy9KyxEQiw==
X-Google-Smtp-Source: AA0mqf522qn2m9P0LQ3K3SXGUq0gtiRe9EgKgwNI+LpktvkhDTnCtaqKCCsC45p9YM40Nxih+0Zx3A==
X-Received: by 2002:a05:6870:960f:b0:141:a5c8:3528 with SMTP id d15-20020a056870960f00b00141a5c83528mr11756883oaq.49.1671030327592;
        Wed, 14 Dec 2022 07:05:27 -0800 (PST)
Received: from robh_at_kernel.org (rrcs-98-6-157-194.sw.biz.rr.com. [98.6.157.194])
        by smtp.gmail.com with ESMTPSA id j19-20020a056870021300b001446d5702b5sm2750407oad.56.2022.12.14.07.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 07:05:27 -0800 (PST)
Received: (nullmailer pid 1058109 invoked by uid 1000);
        Wed, 14 Dec 2022 15:05:26 -0000
Date:   Wed, 14 Dec 2022 09:05:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: imx6q-pcie: Handle various clock
 configurations
Message-ID: <20221214150526.GA1052624-robh@kernel.org>
References: <20221211024859.672076-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221211024859.672076-1-marex@denx.de>
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

On Sun, Dec 11, 2022 at 03:48:57AM +0100, Marek Vasut wrote:
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
> Reviewed-by: Rob Herring <robh@kernel.org>
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
> V6: - Add RB from Rob

This should have also gone to PCI maintainers and list so they could 
pick it up. However, I'll apply the series.

Rob

