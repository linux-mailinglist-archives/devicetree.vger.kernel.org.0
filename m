Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34BFE60191A
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:12:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231136AbiJQUMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbiJQUML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:12:11 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B77CE7C778
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:11:07 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id c23so8458387qtw.8
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELxpcD2V+g7AlHzgweIXKsiOGdQ0NM+0PGHARpqHIJQ=;
        b=IG3+ISqWsGrvdC0HG4ACkT7zwnV7WUQJ7DXbhl8U1ByEm1bW/ZpXeMUC/FL9Koi3d/
         KQro/3PTelzTw3gD25xbUYvfUFgw1PHgwZnn3C0WElYSFaMJcG3qtlWA7oXFABwfQeAu
         z0Bm9EL2q/qmGPBl7CRM2javk5Maru/OncvkESjCGt9OXCWNisHeCOwFiAL3P1c+yO1B
         6VuhxGDXql6WfWiaY+Ihraf1yNdEjOItqKAK0KrMJ4iaUiLy/olREkMc1VbkrVZIOt56
         802M2VpFGTE5IimbQ0zkoYIq6YWm392tWpHavyWYBkKMDkdNCDDDb7PZe6Afb3buja0C
         UoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELxpcD2V+g7AlHzgweIXKsiOGdQ0NM+0PGHARpqHIJQ=;
        b=Kfu+ZuY4ZhONwGJ8+Vbea7q1ce7aIsO4Hj2uU7XinAdQQic8Pl+p5fuIQY6cG2BfOk
         vTJpxwk07g8ako0ukOUswWUfnfcOEugzTLQ+TtoZqgeJaKfW34PA8FcLl8z77vwV0kQ1
         IwU31FiGQm7McAZmlpDN0ycY3SRI3aN1DwLV0oGkhSr29rCjXllmMNBcoz2U86wdzyoN
         ugluPgrrwKs8Adm2tSPEssTMxIN3OZXnv15pkd+xssWPY/RUaA6t1Mlpnd6dukDaMXYs
         bA3hNByoszij/PW3OT2bq9nOzi1TP3cAao8Cjl+gMHMY7hjvya5xCAVFuNUEdCIjrX03
         LyRg==
X-Gm-Message-State: ACrzQf1q72Az0odvOdFMvN6BVDJkjpXXt48dWiz++DJO3Pn2wnEUcYit
        9zsRH04yOFLMAl/0cZzaydYVuw==
X-Google-Smtp-Source: AMsMyM6/gKFkOxhR4PwyjS5XF9FXDHztUy8cKizy0hC+ka4MezIUXhA2NEd5EWUYjH1yCWhIyp8NtA==
X-Received: by 2002:ac8:5f12:0:b0:39c:d2ff:13aa with SMTP id x18-20020ac85f12000000b0039cd2ff13aamr9949770qta.193.1666037378538;
        Mon, 17 Oct 2022 13:09:38 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:09:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v5 34/34] dt-bindings: pinctrl: qcom,sc8280xp: fix indentation in example (remaining piece)
Date:   Mon, 17 Oct 2022 16:08:15 -0400
Message-Id: <166603728603.4991.8364006823893676349.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-35-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org> <20221016170035.35014-35-krzysztof.kozlowski@linaro.org>
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

On Sun, 16 Oct 2022 13:00:35 -0400, Krzysztof Kozlowski wrote:
> Bindings example should be indented with 4-spaces.  Previous adjustment
> missefd one spot.
> 
> 

Applied, thanks!

[34/34] dt-bindings: pinctrl: qcom,sc8280xp: fix indentation in example (remaining piece)
        https://git.kernel.org/krzk/linux-dt/c/0eaaf138fff0b61ff28707502fdea9bdbade3958

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
