Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 743A052FE17
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 18:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245506AbiEUQVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 12:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237279AbiEUQU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 12:20:57 -0400
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [IPv6:2001:4b7a:2000:18::162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BC718342
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:20:54 -0700 (PDT)
Received: from SoMainline.org (94-209-165-62.cable.dynamic.v4.ziggo.nl [94.209.165.62])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 94C5D20612;
        Sat, 21 May 2022 18:20:52 +0200 (CEST)
Date:   Sat, 21 May 2022 18:20:51 +0200
From:   Marijn Suijten <marijn.suijten@somainline.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 11/11] dt-bindings: arm: qcom: document sda660 SoC and
 ifc6560 board
Message-ID: <20220521162051.jufjhqzz4wte3h6z@SoMainline.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
 <20220521152049.1490220-12-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220521152049.1490220-12-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-05-21 18:20:49, Dmitry Baryshkov wrote:
> Add binding documentation for the Inforce IFC6560 board which uses
> Snapdragon SDA660.
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Nit: don't dt-bindings patches go _before_ using these in dts?  In ohter
words, should patch 10 and 11 be swapped?

> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 129cdd246223..ac4ee0f874ea 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -41,6 +41,7 @@ description: |
>          sa8155p
>          sc7180
>          sc7280
> +        sda660
>          sdm630
>          sdm632
>          sdm660
> @@ -225,6 +226,11 @@ properties:
>                - google,senor
>            - const: qcom,sc7280
>  
> +      - items:
> +          - enum:
> +              - inforce,ifc6560
> +          - const: qcom,sda660
> +
>        - items:
>            - enum:
>                - fairphone,fp3
> -- 
> 2.35.1
> 
