Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D778C5EC310
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 14:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232369AbiI0Mlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 08:41:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232421AbiI0MlS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 08:41:18 -0400
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [5.144.164.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 691E5B6D64
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 05:41:13 -0700 (PDT)
Received: from [192.168.1.101] (95.49.29.188.neoplus.adsl.tpnet.pl [95.49.29.188])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 821E33F5A3;
        Tue, 27 Sep 2022 14:41:10 +0200 (CEST)
Message-ID: <149af8eb-cfa9-c2f1-1aa6-6057df3aa03d@somainline.org>
Date:   Tue, 27 Sep 2022 14:41:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 11/15] dt-bindings: pinctrl: qcom,sm8250: add
 gpio-reserved-ranges and gpio-line-names
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220925110608.145728-1-krzysztof.kozlowski@linaro.org>
 <20220925110608.145728-12-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20220925110608.145728-12-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25.09.2022 13:06, Krzysztof Kozlowski wrote:
> Document common GPIO properties (gpio-reserved-ranges and
> gpio-line-names), already used on qrb5165-rb5 board.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml   | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
> index c44d02d28bc9..d7d8e5d3b659 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
> @@ -49,6 +49,13 @@ properties:
>    gpio-ranges:
>      maxItems: 1
>  
> +  gpio-reserved-ranges:
> +    minItems: 1
Not sure about this.. However, this will apply to 99.9% of boards, so:

Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Konrad
> +    maxItems: 90
> +
> +  gpio-line-names:
> +    maxItems: 180
> +
>    wakeup-parent: true
>  
>  #PIN CONFIGURATION NODES
