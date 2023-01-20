Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04F51675D10
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 19:51:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbjATSvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 13:51:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjATSvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 13:51:13 -0500
Received: from relay08.th.seeweb.it (relay08.th.seeweb.it [IPv6:2001:4b7a:2000:18::169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 571A4EFB8
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 10:51:09 -0800 (PST)
Received: from [192.168.2.144] (adsl-dyn97.91-127-229.t-com.sk [91.127.229.97])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id F2FB33F3FF;
        Fri, 20 Jan 2023 19:51:06 +0100 (CET)
Date:   Fri, 20 Jan 2023 19:51:00 +0100
From:   Martin Botka <martin.botka@somainline.org>
Subject: Re: [PATCH v8 1/3] dt-bindings: mfd: x-powers,axp152: Document the
 AXP313a variant
To:     martin.botka1@gmail.com
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Jan Trmal <jtrmal@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Message-Id: <0DSSOR.MJI95OMO3E8C@somainline.org>
In-Reply-To: <20230120184500.1899814-2-martin.botka@somainline.org>
References: <20230120184500.1899814-1-martin.botka@somainline.org>
        <20230120184500.1899814-2-martin.botka@somainline.org>
X-Mailer: geary/43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I forgot to add acked-by on this one from Krzystof.

On Fri, Jan 20 2023 at 07:44:57 PM +01:00:00, Martin Botka 
<martin.botka@somainline.org> wrote:
> The X-Powers AXP313a is a PMIC used on some devices with the Allwinner
> H616 or H313 SoC.
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git 
> a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml 
> b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> index b7a8747d5fa0..e2241cd28445 100644
> --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> @@ -88,6 +88,7 @@ properties:
>            - x-powers,axp209
>            - x-powers,axp221
>            - x-powers,axp223
> +          - x-powers,axp313a
>            - x-powers,axp803
>            - x-powers,axp806
>            - x-powers,axp809
> --
> 2.39.0
> 


