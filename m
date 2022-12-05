Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26D8F643598
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 21:25:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232952AbiLEUZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 15:25:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231855AbiLEUZu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 15:25:50 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C030623EB5
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 12:25:47 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1p2I25-0006MH-6e; Mon, 05 Dec 2022 21:25:45 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@edgeble.ai>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date:   Mon, 05 Dec 2022 21:25:44 +0100
Message-ID: <21697853.EfDdHjke4D@diego>
In-Reply-To: <20221129075424.189655-7-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai> <20221129075424.189655-7-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 29. November 2022, 08:54:22 CET schrieb Jagan Teki:
> Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
> based on Rockchip RV1126 from Edgeble AI.
> 
> Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu2 needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 2(Neu2) IO platform.
> 
> Add dt-bindings for it.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Heiko Stuebner <heiko@sntech.de>

@Daniel: do you want to pick this patch into the clocksource tree?

[together with the similar rk3128 one?]

> ---
> Changes for v9, v8:
> - none
> Changes for v7:
> - collect Rob Ack
> Changes for v6:
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 244c42eaae8c..26fdd205a899 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -85,6 +85,12 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
> +        items:
> +          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
> +          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
> +          - const: rockchip,rv1126
> +
>        - description: Elgin RV1108 R1
>          items:
>            - const: elgin,rv1108-r1
> 




