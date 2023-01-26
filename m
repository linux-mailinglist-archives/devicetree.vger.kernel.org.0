Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA30167C885
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 11:26:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237125AbjAZKZ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 05:25:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237127AbjAZKZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 05:25:54 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF6434317
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:25:49 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id q10so1269692wrm.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rn7S1VtLp37yGBAab0EjXX+1OHqdGFrGxwPk1Qe9D7M=;
        b=kgZ8XxhbRSQtjWzKTMdhusWqYW35+FU2RpAlFmF2jhE5iVPa9JTuAM7mEAMntsrH4H
         Q/ZyaK0DhfS4h1vPRslpr3Bl/sMJ/OeTdcuQELUCT9g22czJsFhxhzxs4sKaDTdymMBO
         itT6jYTyDLd1CRhChJGTtOOcFf7bhDpn7QWB3vn4HjnhKZT8miOrXFoVO9irX7uH+ubB
         Jf8lEhtBwClY8wCzCL20i8ygCNr4dmMvRGqFq9ga8sqH/ATNsYjx0F6PQlPdT0VIkWnz
         TsNbhgLigIVvp0QtJIzHSyduzt7FbGobG4GkGZvr8Lf+f6KP/784DWRL0PzN/zjhpksq
         2L2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rn7S1VtLp37yGBAab0EjXX+1OHqdGFrGxwPk1Qe9D7M=;
        b=qTwZVmpbRjiGtdGLeZ7xvi4pX4Zht7FxmtK0PXZWUA+m/NounCe/sV2UPQbaiMJKk8
         PGwYI400a7B7qN6SbgZxFLRTw9uYjvwHbzb2N5EWl+W8RKa9rDGWJGUnGEpq9UV+MEW1
         wLKzzNoU95f2la8MZipBDlmfUFHLK+ZpGbBO4kUFOjGzMq9td+ljvq6+ea2+FjpZNXyg
         ygGCooKOLg5414edgorSeTUYSjzlukXfMv5RTBwUFP+fcH1+Z6Mdt9hDoR3PsrIxuUPG
         pBW9tdbGqIm74I4Ge0TwteX24E+N2dSmYDIPJflVH7mLtsW56GTs3gVHESlEiMkNDHxP
         /Ytg==
X-Gm-Message-State: AFqh2kpagU6R5N+OZue5uCI9d5XGMKWNTeIsr1dWPAQnKQzC7Te2KnIo
        m9A8yOLo9LYCsDQGB1/cCAmqGKddtNqPaSzp
X-Google-Smtp-Source: AMrXdXv89J8AfaMD6UcMv5Q2YcLmwpePf+rnu1Dx4ZnbQQIPGLZL9IP49eird41eVG+5WSSxOvU6Gg==
X-Received: by 2002:a5d:5e85:0:b0:2bb:32bd:1dc0 with SMTP id ck5-20020a5d5e85000000b002bb32bd1dc0mr32938406wrb.58.1674728748035;
        Thu, 26 Jan 2023 02:25:48 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t8-20020a5d6908000000b002bc7e5a1171sm886514wru.116.2023.01.26.02.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 02:25:47 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] ARM: dts: moxart: align UART node name with bindings
Date:   Thu, 26 Jan 2023 11:25:32 +0100
Message-Id: <167472873009.13092.12431993921407344267.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151525.369255-1-krzysztof.kozlowski@linaro.org>
References: <20230123151525.369255-1-krzysztof.kozlowski@linaro.org>
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

On Mon, 23 Jan 2023 16:15:25 +0100, Krzysztof Kozlowski wrote:
> Bindings expect UART/serial node names to be "serial".
> 
> 

Applied, thanks!

[1/1] ARM: dts: moxart: align UART node name with bindings
      https://git.kernel.org/krzk/linux-dt/c/6fd6759567ec82c61d54b257db3cebbc154cb631

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
