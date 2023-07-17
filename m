Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39744756985
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 18:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231132AbjGQQrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 12:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbjGQQrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 12:47:41 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE254F7
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 09:47:39 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992ca792065so664546966b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 09:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689612458; x=1692204458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JK6TkOQBHFr4q96srFPr4OjrpsieTptoErK+rdA0Pjs=;
        b=gSVw5wcPbsf/QbpAH0hRSagM9a9kzssQWbI6taOsnZI7l2LvzXCps64xOZn4gkhSU0
         VOg60k5Q+3/LglcekmxcrdMyHmB5OJxtspd+ZWW1eqD5Cu84C8zFkh4q2G3RYCv4T+ur
         WobKpSvcRu+vALFSu0nNRRtNiSXKlxdSPDycdiuYam+noheKXbGRr104HAojgjhKTLki
         hzdezggTjMF40whEQPEVlWXLKeAD5A8t7EQzRTHc/a4rRu3V0bpHI3gi2ZP1NYW3UIhE
         bcnfghSfTbDRJIRAdUcCAUwc8dXgXakX4mgmDb5N5ECFGIKeJxvpScEr3fFYpVInMzn/
         CqeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689612458; x=1692204458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JK6TkOQBHFr4q96srFPr4OjrpsieTptoErK+rdA0Pjs=;
        b=YBT6KZW+iSmyZrxhiYcwEtTB1qsounigGoq+JNrmaF45f4ZG4r9cyJenEF60tdniYg
         qNjmbgruKTZNPABSxtQ4MpMBaZ2KJA284PR3QgxBM0Xlh7TQoISSnpx/I4DWG1/hNzMq
         mjkPd5L8L7nqXKpmXqoC+dnOA/S0TUn2LZi6rv7tLHS+BA82xX5YtFCQa+hAigz4BY06
         QlFsxRrR6mk6rHz99qolBuOhNdXcU9J7JfhsoGR4Y3Z4UOMa6MDnErVyYgPxEMkfW3lu
         WIQyXVSKLB5Ipd3iT43FtsS5zIpIDAYKaQ3lV+QuY4jMvuX2K7oR0f6S2/rgg/rdNss2
         OyjQ==
X-Gm-Message-State: ABy/qLaIgQNWhRV04Lim7HOGEIBVEH21uctQG+tfQS8CUAngllirUAN3
        t++WqWgp+WjJ66ZosTgti1S2Fg==
X-Google-Smtp-Source: APBJJlH0qMy8XozwM95e5By8BV0d4jRKCPbiiNYUEYx+N2c06vencG+JUCyJcZsjwFwwdoHev4v5Bg==
X-Received: by 2002:a17:906:3109:b0:994:54ff:10f6 with SMTP id 9-20020a170906310900b0099454ff10f6mr6962190ejx.30.1689612458219;
        Mon, 17 Jul 2023 09:47:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n7-20020a1709062bc700b00992e14af9c3sm4616559ejg.143.2023.07.17.09.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 09:47:37 -0700 (PDT)
Message-ID: <a34ef1ed-e204-77ba-a4b1-1a4bbabdac7a@linaro.org>
Date:   Mon, 17 Jul 2023 18:47:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: snps,dwmac: add phy-supply
 support
To:     Marco Felsch <m.felsch@pengutronix.de>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, peppe.cavallaro@st.com,
        alexandre.torgue@foss.st.com, joabreu@synopsys.com,
        mcoquelin.stm32@gmail.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20230717164307.2868264-1-m.felsch@pengutronix.de>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230717164307.2868264-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 18:43, Marco Felsch wrote:
> Document the common phy-supply property to be able to specify a phy
> regulator.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index 363b3e3ea3a60..f66d1839cf561 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -159,6 +159,9 @@ properties:
>        can be passive (no SW requirement), and requires that the MAC operate
>        in a different mode than the PHY in order to function.
>  
> +  phy-supply:
> +    description: PHY regulator
> +

Isn't this property of the PHY? Why would the Ethernet controller play
with a supply of a phy?

Best regards,
Krzysztof

