Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47B5468BB34
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 12:20:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbjBFLU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 06:20:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbjBFLUZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 06:20:25 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16909FF1D
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 03:20:23 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso8470924wms.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 03:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CgqT+Qh3H+ehnXxQRC0o48wkLUjHWORXJIyFdZ5LR0I=;
        b=jJ2+q49iChg2f303Hmxygc3rGE2ab3YP34u9vAVIxxUI5jW6oZzZK0i6BGpC+/Z6t6
         N/zscPMQHYQ7801W1XGiN4HUagBl7Q9B0BSLChDCRaPpbFE2cIvaX0iIOfTqLOJujDNl
         fgmHtiKvaBjZ01lwUh4HCS7Pp9Z2SdsaEN2rId70WcmTpdzJHBID07mbwySO4aiyDphA
         PFO9u0Nqmg6s27w4S2uD4pAMvlRlas4G9NbL4aJcR2r774w/uaUpMWD24TY3FltjRAtw
         JUD2ojwfeHUIFiaNvNPtKTPbcSdYsCkLFZu3E7NgXfNTEskzPsG9taqnx2LwcfG2CTBX
         zd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CgqT+Qh3H+ehnXxQRC0o48wkLUjHWORXJIyFdZ5LR0I=;
        b=v7NP7DlS1SwutuMlLxiC7htErGUgoVweuGJwWW9STuLHXWRignByDY9MVE/SV4Wi0w
         +/ecMfph6AbN6c6R4rgtZLRggY6FXtWNwzrGFi03FVbQBX2yond+I90TUQjGK7HDmCEl
         /RrhcgvYguWYLd4y8So3ZxfSv/aJ7oepRYySiqhG0voBt8etMh7s1veti1a2NNQ7bU54
         7EpuaHSdLdsCN7UBMsYj090kDUBxOtQJe5n+ftYCBMvE4oSEtopJf8IBTXG9J2jDfnfa
         agKRi1KJnyNFjJhWiAWQjMymlQVuGBELTuNMhqCygWo8FxoQtaGci/wBW/UeAYb3rJTw
         nO1Q==
X-Gm-Message-State: AO0yUKVubIwm5e6pzktGxLYu3liGo6QmFs4qk7yW1CQO3+KnrMXdjpNT
        e59KDemqQwUDu7Nn8zpb1wugZA==
X-Google-Smtp-Source: AK7set95TJcNejG/WfrCYOeiWQSaQyUKznpZnFPlYjJk2e/uOklwjrYMl0adxJ4SeysqvV6009c2+g==
X-Received: by 2002:a05:600c:3795:b0:3c6:e61e:ae71 with SMTP id o21-20020a05600c379500b003c6e61eae71mr20928657wmr.1.1675682422531;
        Mon, 06 Feb 2023 03:20:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u2-20020a7bc042000000b003dd8feea827sm15514587wmc.4.2023.02.06.03.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 03:20:22 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: (subset) [PATCH 2/5] dt-bindings: pinctrl: qcom,sm8250-lpass-lpi: correct GPIO name pattern
Date:   Mon,  6 Feb 2023 12:20:16 +0100
Message-Id: <167568224369.84151.15382431118501691389.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203164854.390080-2-krzysztof.kozlowski@linaro.org>
References: <20230203164854.390080-1-krzysztof.kozlowski@linaro.org> <20230203164854.390080-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 Feb 2023 17:48:51 +0100, Krzysztof Kozlowski wrote:
> The SM8250 LPASS pin controller has GPIOs 0-13, so narrow the pattern of
> possible GPIO names.
> 
> 

Applied, thanks!

[2/5] dt-bindings: pinctrl: qcom,sm8250-lpass-lpi: correct GPIO name pattern
      https://git.kernel.org/krzk/linux-dt/c/315dffb843f75cec4458714f4d151d5775e797de

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
