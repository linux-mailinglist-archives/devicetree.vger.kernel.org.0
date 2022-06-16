Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D355F54EB83
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:48:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378762AbiFPUsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378741AbiFPUsC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:48:02 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17E941C134
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:58 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 184so2256534pga.12
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rJQz/h/dp1ICgQ+bbPfPItuMg9tb4H48KRT3COrAu70=;
        b=trYommh8xGpwAb6JrabKs+pQTITOlMLErwr37its0kzINqF/A2GLPgi/giC9qOj5ls
         3A6zhsoWZVbI3dvqVlU0d29Pl0frh6dTtX70zVZ+c6YIjX1Ot3Hjs+8OkKcZB3pmC4Sr
         z8Xkjg2Ep508Gy6Mf7gT3ACiTae3FxoG069c11tA0UpY4laTRDk267e12+PYi3JQiTEn
         GyYb/zCpgvEkNdGp/i1B13Eq7mfunVUoxoYGk9X85BF4w6wGsjCfYgoelHMJzZp2uKrF
         xEJyZ/zZYxX/uJ95jeIe9KT2xI4nPTCp4/v16LV8Sz7LQ6VN9a4R7uH2cGz6qhaJQnFW
         FrGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rJQz/h/dp1ICgQ+bbPfPItuMg9tb4H48KRT3COrAu70=;
        b=UkSMfV3jQ47ZvnVPUcGk6JW+u0qfS53VWkWkuTKsuCtjxRVaK26DJEgb4hz8yT3Kgk
         BtQ0Y+3kvwZVLeu3hCTvUp1UMRkR/AEEjzQgAxdY95xnzd6mKb6/RX6M65zacCCH9cm1
         xtEXkGXQXVQXRKatAkeIqL8+ssqd53iAitl9CKYA/FwV90s2c2/mrOgWpNCytSU6FhNF
         jhUMvo8SPlsny/QL0BhZ8zDBgZKQ7mV6I/2dRw6YJqByLnuQfPDnj2HdfOUhQJtPZgAW
         dHXo5SNUwfDja0iofa1wSPNFReCUk3pzleKSZtlsJJZKtQJKVKipq2ckB01h3SHlfkJ8
         eGew==
X-Gm-Message-State: AJIora+ybqd1YJd92ph2npEtKt7mKyx512nAQu6yAosnpHqiJRB7TpOa
        D625qKfy3IxN2X0FXJ/J8/nGqA==
X-Google-Smtp-Source: AGRyM1uw7M5enrJUghHWqP8nulOyhBqC8ecUBr0Su18Z2hVapgn9GjOOIeOA+PnF0lUJMjWuREq6JQ==
X-Received: by 2002:a63:4c09:0:b0:3fc:a85f:8c07 with SMTP id z9-20020a634c09000000b003fca85f8c07mr6028120pga.509.1655412477481;
        Thu, 16 Jun 2022 13:47:57 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: ecx: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:18 -0700
Message-Id: <165541242280.9040.11682321805637349201.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526203758.831301-1-krzysztof.kozlowski@linaro.org>
References: <20220526203758.831301-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 May 2022 22:37:58 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: ecx: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/4f2ff3feab43d81e1627b02b8a0ad9938dcbdc99

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
