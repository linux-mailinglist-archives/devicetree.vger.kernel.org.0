Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CED755D2AC
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233831AbiF0JQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233509AbiF0JQZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:25 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D35C460F4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:20 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id h23so17709467ejj.12
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=2Fqyg9C0YVFzyK1iMgVUn7n3ab05J1+6/AOtaaEs2lo=;
        b=BLQB6PAt3wDY+OC/w8s4493IlGzY/KsudGbyfBjPFbbgzAN8ZEXS9zIPttVQQGpVsR
         uTjVVNHnC3gugqjPUCG7YGXwh1WUkMEanidhBYU7j9WM1mMd8/CVX5NhT0+2SDWcRMcf
         ugruGVhZKfe7xr4Q8j4Gj7XPksXGzutTApWgUhCtjrXZ3NxsvoxSbi21girOBol9Rizo
         yCeUHo/0QIdOGuRUkXhrlpE3XocbsMa1QSiTLG8DyoNVB65MoBF4Gu8qMiN9LeqYBEl9
         oUxoV/b2a0bqFYHMw/DMKo9Z6Np5tr650bA40EbAYyF4DDQPZOYuw/GeftOv+3o5wTMq
         3yRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2Fqyg9C0YVFzyK1iMgVUn7n3ab05J1+6/AOtaaEs2lo=;
        b=fYhO5UMWQtOfc+iz1+PW72JZwulB9o+sIuXhAe2OclF70Zf2vzTGVQEVtW2a4iAwZw
         F9GE4FfE003qOWAnNzYHos8P/V4mjdDaVqM+fdSJqvWXiyXCJ4/kMxpMG8mL0NzMbD8r
         rYkteCBLMBwv9zwMDoi/yCmBIrgZtA5PO06oiQ1Euj8+6qqtxrKVpQ7iSVKgp1KDa36s
         L1Jifmj0ASm5DM3eCTgkPV5k/M9P8LQyV6Wp0O9k/IoYIJm3T9rAxqhbvh85P7OQ1R5l
         IN+4etLgtBXVlic9aGkdbkPXcnw1vPif7iUxIeHU2Ru4SW1aTIhLADeTwIJNyr7BsEa/
         hkkw==
X-Gm-Message-State: AJIora/SZrrjf/yiRZhTLMMKgGhkrk+EpYuOZwj59Xtv8td8UtLNMO3x
        c5dq2eSJh/XxGGBb1RzDSQaWZw==
X-Google-Smtp-Source: AGRyM1ve80Csa3fctAzzt6e06uZVxxk20Y9k2+j9/VcyLhE1hqdWUtICp2LkmhKpII7QnT3IxcayBA==
X-Received: by 2002:a17:907:3e11:b0:726:372b:6c32 with SMTP id hp17-20020a1709073e1100b00726372b6c32mr11930678ejc.157.1656321380448;
        Mon, 27 Jun 2022 02:16:20 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        krzysztof.kozlowski@linaro.org, Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, bjorn.andersson@linaro.org, olof@lixom.net
Subject: Re: (subset) [PATCH v3 24/40] arm64: dts: qcom: align led node names with dtschema
Date:   Mon, 27 Jun 2022 11:15:54 +0200
Message-Id: <165632135505.81841.3254747322278026841.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-24-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-24-krzysztof.kozlowski@linaro.org>
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

On Wed, 15 Jun 2022 17:53:17 -0700, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> with 'led'.
> 
> 

Applied, thanks!

[24/40] arm64: dts: qcom: align led node names with dtschema
        https://git.kernel.org/krzk/linux/c/365f7c26080fefc78a6d76ee4ba29e33a5a270d5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
