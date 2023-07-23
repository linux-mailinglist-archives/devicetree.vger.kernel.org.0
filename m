Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC3775E01D
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 08:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbjGWGhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 02:37:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjGWGg7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 02:36:59 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76BC61BC7
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 23:36:58 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9922d6f003cso571185266b.0
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 23:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690094216; x=1690699016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VBGw1PF0jZ7+7V3u8SysFDItCKCdjyIb2nTwukud9ek=;
        b=NQ/G6ofVVln6yFXYklg7/cI8tPXrTOhtVa93dBTgBqtrP5cmARzi/KhhXHfEFgEgH0
         xDT4QaNNZR805FhsZpKOq+Dg08BlM6jV1uTOm8y4T4ak0P1o6v9ocsICZfx5LnhLxpeG
         AwtxmSc8bQh20Hgwjt9nUS0xEeDHt3hYi1rsagR4ZP9WQsipZKGPQ/JjK2pANoVNP1kM
         GqvPNWSwpP6Uc4o9QK2lIukhC19W32ZqwK1CvtEQsGKioKloKeNWw/V4wHskIEr+TJrV
         K2gxhV01oshYIJ4dpSP2LRP5ZJyNizFb1L1s56FDaAfy+p+Qolp3yOgdwJrRFOtICgkk
         BaUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690094216; x=1690699016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VBGw1PF0jZ7+7V3u8SysFDItCKCdjyIb2nTwukud9ek=;
        b=ME8bGC2r8RyitfO8ALZEy8LLED/X6rb9P27ZVcfY4GZJJe2cSrX0ccMtBpyXZsP3LQ
         LP1WTx6ZfCEmBN549kenAujurBGRnF3x9BHWu9vOxhgG30N9wAmNYktHUR5EhyCMLCCG
         XkLhfc7Z1aDbT4ziy4TL5cylavdX0HpZ0YnkyUUxkhH2rhtN0oaioUAN43TpGYFmgWiC
         ykaqDP6Q8dMMl+jtw1UVvfdOF/smrvmgmQO1fqD1yHZaXHbmP24RriaQ0ShaXmNdgDAp
         nPZqW9PuM3oEouSn7othf2r9KYRJ7ARXH/KLGDDNu4QtRjnHGDYjcI9I408rxZOOaqxo
         MidA==
X-Gm-Message-State: ABy/qLb8jDd2MK7Q6+nHhrWuiCfflGH//vwYfCPR8dm2YLzSU0fXYHNJ
        /fcZIDoKC326nOCBk6SSjo1/fA==
X-Google-Smtp-Source: APBJJlEl4XZ3NafWS50iCuMfgGWVby9zFbRSittlnITgM5mTeUHVeje0Ae2c+94KNc8wsxqcRmNHqQ==
X-Received: by 2002:a17:907:77c9:b0:98e:1b9b:aef7 with SMTP id kz9-20020a17090777c900b0098e1b9baef7mr6557161ejc.64.1690094216474;
        Sat, 22 Jul 2023 23:36:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id rv26-20020a17090710da00b00993470682e5sm4595544ejb.32.2023.07.22.23.36.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jul 2023 23:36:55 -0700 (PDT)
Message-ID: <fe1ba45f-97dd-43ef-9979-bbc1834897f7@linaro.org>
Date:   Sun, 23 Jul 2023 08:36:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 2/3] dt-bindings: riscv: Add BeagleV Ahead board
 compatibles
To:     Drew Fustini <dfustini@baylibre.com>,
        Jisheng Zhang <jszhang@kernel.org>,
        Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>
References: <20230722-upstream-beaglev-ahead-dts-v1-0-ccda511357f4@baylibre.com>
 <20230722-upstream-beaglev-ahead-dts-v1-2-ccda511357f4@baylibre.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230722-upstream-beaglev-ahead-dts-v1-2-ccda511357f4@baylibre.com>
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

On 22/07/2023 23:55, Drew Fustini wrote:
> Document the compatible strings for the BeagleV Ahead board which uses
> the T-Head TH1520 SoC.
> 
> Link: https://beagleboard.org/beaglev-ahead
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  Documentation/devicetree/bindings/riscv/thead.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/thead.yaml b/Documentation/devicetree/bindings/riscv/thead.yaml
> index e62f6821372e..3b8b24812a24 100644
> --- a/Documentation/devicetree/bindings/riscv/thead.yaml
> +++ b/Documentation/devicetree/bindings/riscv/thead.yaml
> @@ -24,6 +24,11 @@ properties:
>            - const: sipeed,lichee-module-4a
>            - const: thead,th1520
>  
> +      - description: BeagleV Ahead single board computer
> +        items:
> +          - const: beagle,beaglev-ahead
> +          - const: thead,th1520

You should keep some order in all these entries, not add to the end.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

