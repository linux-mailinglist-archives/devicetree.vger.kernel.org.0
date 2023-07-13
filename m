Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD3CA75191B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 08:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233441AbjGMGxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 02:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229851AbjGMGxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 02:53:37 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB1D4119
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 23:53:36 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fbea14700bso2618055e9.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 23:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689231215; x=1691823215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjpWO2OjZasyTeIF2pv5leSsc+HeulynCoz1X/RYzdU=;
        b=sCF/Qs3L0Poob/1sga7O6DhhCWyPiAL+NhZxhn1w5P+1Vh3pwAwN/e449yTciOyOQW
         PbgRPaaAfcjQfIYNCWO1B/uVHJZky0Wzwne5Cdg0lu8aF1FawDtLlo9YFczLamOSagQl
         T3RtBaZzvjgYjuxcwcVrJDpA570MQ7v8QYFLn1KCGowtQmEHNaR5L50oG6RdMH6M52zs
         WVL2/Uaw/gEBNM00bpqIug4tjWH1HIlxppfCdQTjaxfbsvniGshuMEEClZRHjZEreGi/
         nChvzYtIz62of4R57EV5OY/Ge4OwYay7YiRrVL5h8GRg+2wLrb7r03Nm0JiiGKqg9NxM
         o1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689231215; x=1691823215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjpWO2OjZasyTeIF2pv5leSsc+HeulynCoz1X/RYzdU=;
        b=NVGnZFZEtmOPsM4Zt0GbxS8DNiDLZvL2392Jh7eB3Tawb66xgovL9UgA3fUTXlf0aF
         Obm47BGnod0NiyJn4CM72fJw1yha+O1iPLrhQOYH1j5ZrQja9+qLus6hWwPtgMwtd66e
         VeuIHTTtey0xLjoLpeIfz8Hn6hUmko5yD9/4y5ngFhblcYRpazE175qkbrhLB0AmbH4T
         +JJnz4D4pfKWowOgDZHif/c4+tIhthhWBtkv5eMe14CtSFfd+QjWYevw4wOrZ8rkPIIX
         vgLCBjeGfnH6gLOhLw4XNLKP5nqtwbCT3AkagPd2pPM+piE/F5xqU+5BEJyXgdGfaBEN
         WLAA==
X-Gm-Message-State: ABy/qLYYCJH7VU0sXBy/YT65u+43R0cN1vRqugK+/Ez/TbrqQIUCpT1S
        9j8KADsUr6HVzIQbjkH87MhXBjqEzfuvEbYu9KYH3A==
X-Google-Smtp-Source: APBJJlE2yPonAA4H/gTOXq2ZklHV6rmtpIiFJcfgXhZWW/QtkXxeJpPwLO1bRXZwggwl+F+2wC1LSw==
X-Received: by 2002:adf:f743:0:b0:311:1501:ba53 with SMTP id z3-20020adff743000000b003111501ba53mr668779wrp.49.1689231215335;
        Wed, 12 Jul 2023 23:53:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id c3-20020a5d4cc3000000b00311299df211sm7024591wrt.77.2023.07.12.23.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 23:53:34 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chanho Min <chanho.min@lge.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: lg: add missing cache properties
Date:   Thu, 13 Jul 2023 08:53:31 +0200
Message-Id: <168923116920.8134.9473166956408655440.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230421223201.115439-1-krzysztof.kozlowski@linaro.org>
References: <20230421223201.115439-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat, 22 Apr 2023 00:32:01 +0200, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified and cache-level properties to fix warnings like:
> 
>   lg1312-ref.dtb: l2-cache0: 'cache-level' is a required property
> 
> 

This was waiting on the list for long time, so I am picking it up. If someone
else prefers to take it, let me know.

Applied, thanks!

[1/1] arm64: dts: lg: add missing cache properties
      https://git.kernel.org/krzk/linux-dt/c/1193001081e98d13c786fe0cae407cb747104cdc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
