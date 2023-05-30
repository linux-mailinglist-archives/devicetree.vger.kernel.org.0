Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 374C17160EE
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 15:01:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbjE3NBv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 09:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232427AbjE3NBr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 09:01:47 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 224CF127
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:01:24 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9741a0fd134so170601266b.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451682; x=1688043682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fO+n6lEHABbwi3wXc5qNQVYLNIOkPO3jbkLBNwiNqL0=;
        b=DFXNNP7XVINCHh7oXXXLPC1PQw6VHDP1Tbffc+heX4VZkAJB4FOIDQkuOzxBs/NJWH
         saurV6FRk7JZib0VlZDgBj3iPc6MnFl0dUX1jua9uSI+NzooNX9yv0X2L5xpB4TD8h7B
         tAjiPprsGr5xnBZnNS+cwfiXaD7aGTZqHZyGD2/Xh/+VTSvbLzRcJDAV4FUsuvmh0tat
         b0gsmddJC2D3+fTHTXq2h0lTECBJvnglidTrl/Y/BMbwFqkjqsbEIEbCZjJH3opSnZrl
         POHwTa/pwd8tdfh2xpjJuGn2a1s5N8ISAXijPO1P0hchW9vqNlTO1sZwJQMZnJNQN8Y/
         pRJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451682; x=1688043682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fO+n6lEHABbwi3wXc5qNQVYLNIOkPO3jbkLBNwiNqL0=;
        b=cRjb44uGlDrzsUFYr6LkUig0WJpzjhy4offkzjWYX9oPDwO5v7DxpA1WV6CEHKXER0
         e3MeswlGYQbnq5bmck5uA2yotiEDklJFMJPkxDPeY0wwCZZLtuo/hYO9BBxwEUC0G4Xy
         LcwLcKmudx4aTVzIlPoxfysYA/1r3VJevW+Mm7BSJFPqHIGHOhqfBjJaX/Jx6MwEj/1L
         nXEaid5CjY1u80KbUjLbKC3SO8Nb66VSS5gSqcWDGFYgdT27FvvE72ceSd++k7Kco8dd
         uz6H/aO6UVrnKeTiMnyqec/j5y6Ufl5OQMVACooCMUMOUXbxYr+wZES8ZEwkc8U6Yez/
         DP4A==
X-Gm-Message-State: AC+VfDwjMuTw7/VEuVnpWbEggxrRRBWbsRb0Ih86+nKq9nDRDZd5hsT3
        PmbYsMYz7c1D4Lp/2oPancFehg==
X-Google-Smtp-Source: ACHHUZ5BlgO43IfHDpDtov9RdPBEgqa87cGtOE1Xg8uoq/MQu+784FuU49hWKe+1EQqOlG9tp04Z8A==
X-Received: by 2002:a17:907:6e18:b0:94f:6627:22b5 with SMTP id sd24-20020a1709076e1800b0094f662722b5mr2529456ejc.47.1685451682479;
        Tue, 30 May 2023 06:01:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id rv3-20020a17090710c300b0096f7b7b6f11sm7284061ejb.106.2023.05.30.06.01.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:01:21 -0700 (PDT)
Message-ID: <3e47e95e-cdaa-50b9-cdaf-66a0f0d1e9f7@linaro.org>
Date:   Tue, 30 May 2023 15:01:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/3] ARM: dts: imx: Use 'pmic' as node name
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230527205048.418360-1-festevam@gmail.com>
 <20230527205048.418360-2-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230527205048.418360-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/05/2023 22:50, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Devicetree node names should be generic. Use 'pmic' as node name
> to avoid devicetree check warning from pfuze100.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

