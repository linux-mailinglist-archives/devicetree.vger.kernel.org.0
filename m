Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B690C5B82B6
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 10:15:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbiINIPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 04:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230246AbiINIPC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 04:15:02 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62BC201A0
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 01:15:00 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id bn9so17264484ljb.6
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 01:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8RRCOdQnpmtutEqtQvPMLNpTzK51CTB0ru4gSDKO/Us=;
        b=jnrXEJwBplft7oAfUxVnfOBe1djOFZrTwOKzU7CTnT9o4juLeF7MrfO8W8TOXELwZa
         t3oveUNDzKjCySsIPgSr/qMbn20K5iSj/H3MsAHQQC2mEqrWHU0Crb1pRdDyW/zeTx37
         96lejqHoMC2NHYhMMwBBHX8y6PgOAEEcUHAn6qVBLS2Au+2QwpF/xr9otPzidCSKSIcL
         YTIw38e4jpwiQtjFlTEwHKwXyfFf2vZn6hjRT5pwnlWRshPNucreya0ab1id2a5pZ2Ns
         GYFs6B37gXIfWp6NrH6q+0mx8W50LLhcAxkTZSgwhFyur3X/vLVwRvHR7OMhMenoqLHX
         vbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8RRCOdQnpmtutEqtQvPMLNpTzK51CTB0ru4gSDKO/Us=;
        b=yaS7xQC4a14cGyM+uLDz+XaSDw8JmG9QyMauh7vp+rOTQF57+YnvxXQzNWcM3P72vj
         MpJdFAhAuUPFzencWaGTWEg8SyLXSXelV1cv2yWg4R5aZhYGeaxHPZ42oQ91H8aCWiyp
         gWchq20QXEPO6H5lVS28OtM6VSeTppcI5DOOxGn0En3V48753VeN2H1f9nFoFOZ2dvVQ
         QJGWWtvcNsYGygSEuQtkwZmK3z+v/NidEX5DW621oJJdxq37DOsSb6ITXdOfs0GcQ9S4
         6jvR1hHc5PLdu9JyDPtQzbibwLaCQM4FFG3QNu8ww/063dqHsCSU/Zbu3aehlSXB2233
         pW/g==
X-Gm-Message-State: ACgBeo1L441gE5hx+NjKKd6S3WH08fkmCjVdkLsXzG29WxIqcBt9wOdj
        Mw970QUWmLKfix5hSbSoXSU1lg==
X-Google-Smtp-Source: AA6agR7O0xXmBUyN6fGuo0VjLxLTdeBiYX55+Dg0mviXsfPe9YIpYWX6avBhKAr/0quudkM0E9qY6A==
X-Received: by 2002:a2e:904b:0:b0:26c:fbe:ef40 with SMTP id n11-20020a2e904b000000b0026c0fbeef40mr3268873ljg.219.1663143299004;
        Wed, 14 Sep 2022 01:14:59 -0700 (PDT)
Received: from fedora.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id 2-20020a2e0902000000b0026ad753448fsm2324671ljj.85.2022.09.14.01.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 01:14:58 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 2/5] clk: qcom: gcc-msm8660: use ARRAY_SIZE instead of specifying num_parents
Date:   Wed, 14 Sep 2022 10:14:54 +0200
Message-Id: <20220914081454.350428-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220909105136.3733919-3-dmitry.baryshkov@linaro.org>
References: <20220909105136.3733919-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
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

> Use ARRAY_SIZE() instead of manually specifying num_parents. This makes
> adding/removing entries to/from parent_data easy and errorproof.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
