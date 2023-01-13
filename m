Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC50C6694BF
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 11:53:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241378AbjAMKxQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 05:53:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241192AbjAMKwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 05:52:09 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF527A218
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:50:44 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id ud5so51430073ejc.4
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3myJhmUiWtH4lRuqHXfTN8UvF1xgmdxDNFNibkPzqEo=;
        b=BC9MlILMDFqLAU51lB/3MZX+vYQ8+pMmfSDVPlktQN/IGNMDi6nOhvsBsAFuGdyU1s
         nfC7Ms5Ph7h8D479deeejcBG6DqlcvEuV9XD4Lup9fMztlZaeJVgTlxTZDGDHFUBT6N2
         4G2E/mQh1DTDilCdaJjdUGL1duCG2ayQCN+rgMyfEk15h/9dm8PFrT7AbutXDrlWk7kj
         pmNk84lbD1FCYIUueUfz+UHxsqnewAUf9xEMNP24gaDsM6x/AJaj4Phs5H4SIqx0ZptO
         jQnG14NR3T4Zb5zjzV/t4c1uLXYYe2yiiZcgiV9wt3UmB5tOgeIdvICq53jTFIJTCcoD
         38JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3myJhmUiWtH4lRuqHXfTN8UvF1xgmdxDNFNibkPzqEo=;
        b=irRcxkyh9m6F8pfI1+heSn6lp2etpBSsVsN3HebSkd2c+4UR0XUNd5BwAi6X6mNVdp
         P0G6ac86vkqdIyIHsBXVdA6wsLGtVDI1k7kZQ+7HQQ88UFXoVLDS4QECmcdDdxwMjQU3
         xJmIN4vQFi76npM2zTyv6b61Z/pJ/ilMQP4jlmvZ771bXV9B4jwj6wnXJTEvlGAucaHc
         0awbaHEgVo9P9hQoUddYnxwt1WoT59PFoHRsDtxISVTxrbuLspMfGSghLJXnXRGKN8s1
         D/k5DEscAU3kct22kOL1VxN4M6yvo02787cqAWmKjNvPL1JGz8VYwRPKIXYlO88qnjar
         qBsw==
X-Gm-Message-State: AFqh2krV/c5+GO9KIqM0LRZen7WfQ0m7atc1YO13BMEP67H/ByPe/9Pt
        f3tK+cavBJqquw3FnuG4M/T2+g==
X-Google-Smtp-Source: AMrXdXuC+Ik1UNqGaX8tn7V1Fpmvu8fTO228HDTEWSJRFm2T0LYJ0k3KNCWO1pFolMux+0RzuAcdJg==
X-Received: by 2002:a17:906:5dad:b0:7c0:dfba:54d3 with SMTP id n13-20020a1709065dad00b007c0dfba54d3mr10799998ejv.20.1673607043247;
        Fri, 13 Jan 2023 02:50:43 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c2-20020a17090618a200b0077a8fa8ba55sm8348581ejf.210.2023.01.13.02.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 02:50:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Andy Gross <agross@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Iskren Chernev <me@iskren.info>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Linus Walleij <linus.walleij@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: (subset) [PATCH 6/9] dt-bindings: pinctrl: qcom,sm8350-tlmm: correct pins pattern
Date:   Fri, 13 Jan 2023 11:50:17 +0100
Message-Id: <167360698783.32701.16349619919183432543.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221230135645.56401-6-krzysztof.kozlowski@linaro.org>
References: <20221230135645.56401-1-krzysztof.kozlowski@linaro.org> <20221230135645.56401-6-krzysztof.kozlowski@linaro.org>
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

On Fri, 30 Dec 2022 14:56:42 +0100, Krzysztof Kozlowski wrote:
> SM8350 TLMM pin controller has GPIOs 0-202.
> 
> 

Applied, thanks!

[6/9] dt-bindings: pinctrl: qcom,sm8350-tlmm: correct pins pattern
      https://git.kernel.org/krzk/linux-dt/c/45277153d46500ce7f4a1637412f0db7c208300a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
