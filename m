Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B134169062D
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 12:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbjBILLC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 06:11:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjBILKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 06:10:54 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A51C457E6
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 03:10:51 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id bk16so1357506wrb.11
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 03:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GqEDrPecY5AdtYYouWhVhtBYmguh12NLHmLw2zaxBkw=;
        b=N0Q5+nSVpEn1IotrtH2c4+nMdnr1/jyszLxZ/6lQMPJBZjviOGLuhoG6raY3m5lhFB
         O2wxxDVEaaRLabE+uawnsyjpPsvF4GPS82iUGS07Fuw0h0fut0pEZD2/YLUrAs9etNL+
         mfeI0H6HSlyNT1OeD9TfCxjYHh20ggINxshXzEE738PUw2u5cB4KuetNTEGGdpDm0Fk3
         eMwGIs/fufc+dm6JyNSBNOL+zTbECLXETq/WsvjQVKouYGAlM20IxzlKayzuG2m6wz9F
         dgy0oefLkqzhN6Inr8gt5iBkksAf5/l2WoWHxpYtlczlYxqHMyqnkJcvjkjf/4Tro2RR
         5R8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GqEDrPecY5AdtYYouWhVhtBYmguh12NLHmLw2zaxBkw=;
        b=36JdZ1ypu5e0E3OTw1trEXlFz2Hw/m4mcJJe6Ejd1xLFF8aGk4GLNUudx7Q9gS9PPX
         okQKrGF0qLW9O8pQDslUpcm1vl0lNUz1otxHFJelPSiIeazAinF7UKOwtyDkOtoN4Daw
         OtxN/DpGo312KHLIi6C+Vww9u7IllZdHpd9aauniJ4n+4Rskw7Ho5+4B1oTGHZHT73iT
         ZtVgQcvD2WA+b0ejDzPwvWcpHKXbeIXyX36L1heXbL6OhBlTai8Gugbyy+7y3Spi9BVz
         qRYNzRxgWHjj3z8JahI4r0IWLjzRJrXjlw2vGaC0eP5L4gHzDZJ1IKDoqUqGIj+zfNML
         b32Q==
X-Gm-Message-State: AO0yUKVbtPxxQLS/ILdRKnHCBZgsNh6Yi+OjXmers5KEsAWAuyj0pug4
        d+xQtiTNwhVYlBqMfBF8A5tbxA==
X-Google-Smtp-Source: AK7set9Pptf/+9lQEs77Kb8R5toaf19I2u6q/MDWpOPs200SL3rdIyte95YRxP0YKdK27FN5ovVHrQ==
X-Received: by 2002:adf:eccb:0:b0:2c3:f7a9:e71a with SMTP id s11-20020adfeccb000000b002c3f7a9e71amr8449189wro.30.1675941050053;
        Thu, 09 Feb 2023 03:10:50 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q13-20020adff94d000000b002be099f78c0sm963207wrr.69.2023.02.09.03.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 03:10:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 7/7] ARM: dts: exynos: move I2C10 out of soc node on Arndale
Date:   Thu,  9 Feb 2023 12:10:41 +0100
Message-Id: <167594102110.781687.3726712835236512846.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207210020.677007-7-krzysztof.kozlowski@linaro.org>
References: <20230207210020.677007-1-krzysztof.kozlowski@linaro.org> <20230207210020.677007-7-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Feb 2023 22:00:20 +0100, Krzysztof Kozlowski wrote:
> I2C10 is represented as i2c-gpio device, thus it is not really a part of
> soc MMIO bus:
> 
>   exynos5250-arndale.dtb: soc: i2c-10: {'pinctrl-names': ['default'], ... } should not be valid under {'type': 'object'}
> 
> 

Applied, thanks!

[7/7] ARM: dts: exynos: move I2C10 out of soc node on Arndale
      https://git.kernel.org/krzk/linux/c/27dfcb622b59cbce2c7f55cd87f06d2cdf20d5eb

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
