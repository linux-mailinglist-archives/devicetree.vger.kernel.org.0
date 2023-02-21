Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46AF469DEB8
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 12:26:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234106AbjBUL0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 06:26:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234098AbjBUL0e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 06:26:34 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBDA322DE6
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:26:32 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id ee7so706191edb.2
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aHbKR2m+ywXpCXnZM0exqgvtcPw2O6ABggPWu9BvoN4=;
        b=R9+walYXq2Y7zxrm+gnrtxKExw8KYaNL7+C4BwJDnbYDDjPma+voio4V7IMVLXdiRm
         msWk6RRgDsA2bI2SCd0H2bB0uG35IvH0WaHmTpxlIJP7bHrOQN2vx6/Z/XnNv8X79rN4
         ZYCjJJO853MVKF7i8uIzEI19GNlB7DSWsVJn7xjcB3cd/I5dJFQYL152BUZoDqCAmHTR
         kwUrnihYMiXFooHccoQErA/l/rDhn5x/hLQ6x8u4pQlM9ECV0WgyHAQZO0D67z1XbEwG
         409hqVjpwmtzCZv/0OYP2Gh1uBDPS5hzFrgX1de6FTBgB88T76olZTyhZnIqsn/1CaLT
         DxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aHbKR2m+ywXpCXnZM0exqgvtcPw2O6ABggPWu9BvoN4=;
        b=7U82/aAVaDmo3K+6YaqNo35CmtAfksYklUtwqq5eTHOE/duOTbfXAQ4Golcpf6L/3h
         R+F3xWgWdS7AHS725rkI0odtm10un1v1w4ln6yBhwSj9bN1H5QBuBPmNT9IPZyq5PzAr
         SyypBLjUmlRN/zO8IEm4j9Mt4A00NAakNYtDyvyweMgpqoauQ7C7Km5qsfd5xKuKWrd6
         spbCZyKQoM2DamqtsM83ljoX5XfwJ2N34vNjAUJU3W7yr08vzmDrboWmriJiIhFN9NoW
         /fuUMPPIESG5sJivIb+Y8ls5MvHWUjN6vm+e/fn4qn8x+Hs+/o/xIe/DFpzDeKAqqqK+
         kQrA==
X-Gm-Message-State: AO0yUKUkKkXKyxlBbXFRcQK4MCh3ocDTnGrYpMYbuTxRi817uzKJwhlU
        fCnFrhvgc39LGl9dHwJobBmICw==
X-Google-Smtp-Source: AK7set/hoEeKJdNyqDj9X+vez8ZgBQcuREJn5JynOD5+WGwCyXxjQ19wOr8kdZ1bzXKag3dBWsvrHA==
X-Received: by 2002:a17:906:1c56:b0:877:ef84:c7de with SMTP id l22-20020a1709061c5600b00877ef84c7demr11356772ejg.61.1676978791367;
        Tue, 21 Feb 2023 03:26:31 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id wq12-20020a170907064c00b008b17ed98d05sm5975803ejb.120.2023.02.21.03.26.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 03:26:31 -0800 (PST)
Message-ID: <3fb23e7c-aad2-bec1-01e5-299c9b515d6f@linaro.org>
Date:   Tue, 21 Feb 2023 12:26:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 04/11] dt-bindings: clock: Add StarFive JH7110
 Image-Signal-Process clock and reset generator
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230221083323.302471-1-xingyu.wu@starfivetech.com>
 <20230221083323.302471-5-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230221083323.302471-5-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 09:33, Xingyu Wu wrote:
> Add bindings for the Image-Signal-Process clock and reset
> generator (ISPCRG) on the JH7110 RISC-V SoC by StarFive Ltd.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

