Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 832A872AD62
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:37:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbjFJQg5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:36:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbjFJQgy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:36:54 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64FE73A96
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:36:50 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-977c72b116fso424381266b.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686415009; x=1689007009;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9TSyf1ASxYuSJlQ+UH4uk/uLAz+06/cWAcBLiOwXQw=;
        b=l4+idekUo2R3qaEXZf31sAuFI5DCWxe4ezpojv3RNHiK971aW/uxN/SkMBYEOFbtvV
         YMuJSmg9Rd9OhaBkBaTa6enedG+RAHAEa/HBELbprqMmtM+VYp2GMuqX2eYNX8cnJ+T1
         W70v5oxLT08J/gkTY/ECjfXZJQ2lHj+9UrkyBevOQFx5HEiA7XBcS2Rx8uvJq4j/Nqov
         devXgD2UABfKjXUkXiuGo0pUeOwlTrTeq1f85MPWIxUmZEPjAcE1XGpvuQpMNSbk9NH1
         UBmi0WpR2PPQZRP3+F5eiNzhbvjFHyY+XuVQQqOJRkdDJ18EoC2ZyKbuQLame1o9M9SX
         zzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686415009; x=1689007009;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9TSyf1ASxYuSJlQ+UH4uk/uLAz+06/cWAcBLiOwXQw=;
        b=WLBgxJiNaM7S2aM9vatuX150O/W/Lj2A5fkL6dzOAtpi0zKQN9gIpFW76vfQqdWCvF
         EnciPxRZcDFT8DYAZpF7j0VWguCq9G06L7KABussXZQGt7dxNvgnHTtPLVtjsTUKwqMi
         p2K+KukFUEPt9aS/bT40XEYsrSbM5iGy7PEw5hx6M0j0S2kbgv9TTr5t+rAM1vXCIjMA
         VXDi8J7HE5FoEJVLRmQ9wCRjB1hTeDbBbz6e88I6sHiKk6DGcEspzC5eDyAKyVikvykj
         ZLfeD0/ET38Y6/y6Pnw3KkxbNvVOHKiEKTtDbNL+l02XYaBsN9SqXMsFJnbt19BKPVa4
         MSVQ==
X-Gm-Message-State: AC+VfDy+IfvPKVDTMKfrEfYSHTGirh30W0jzpW1v6QDPxagvYgRSifxe
        on58x4EtLol5H41wxRtzky5pBw==
X-Google-Smtp-Source: ACHHUZ5t65TieFqQtj8koK/mLlS0PIsBePt/tLL8PzN3k07slDI1BUS4YqsKDnXwsw63KijHoadNwQ==
X-Received: by 2002:a17:907:2cc2:b0:96f:8439:6143 with SMTP id hg2-20020a1709072cc200b0096f84396143mr4846949ejc.40.1686415009051;
        Sat, 10 Jun 2023 09:36:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id x7-20020a170906298700b00965b2d3968csm2791443eje.84.2023.06.10.09.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:36:48 -0700 (PDT)
Message-ID: <4e47443b-5ab9-7af3-6da7-840182768b1d@linaro.org>
Date:   Sat, 10 Jun 2023 18:36:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: Add Gateworks i.MX8M Mini
 GW7905-0x board
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230609174107.3373182-1-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609174107.3373182-1-tharvey@gateworks.com>
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

On 09/06/2023 19:41, Tim Harvey wrote:
> Add DT compatible string for a Gateworks GW7905-0x board based on
> the i.MX8M Mini from NXP.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

