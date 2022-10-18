Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52E5560300C
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 17:49:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbiJRPth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 11:49:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231239AbiJRPtW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 11:49:22 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2BABC96D3
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:49:18 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id t25so8906017qkm.2
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dWBtepeH+oj5FPwAiSBqpc8NXsH378UuX8/vDNQH0Tg=;
        b=S7b9vOGl5w/9OpAPOR4BJpBmxU5YdHX9XmVXailFRc08rFQzrmDLu/5RdkYGvq9vP4
         pz4hCAEjRQhsGemhjDeYiLOxnSaRFzKYqWVeP8RRbRjj9jpkMr/AzTPy7wt4/q+NWyoR
         5xQuEadFXNsmeWrYMOdDLQuVqjCo001lwLaSVMAJEWPTy+FX+uun6SvrhglqPNiOsiYl
         4dEprU0RGoWIDicwcLRIcXmzXks/9uMMeSmiv03InF8qRPeuFaL18HHKTdzjdfiBC2NH
         ALCcPTi1N5iTCy2OgXaIta0vPRHcfGJQGNUiI3fHkW1i4ngb98D0SIfiGQCys90nMtKb
         mzmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWBtepeH+oj5FPwAiSBqpc8NXsH378UuX8/vDNQH0Tg=;
        b=rPe72AS5BD/BrmEA8YIAj+KStOfKjJs4aJ4k5cbm1Lgl0jhx00wb3IfZEj448Zmrhf
         LuoEql6r4kk0GerEAx0vzNpyv9Lluw6zS8S2yWmh3u7P74otu3/MVjWOBU1f3E9d27/U
         GV6D0U17fjQDpbAObbC6Vax139/+liPAWz1tObW9AJhBAzUcCrevx1FQX+15BP06CQGC
         V9itTW7S2uF1t/rDDrrqJPGqXXOX59nIv3yb8hmrulu16+e53IXV8XXLEwcdAIxRNf7J
         dId59bvrf69UZyCy3N+6zY+PMc91+X7ikDDg3lIRTXTUzxjI4iycoMDVGMAneTZPaSN0
         u/hA==
X-Gm-Message-State: ACrzQf2ALXbdmGppwpf+ftforvntexxaZubyh7dd7VvYTx+Dd2YCDnrd
        VVahDetcVBlcjvmI09dVYSN9lg==
X-Google-Smtp-Source: AMsMyM54A7mm2E4/+f1Rld4ZnKXCmWv9TmwHcjfpP9cJBx8M94ZACcbpFl99LYo9KTl0x47XnocCMA==
X-Received: by 2002:a05:620a:440a:b0:6ec:d931:652d with SMTP id v10-20020a05620a440a00b006ecd931652dmr2236099qkp.344.1666108157580;
        Tue, 18 Oct 2022 08:49:17 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id c25-20020ac86619000000b0039543f89109sm2029202qtp.96.2022.10.18.08.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 08:49:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v3 12/17] dt-bindings: pinctrl: qcom,sm8250: use common TLMM pin schema
Date:   Tue, 18 Oct 2022 11:49:04 -0400
Message-Id: <166610814671.37912.11544638932887012128.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016172212.49105-13-krzysztof.kozlowski@linaro.org>
References: <20221016172212.49105-1-krzysztof.kozlowski@linaro.org> <20221016172212.49105-13-krzysztof.kozlowski@linaro.org>
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

On Sun, 16 Oct 2022 13:22:07 -0400, Krzysztof Kozlowski wrote:
> The common Qualcomm TLMM pin controller schema for pin mux and config
> already brings requirement of function for gpio pins and the definition
> of drive-strength.
> 
> 

Applied, thanks!

[12/17] dt-bindings: pinctrl: qcom,sm8250: use common TLMM pin schema
        https://git.kernel.org/krzk/linux-dt/c/fd69e8befa1cbf29435b0666320d5f8848e8b333

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
