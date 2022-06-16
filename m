Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3D7354EB80
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378379AbiFPUsA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378606AbiFPUrv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:47:51 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0042B140B0
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:50 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id g16-20020a17090a7d1000b001ea9f820449so2817985pjl.5
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jI0v63PBSGVPSt124UnIjURLvc+gaR0TObdq7eiVWUQ=;
        b=ZeHwvzJ3q/+3ZBap4PfvfSYmv0TjYLJ13/xlILzoRDeXv1x+oS5eFc3ef1W6sY/fOK
         mztPfzyE1XE93Ka52txZigN/zei82xiC5l+pka6/QZZYSTnswTZjvCNvihwa7wuSk3Pf
         T2N9hRm+ytTenTirUFX/pu2ds5XTwcJNr3s4o1E5BrC1R2ety87d1DMrKc1WEkiss7Dl
         4PF1uQ+mvXHIwp/m3VQ7GctOwl53N6xB6+CBOa9hnday5xZfwEgUFft3gdRgy5/mFQOl
         VglJzyRtFWQSdku9fenw5OnDqipUE6wTCh2wrgnS2S8uJXVSNpnNn+0/R3nSpwsD70I1
         mDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jI0v63PBSGVPSt124UnIjURLvc+gaR0TObdq7eiVWUQ=;
        b=fsckRHXZWnQZ5KQKRib0354GhXLhwRsziJ4vHtos53dtPnQuvCllEMzZPKd29Xm2sm
         7FmFYYzrkThTZg4hikdM/gsahfEoAypo/7/PbHumJbrP097OaBzwPuubBWBTLJnUy+ag
         bGCsVM439t+GcnEErq1HppauVQoFJ5Q20Oyikne73alqck69xGXlMeuXCTsyfSoQFqp2
         RJ1hc9QJ9U1haUjp1KonAe3J/qi2/ixm5+Hkl65X6W2ZwFD0PJaZUa8bipoa5pyPSkIo
         y0ZKn0VuUG58smW9cGP5BWfTd7Q6YrpU23sU4tl6Z/NDy2ZmCWQ8EVVkGuJv52Gfmsuy
         XJNQ==
X-Gm-Message-State: AJIora+270rUQtgC+7Mn9SCIdJwXRRm2wgZ+nRxP8z5D8dINq3Tfcr6p
        A+aTYhBz1Z8PqYKtF3LftKHrog==
X-Google-Smtp-Source: AGRyM1tLu4S2H7Em3VeAOe96ffd6xE/n3L6NO+z9sW4bz8zWB9QHkvDIDzzoaEzCkDpExTkfWpM+Ug==
X-Received: by 2002:a17:902:c946:b0:163:ed13:7ab1 with SMTP id i6-20020a170902c94600b00163ed137ab1mr6088277pla.36.1655412470502;
        Thu, 16 Jun 2022 13:47:50 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Olof Johansson <olof@lixom.net>, arm@kernel.org, soc@kernel.org,
        Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brijesh Singh <brijeshkumar.singh@amd.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 2/5] arm64: dts: amd: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:10 -0700
Message-Id: <165541242280.9040.1717314737231352745.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204606.833054-2-krzysztof.kozlowski@linaro.org>
References: <20220526204606.833054-1-krzysztof.kozlowski@linaro.org> <20220526204606.833054-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 May 2022 22:46:03 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[2/5] arm64: dts: amd: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/dec1c62e91ba268ab2a6e339d4d7a59287d5eba1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
