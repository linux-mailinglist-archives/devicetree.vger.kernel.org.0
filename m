Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55AF56B053C
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 12:01:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231295AbjCHLB0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 06:01:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbjCHLBY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 06:01:24 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D6634C02
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 03:01:21 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id g17so20822353lfv.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 03:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678273280;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=46PplNPKh0FsjNt1qLCmw7K0suqCCDaPvipsAUn6EkA=;
        b=kGloYsb+6IuCO/oXkSMT6uGJUV4qAr0Ay3d5c0V4VsdsU/yGn5f3KHEtNj+6vjKn+z
         CwcpTSYjujw0Mv0/E3w/SD2xyln8zYY6+O71m8BhQMNWBpcsZDOuzbGG2ju7O6OfoNIj
         P0a09kDZZesE0cSiE+BwALI5CjUlJE0SCnyrV2ct34ukcJkyVm8AczXLgek/hkGszSFE
         7I+VK+1VdGgXOi7PxvEDjUuQm8dbl7CALu7/2bOr/39dN+XFZudncbrCkAeReXHdzfSK
         4ELMUxbaQ/QGMOmVgFQUNz+N23a8I5dDvBUN5nYPqUDJxNgBb6GnyQr0Okyq4r1vLL/4
         mKTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678273280;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=46PplNPKh0FsjNt1qLCmw7K0suqCCDaPvipsAUn6EkA=;
        b=b7NcTH/doJsdOv+rQJCH8i4l1V24kVV+rZE4ysXjUCRrn957hMvwSbGVGS3f+cIC8N
         V1f3wCR5qL7lhMySOcag20WIdNKuJBhKWy/ROKVhcy7rwos6qQj60mlJSeih9OWRb+oi
         +cbv07fWnxFCqbBdXuc4jqy/akt3zpmeCwxN6n9iyqu1+wVGFQGDm+B3Lo8fatzKyjK6
         7QSfCS3xZjQpgmQD+vpOrqxQP3T9iKw9SIKoqC6+DyZG9vcUQ2Xw/LGDkutQT8SHQHh/
         qdD3ZttSAXjx1CnSYZ8cXEM9LcUd36PP7IauiJ7lL/TfCy2O0GWUJ24qFZWgNM6ktyof
         P/PQ==
X-Gm-Message-State: AO0yUKWQ9eT09xJhvD2SZjQYJKXK/CttRU7aY3AZizls/7Dg+++LXTa5
        4SdmTd88z6EmL2QSTd1t3u4Nrg==
X-Google-Smtp-Source: AK7set9m0YF55S3CfW285NO2jwU/NUjTyfb0m0xwgBnrHAjMRPzJ/3HEPRPXGeHJ93s4uTJ0g1uGiA==
X-Received: by 2002:a19:550c:0:b0:4b6:a6e4:ab7a with SMTP id n12-20020a19550c000000b004b6a6e4ab7amr4806099lfe.8.1678273280189;
        Wed, 08 Mar 2023 03:01:20 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id m16-20020a195210000000b004db2ca9dd33sm2292462lfb.275.2023.03.08.03.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 03:01:19 -0800 (PST)
Message-ID: <754a2d38-dd7b-48b6-80e5-683ca193e0b1@linaro.org>
Date:   Wed, 8 Mar 2023 12:01:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH V6 7/9] dt-bindings: firmware: qcom,scm: document IPQ5332
 SCM
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        arnd@arndb.de, dmitry.baryshkov@linaro.org,
        geert+renesas@glider.be, nfraprado@collabora.com,
        broonie@kernel.org, rafal@milecki.pl, robimarko@gmail.com,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230307062232.4889-1-quic_kathirav@quicinc.com>
 <20230307062232.4889-8-quic_kathirav@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230307062232.4889-8-quic_kathirav@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7.03.2023 07:22, Kathiravan T wrote:
> Document the compatible for IPQ5332 SCM.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---
Does this board not have a crypto engine / CE1 clock exposed via
RPMCC? It will be enabled by default, but Linux should be aware
of it, so that we don't gate it by accident.

Konrad
> Changes in V6:
> 	- No changes
> 
> Changes in V5:
> 	- No changes
> 
> Changes in V4:
> 	- No changes
> 
> Changes in V3:
> 	- No changes
> 
> Changes in V2:
> 	- Added the 'Acked-by' tag
> 
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> index a66e99812b1f..c1adbb83734b 100644
> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> @@ -24,6 +24,7 @@ properties:
>            - qcom,scm-apq8064
>            - qcom,scm-apq8084
>            - qcom,scm-ipq4019
> +          - qcom,scm-ipq5332
>            - qcom,scm-ipq6018
>            - qcom,scm-ipq806x
>            - qcom,scm-ipq8074
