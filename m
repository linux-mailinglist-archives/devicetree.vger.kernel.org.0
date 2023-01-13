Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8440C669BA5
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 16:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbjAMPPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 10:15:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbjAMPOK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 10:14:10 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 513547EC8F
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 07:05:36 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id n5so22190202ljc.9
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 07:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gfCT28FCbQrY32iGHKuf0fPbE9jzwWTkTnjnRxrb20U=;
        b=Zp0s16o3sQ4APW3gerIzyuXEb6qETgU4J7bwRJmj1stYMiqNpaitxpSLPu74UNSndW
         GhGA0gyk/2bXcq1IHLcMU7oWBh4iSAGhsV1Jz5aV0UqGN30fcSJ686koWZg4TPsLVnOA
         86QTvvGMjXrRIycEn46gMTXtuSptuQAoogL/VhsmP8yzf3EzGECvfSmWReYJKMAfVcc0
         EpXltxInKh86k9/I5m2RLk+WJgn9O/Rdgw5nP9sgNTWOQUw2KAyz8mg+3Qp2+aw3rDYY
         kgFNvfp7UuLNHR8w5e3fT5zN9/+oBGTjKIp7UCmOqGxfKLYsP/WFyLEO5VAV5ARFH56R
         ac5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gfCT28FCbQrY32iGHKuf0fPbE9jzwWTkTnjnRxrb20U=;
        b=oYzwIQ0jQux+Ie5XA8dZQOOt9Ahl6MJk8j6V4p2cWRc/3DX9CniYnucxQHhuyQyGxM
         4n6HiiiQBc+BN6lNJuNPXze48kkWsDIzUxXKSUi8ee5jS3DXs2GO4k6r0AqxTL5LAaAS
         /ch/8baANgY3CYtpWw5vU35N/YZL0l90+x+SltVjcDrEUFhpSdSvQx13oIqE8cCUhHQh
         6SJd2Ya/x4lG+I2zi0e8o9m+a7oM21DSFQ65xyeBhs2FSznJ9iNp42yJHS14nGpsbrcT
         ziYcLG3teJacj6bGMkUoeATEJjZctMEv5/emjIrnG5qscqFpJJs43TBygi8I5w+cGDbb
         ua5w==
X-Gm-Message-State: AFqh2koeZTQkQLNIEvkkoJsOQjviR1ld7L6+2BBy6rMfSK7I6Ocesro6
        5IIhr4yVYZ8Vd7M2r3qbUNfkYQ==
X-Google-Smtp-Source: AMrXdXvFzWxeuBB1ZFxrX2CcWicgc3JY6xGrdvgsXt/LSY4sD3TIm2IiV24qO5V1+SmnRPlVFuHrfQ==
X-Received: by 2002:a2e:aa93:0:b0:284:254a:9d5a with SMTP id bj19-20020a2eaa93000000b00284254a9d5amr5761404ljb.39.1673622334638;
        Fri, 13 Jan 2023 07:05:34 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id u27-20020a2eb81b000000b00281068cd497sm2569212ljo.119.2023.01.13.07.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 07:05:32 -0800 (PST)
Message-ID: <e9025ca7-c955-5c49-ce66-701e9639129b@linaro.org>
Date:   Fri, 13 Jan 2023 16:05:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/6] dt-bindings: clock: Add YAML schemas for QCOM A73 PLL
Content-Language: en-US
To:     devi priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, jassisinghbrar@gmail.com,
        catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
        arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com
References: <20230113143647.14961-1-quic_devipriy@quicinc.com>
 <20230113143647.14961-2-quic_devipriy@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230113143647.14961-2-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13.01.2023 15:36, devi priya wrote:
> Add schema for primary CPU PLL found on few Qualcomm platforms.
> 
> Co-developed-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: devi priya <quic_devipriy@quicinc.com>
> ---
Doesn't this belong in Documentation/devicetree/bindings/clock/qcom,a53pll.yaml?

It looks identical, so it may be as simple as adding your
new compatible there..

Konrad
>  .../bindings/clock/qcom,a73pll.yaml           | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,a73pll.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,a73pll.yaml b/Documentation/devicetree/bindings/clock/qcom,a73pll.yaml
> new file mode 100644
> index 000000000000..a0e81094db8d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,a73pll.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/qcom,a73pll.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm A73 PLL clock
> +
> +maintainers:
> +  - Bjorn Andersson <andersson@kernel.org>
> +
> +description:
> +  The A73 PLL on few Qualcomm platforms is the main CPU PLL used for
> +  frequencies above 1GHz.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq9574-a73pll
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: board XO clock
> +
> +  clock-names:
> +    items:
> +      - const: xo
> +
> +  operating-points-v2: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    a73pll: clock@b116000 {
> +            compatible = "qcom,ipq9574-a73pll";
> +            reg = <0x0b116000 0x40>;
> +            #clock-cells = <0>;
> +            clocks = <&xo_board_clk>;
> +            clock-names = "xo";
> +    };
