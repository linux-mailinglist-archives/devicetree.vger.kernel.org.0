Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA8F2689086
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:19:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232369AbjBCHRi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:17:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232234AbjBCHRh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:17:37 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80C5692190
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:17:33 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bk16so3774070wrb.11
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=APlauoD+cZCP9rrlAWdOSfuEUfUwxPR4mkC7tm9f2jw=;
        b=ZSmRfK3fmu69WSpHhaOJK9YyWllJdUaVAzTEOrOEZ2kF4VQoHU4ud9mdwqLa1YDBAL
         8oVXq3OMNh0iTjPl4V9nzBDa2Ne6UnwXc9YjWBvLx/Er1wL0jSciq19cD9Dd+Kgk+wx/
         gtPTBmBxbcFS871l9HYuT/XRfca3rHTqkbmJpDVd9EPv3W2pYUaB2mqLpu5yQMCovrKJ
         5ZCaEahqOylE0L4zlwNaAMpClZZh0y5KKe0th6JMqqY7ei41WgO2fncP0nK/1dzjnbYt
         zyGIuJoSKTpPT/1m7BXlG54wYW7ylJYCLJfyE3M6wzDa9DJ65Wt4wSH53qQDxNG9RSP+
         +iVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=APlauoD+cZCP9rrlAWdOSfuEUfUwxPR4mkC7tm9f2jw=;
        b=VAinhSmJAn44TkqVxI+y7hD0NMJS3IMG8n+ulx+kI1c1kL3x3i7v8tAwnIJWPOnCLe
         0vzb7ca7UH86FazY6zQ3sYdOvUMEKmsd+xbzE7RDN1Ql5MLvPcVYsJ0bZgtUlLRAFZIY
         BclFSuwB8ilTleH/GCnh8HtC54bLzaelDnpyKMjBH1/K4CZFsKS+GSLSIs1rn8nw6p63
         ok1iMCvVPnRWi/MaN9srvmzUqURwx6Sq2M1XaPOI+2HVd0h74xI4iUdleTCj9acwmWIP
         CytPutNYxlXGiJ51cIVqPYsd0T9zrOWz63QZ2/tctDx/565RypSFnhDbdDiuSAzIBW9T
         45cA==
X-Gm-Message-State: AO0yUKU1eJOQGLiovuRuLe2JGx66JNw5jokBgm4vbmcEnE8tKk21wxh5
        VfQU5q/siRrYM2/679bVLDpoWQ==
X-Google-Smtp-Source: AK7set9U+UnCZOVfPrI8/GftqDWywa9Rn3Eo57WxeJM9YDcXIm1EJKV/tPyXhVeoXyoxPt+5rOGDSw==
X-Received: by 2002:adf:d083:0:b0:2c3:d847:c87d with SMTP id y3-20020adfd083000000b002c3d847c87dmr551950wrh.44.1675408652044;
        Thu, 02 Feb 2023 23:17:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q16-20020adff950000000b002bff574a250sm1291828wrr.2.2023.02.02.23.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 23:17:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Iskren Chernev <me@iskren.info>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Luca Weiss <luca@z3ntu.xyz>, Vinod Koul <vkoul@kernel.org>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>
Subject: Re: (subset) [PATCH v2 01/10] dt-bindings: pinctrl: qcom,msm8226: correct GPIO name pattern
Date:   Fri,  3 Feb 2023 08:17:21 +0100
Message-Id: <167540864401.6835.2390675203030650547.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202104452.299048-2-krzysztof.kozlowski@linaro.org>
References: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org> <20230202104452.299048-2-krzysztof.kozlowski@linaro.org>
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

On Thu, 2 Feb 2023 11:44:43 +0100, Krzysztof Kozlowski wrote:
> The MSM8226 TLMM pin controller has GPIOs 0-116, so correct the pattern
> to bring back missing 107-109.
> 
> 

Applied, thanks!

[01/10] dt-bindings: pinctrl: qcom,msm8226: correct GPIO name pattern
        https://git.kernel.org/krzk/linux-dt/c/792349083a7307bf34de26516bc047cfd5c6296b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
