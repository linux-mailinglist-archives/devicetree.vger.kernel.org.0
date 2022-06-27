Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B506B55DE73
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233798AbiF0JQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233802AbiF0JQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:19 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85045614B
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:18 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id h23so17708391ejj.12
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SvR+0eEQRI3z4aAgIy2QfnH6/ZdPcRL8T76st98sLHI=;
        b=khykCVrVTXWyG3kq4eEFbdV0s7UR3BTerYpdpYVmLlz6H2t5Axcw4uzWDK6ytT8/nP
         TnbSDJvGlfKyKLvC5p0JT9Ziw+SzJ10NomsyTUHfU2ZVr0oqrQcAsiM/yQbe7fqe+j52
         423hQyOSIBMTUAcnuNHDetstFLXZ4foXKwHWPijiVUPydt/YmcgrBd9lOuiAyHhb8eG/
         IOvOmvg7ZXK/aKeM2yecE9TpXS00MuEa4R7/ohUMxyXJNZe2hNBPhqoHOFNrIr7VL8Hn
         inC3JuuIvpfQ1ZDrQm1k55/2vDCeimjNLUMbDdra+37CXUdLl/Wa9k3t9JqY+Eeax8Gt
         p8EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SvR+0eEQRI3z4aAgIy2QfnH6/ZdPcRL8T76st98sLHI=;
        b=8Mcvit1HinCfwGFEWUvLGYmnbK4QxIqeNUwV6qv2sLTXLrHkro4A/igZOMANOwdZec
         jVXNBoLHhuSlSK1wz0CqIZ0OWXiSTyERl7fMKyku/TmHDs57CTO6K5vOkoScsBxI/S1A
         DOxOCn0NuELHZvHTt4ETohpDLcZahMgM/SytqHTTjS9X5/+TIicYlfWyxm2rZSFZ8ROB
         7tsSydBJU6XoK4VnKWenWmCdn2yUzkFt3J17PMPn59pYod4h0tEVi+54QfvZngj76RsA
         wkzqrVOQyhHKI0ODwzJxZ/Rpr6xmceOxpWoaQLypWwbe9jepXfihANVrNeaw0kLvWJOT
         rJNg==
X-Gm-Message-State: AJIora/DMBX5T60UpJkZM68q83gXiVogpLLMKJ3+Ugp0RhpxVnQbqvus
        ibqUJ3EePgTKBxTOs4VS7LV6mg==
X-Google-Smtp-Source: AGRyM1u/vCa6Cl3Uxumnhta1mwK5omkwE/QjVmlvJnzpQSYVC5E8vkD8gaYz26M4XzhdjrrM6hCyQQ==
X-Received: by 2002:a17:907:7f22:b0:726:8962:d5a6 with SMTP id qf34-20020a1709077f2200b007268962d5a6mr9514573ejc.717.1656321378180;
        Mon, 27 Jun 2022 02:16:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        krzysztof.kozlowski@linaro.org, Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, bjorn.andersson@linaro.org, olof@lixom.net
Subject: Re: (subset) [PATCH v3 22/40] arm64: dts: qcom: correct gpio-keys properties
Date:   Mon, 27 Jun 2022 11:15:52 +0200
Message-Id: <165632135505.81841.1106202309829076726.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-22-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-22-krzysztof.kozlowski@linaro.org>
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

On Wed, 15 Jun 2022 17:53:15 -0700, Krzysztof Kozlowski wrote:
> gpio-keys children do not use unit addresses.
> 
> 

Applied, thanks!

[22/40] arm64: dts: qcom: correct gpio-keys properties
        https://git.kernel.org/krzk/linux/c/b5ddac0090d9a36a8279a8a998fb5366df1db487

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
