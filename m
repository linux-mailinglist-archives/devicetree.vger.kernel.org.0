Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCB868907C
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:19:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232346AbjBCHRk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:17:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232037AbjBCHRi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:17:38 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11F468F27B
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:17:37 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id d14so3781098wrr.9
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yBmsftP+GAWmlAquXkMScqMcMqKunjRFUolMRfLIvDc=;
        b=qTglfR1djf1Iq65IprsCKWWaIgWuZB5B1LbqZjdS1nSqcgFYnlrZsatht1iNn27QVQ
         rc7pg5EZR40t6W5YtgBDJevhSdhWr6E8kVJjI5Xzmqy8J7tBx0/K8nzNZaP25FTg9sp7
         N3Mj6i76FrCKlJVDJdaQo/0+ADhqeLafFmFtUte6Jk8J5kYIoUasuqQrUREeaoJiAgF7
         nFO0PGwR3IkiUMpS0gtMWf9TTadqktJL/H1i3zLYzpM/6PiV+Z6ZxfM9blUSTpPI0xSu
         Hn8YbqNMos1ky5zEnhAFyN/QzkyhDuLcNDjLBQj7pRZ32oLXTUmCcDgttX2dPD3Mt9+8
         r1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yBmsftP+GAWmlAquXkMScqMcMqKunjRFUolMRfLIvDc=;
        b=vPf0c9DmRr7gxMDBPp0lQsTzvd6+WROaRHdvtGUzPuR2aGNpjVssd1hKuHvO8IXaCM
         tspVvKx5HyisjYXqDfgYy3rhR/BgFjXjCzqvebvH0AABYNcu8VxleLR8vm1VH7f9yl7v
         Qsex16wgkj15g5oCKcQl9R67LyJs2XN3BsNrZ7yzB863xeKd65laDhoO7k1gPIoqSlwN
         U2Izdk2inZjmznjkS7G6a2d37lkLqo/KdSIPJwJU+g/RdyY+2dM5/WS8DOzlnqreyKu+
         mI4noU1zTtk1r8Jla2klD9TW6l5UwXEaaWNObiqwdIAbDa7oRZL3UEj95PZaCnSRk27G
         WHNw==
X-Gm-Message-State: AO0yUKXCF20+nQ8ay/eWJIZF0NoulR8B4t5jZCA0DobvehCd4CnT29uv
        R5/V1/meseeK/yl1CqnHSOmQ5g==
X-Google-Smtp-Source: AK7set/NehtmqA2e9h0V97neCJ/DT85nXS+R82ROQ/ZB16Ub77etI/id23JuEAPcvSwB6AXtoApVqw==
X-Received: by 2002:a05:6000:182:b0:2c3:57c5:d17d with SMTP id p2-20020a056000018200b002c357c5d17dmr7525537wrx.49.1675408655558;
        Thu, 02 Feb 2023 23:17:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q16-20020adff950000000b002bff574a250sm1291828wrr.2.2023.02.02.23.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 23:17:35 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Iskren Chernev <me@iskren.info>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: (subset) [PATCH v2 03/10] dt-bindings: pinctrl: qcom,sm6375: correct GPIO name pattern and example
Date:   Fri,  3 Feb 2023 08:17:23 +0100
Message-Id: <167540864401.6835.2298221420493281083.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202104452.299048-4-krzysztof.kozlowski@linaro.org>
References: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org> <20230202104452.299048-4-krzysztof.kozlowski@linaro.org>
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

On Thu, 2 Feb 2023 11:44:45 +0100, Krzysztof Kozlowski wrote:
> The SM6375 TLMM pin controller has GPIOs 0-155, so narrow the pattern
> and gpio-ranges in the example.
> 
> 

Applied, thanks!

[03/10] dt-bindings: pinctrl: qcom,sm6375: correct GPIO name pattern and example
        https://git.kernel.org/krzk/linux-dt/c/a51c1f0244c84e482f1ceb4701c38aaa4b224baf

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
