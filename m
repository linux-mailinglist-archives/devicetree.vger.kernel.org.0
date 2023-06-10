Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5772172AD59
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjFJQgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:36:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbjFJQgp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:36:45 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6E56359D
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:36:41 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-510d6b939bfso5028883a12.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686415000; x=1689007000;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ChqyHeRrx1nVl326X27+aLNZ73uhBHA6TjrlV6LTFN0=;
        b=eAkbVNn+F21jKR0K2SApK2Ew17qzhUYCwH0JMkMVQv6ebasRECi6jjuxkaMIYlIqHg
         0RgTKF8Efok9CUVfVzUZy44n529eOzL6nY8uG3z1PJE5GrUVNi0GUBa4w5cWYmaDU44l
         QOJID9eJk83YiK/1PqVGlCBMs35KsHpWzYtLhfSqyoRqkTNBlGGyuJWc2oIYUHZXQ+PK
         H049EXQQYuDBWDghftzEmjR9T9fxO9lNRGhA7dCYkpI7nLJamjE3+GLfPf0NjZwSKPWP
         oBoEelKOzeBMbI/srSFYTHXgo1G3AE5lIIqGq/0i7G2L3ZGESCeog+TQ1sbhDC/BXO26
         CwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686415000; x=1689007000;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ChqyHeRrx1nVl326X27+aLNZ73uhBHA6TjrlV6LTFN0=;
        b=hPFfrBC4G4hfaVnT7Bk99ynfqD4SrW/1jvJaqEqHwvjjNbJOvdH00mFFQfDPDJZfXD
         4hxvWT5ARb+x8vRqH9MKfKHVpnO2OwARkX1ohuhtXPE2QdTq+JhYpAcNJCxnbsoEMwiM
         E5/ennyCsqA4vwCQKZoYG4cx8K/+ePVQn6AS74V3a/UNKScK4FbPYWindkpcNwN2bKi5
         W9Pp5mBvSv/zgKP6bQJcG8u1q3CXaGYdgadv8EzfX7kC8aU0TZfTxWHnusi7sfmNn25z
         V/K4HXBVDmyVUOuWRpsjipj9JUsizVVey/IxIW6W7f8yugvC40uP+k0xyeeu3sGQD+cY
         relw==
X-Gm-Message-State: AC+VfDxO1Zb2QHrrAWnD/FEVFyYlSyUiFQync1qxHxQuFUrrht/Z+KJj
        DYDZpQDnsuQKg2zw+fZl5BVAuw==
X-Google-Smtp-Source: ACHHUZ4XN6pIjxR7yRxozoBIT5Qr1Le5EBSZdGnmDvjL/obHQXWl1dutrqrk21GYhUSo3FCUdx8QqA==
X-Received: by 2002:a17:907:9622:b0:97c:46c7:d5eb with SMTP id gb34-20020a170907962200b0097c46c7d5ebmr4065890ejc.10.1686415000239;
        Sat, 10 Jun 2023 09:36:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r9-20020aa7d149000000b0051560edc8d4sm3029130edo.45.2023.06.10.09.36.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:36:39 -0700 (PDT)
Message-ID: <6462074d-f27a-7953-c1cf-9fd405f97f10@linaro.org>
Date:   Sat, 10 Jun 2023 18:36:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: Add Gateworks i.MX8M Mini
 gw73xx-2x board
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
References: <20230609174407.3373396-1-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609174407.3373396-1-tharvey@gateworks.com>
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

On 09/06/2023 19:44, Tim Harvey wrote:
> Add DT compatible string for a Gateworks GW73xx-2x board based on
> the i.MX8M Mini SoC from NXP.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

