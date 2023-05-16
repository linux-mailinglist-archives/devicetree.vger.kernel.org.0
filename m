Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8EF37053E9
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:33:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231389AbjEPQdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:33:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231308AbjEPQc5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:32:57 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F6BCE70F
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:32:06 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so8995671a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684254713; x=1686846713;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c8gz3e5n1jyyK18HF6g+qM4Tbr+g1DJPGDVRpO3HfNk=;
        b=u8SP7a7DPEKD08S9BkygWzkNMAhIWlJmwKmF8MOtfo9Q+5BmW+gBCqJ7/bFwihhCVJ
         REvDO8+QtyhdeQkCqPIYz16dzCuU8yG6w8kKoic1h0xM8zZau1TAxY2AlMjx52LzMQoC
         rPMTe0A3q/eYZzLwmB7O03YBjlpkopD52pTSFvLRtRB1OEIGU2GRZYRgVBXxm1KBXgXu
         P9Gvi6jZGtRAZsbH994TYdwZM+pLfBkoiYYPvL1vZ+jp/oUyysHwwr6cI4NRAbwZjI67
         HkN/v7Yp6S8QYt2Mpoy7HL05RKnsyShury+S7DCQibiY6kKlUcEh+fXmA5C04dHgkbIo
         jzoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254713; x=1686846713;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c8gz3e5n1jyyK18HF6g+qM4Tbr+g1DJPGDVRpO3HfNk=;
        b=ZGWoJPEOkur6SVGRmc31uNFR6sZ6D/P4ZWznEnU7+qZei9rQQoqcl+Grq3Q1vo1OVK
         InT7Hh7g8t8PnEn7lGfcCUekLC7ArKYyR5E1xQHnqXXOcJi3EUv0WP6CkY+WDiMqO+pw
         zhFV3ObE28fk7LI6mP18M1hKie42q9A3oUt6oLehYLs+L7V1bUL2iGJWglQwZaD9bKcX
         53aOmazNrK9i0D4kJXG4smiUgD/t8g4/uVzNuExPINYX/eixR7loyMlxBec0VN7AECG2
         v6i0F/aRzFNbFGTlBlrU1Z7PHvh7vYKF45ornmg3lUn0UH8oHKzb84MV+B48TogGL2mm
         Rg/g==
X-Gm-Message-State: AC+VfDz0H1wGiNipSEYyNlo+D++mXft6rSegGY/Rr3hmx5zTGuiauJYN
        zbZP50PLRP+07/R89Vlg16GL9g==
X-Google-Smtp-Source: ACHHUZ6WEcm97R7AsYvgf2DIqQRrLZ3uBnhCrNpaL9gt5hVEuDy3m7AZKqKNCV2XQXqJQ3rA432wDw==
X-Received: by 2002:a17:907:c11:b0:96a:47b4:c29b with SMTP id ga17-20020a1709070c1100b0096a47b4c29bmr17732684ejc.21.1684254713427;
        Tue, 16 May 2023 09:31:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id mz11-20020a1709071b8b00b009603d34cfecsm10997518ejc.164.2023.05.16.09.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 09:31:52 -0700 (PDT)
Message-ID: <c9eda7f7-c397-4469-378d-de0d5ee379ad@linaro.org>
Date:   Tue, 16 May 2023 18:31:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: lg: add missing cache properties
Content-Language: en-US
To:     Chanho Min <chanho.min@lge.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230421223201.115439-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421223201.115439-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2023 00:32, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified and cache-level properties to fix warnings like:
> 
>   lg1312-ref.dtb: l2-cache0: 'cache-level' is a required property
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Please take the patch via sub-arch SoC tree.

Ping?

Best regards,
Krzysztof

