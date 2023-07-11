Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BB8E74E6B8
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 08:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbjGKGFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 02:05:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbjGKGFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 02:05:22 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D24C0E2
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 23:05:20 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51e344efd75so10098017a12.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 23:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689055519; x=1691647519;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AC/v+alvX1Ux7o0mLM8VEKbEBX4L3Bcit3ns/2uK+uQ=;
        b=nYXt282Ji1hHCwDemEBQaaq0nbq6SNgxSVDIcAQSHBsXfbAses1Nd7rMQ3zdrDnuMW
         VIU1ElSVy1W1dSWy/Ip2eruSKYV3k8E0EY29YwIZFdPWY9MhzK6YWnYor+w5HLAkxx/l
         aqNrh9aZmuL51vNKqngpjMqb1wzBYx7Abj/rzzIgt04t6LhBy86DffTOqH/sguIQRhWR
         00JCysh50/m5I+5hkphR9TkQH93N/TAfpgL7XQTAKysJxLBFJb+KGQnAad9MJWPmsNqt
         CiFAEEKbAq+YfZiFCs+aBKQ+TwSqm+B0Ma5zxjRrdfEDjGzeBKiHvPI9vrhi0H1wKO4t
         VTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689055519; x=1691647519;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AC/v+alvX1Ux7o0mLM8VEKbEBX4L3Bcit3ns/2uK+uQ=;
        b=fRt3V97p3bBlZd4/XQYPruIiWv899b6Qs267HJ0Lfc1iHwID1KSdLYDQlWwxoxemif
         pnZeiAKwXsmrOLDsra0Etm8lynbjcg88YetTkH0tBgC31s5Ih3QOXOEkaGVBuUGHpl6D
         AqxtiDHC+iCYBC7vSbYtB5lX5110eZd9WUwNwEL6fCePnL8bqUP6VYzZDpWoA0lOrryH
         Q6AQDOQdSuINWTVL6r2FTvbr+CIN8ADQzXvduUbed9Ii7Z1rvr+1gZCuWEbo/+PeoeDJ
         2phpeICRZNSN7kL/XsbWrkjvdupjAhRnizSHYKO5ZJ+Jw4pfU2yaf0L+UwCZ9gZPrHKV
         O4Nw==
X-Gm-Message-State: ABy/qLZ22S3PJuj2TAzzviJhvPeV2eV9v27nqz/LMDTqhaMjrXtaC649
        r/Af3E62x9hue4giJpwEWycMFw==
X-Google-Smtp-Source: APBJJlF3I7gaQ8rojVCnwHAF/JElZnuxq7lN5zjhUK/kwyrZI/npJdGy9L1JhSNfaeBpKTZpn0qVgw==
X-Received: by 2002:aa7:d1cb:0:b0:51d:ec4b:d873 with SMTP id g11-20020aa7d1cb000000b0051dec4bd873mr19386801edp.16.1689055519313;
        Mon, 10 Jul 2023 23:05:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id z17-20020aa7c651000000b0051df54c6a27sm705688edr.56.2023.07.10.23.05.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 23:05:18 -0700 (PDT)
Message-ID: <8eb986f2-3268-65cd-9210-ef1fca4f8259@linaro.org>
Date:   Tue, 11 Jul 2023 08:05:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: regulator: Add PMX75 compatible
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1689054415-11281-1-git-send-email-quic_rohiagar@quicinc.com>
 <1689054415-11281-2-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689054415-11281-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 07:46, Rohit Agarwal wrote:
> Add PMX75 compatibles for PMIC found in SDX75 platform.
> While at it, update the entry for SDX65 as well.

Everything is an update...

> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  .../bindings/regulator/qcom,rpmh-regulator.yaml    | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> index b949850..72b533c 100644
> --- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> @@ -53,6 +53,7 @@ description: |
>        For PMR735A, smps1 - smps3, ldo1 - ldo7
>        For PMX55, smps1 - smps7, ldo1 - ldo16
>        For PMX65, smps1 - smps8, ldo1 - ldo21
> +      For PMX75, smps1 - smps10, ldo1 - ldo21
>  
>  properties:
>    compatible:
> @@ -84,6 +85,7 @@ properties:
>        - qcom,pmr735a-rpmh-regulators
>        - qcom,pmx55-rpmh-regulators
>        - qcom,pmx65-rpmh-regulators
> +      - qcom,pmx75-rpmh-regulators
>  
>    qcom,pmic-id:
>      description: |
> @@ -424,10 +426,28 @@ allOf:
>          vdd-l11-l13-supply: true
>        patternProperties:
>          "^vdd-l[1347]-supply$": true
> -        "^vdd-l1[0245789]-supply$": true
> +        "^vdd-l1[024579]-supply$": true

Why? Does not look related at all.


Best regards,
Krzysztof

