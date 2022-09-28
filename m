Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1D905EDF48
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 16:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234119AbiI1O4f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 10:56:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234309AbiI1O43 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 10:56:29 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12BAF9B859
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 07:56:12 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id s10so14630596ljp.5
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 07:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=WD80FrVdvy3Avi4/+rEs2QAN7n7JbPi4VTfpdv+hG/M=;
        b=dM7LSPe2Kl9eYwv5S6vYy1q/f3+nyBfzky4fq4MGyceP/DKe0isHliv1943SNArxOe
         iRg9vIn7JJpvZVMK656df40iymHXkuM+Opu2pQmNpQWjNOVf46xYfDzDhWWPz9HJBgpn
         A8bmiBSnbJz7jyfc7zPaJiMvt51emYU1Mx2GW/5dCoGyLCSGLQKGBKu8unA53ZiPqvbM
         NG4xupmyRRDhjDK5OEiJbHtjKJCTon04P8x0/iE0E2BCOwfOvtw/keTOMrD+/haZlmzs
         480sTYvd7FylEzgZY2ZzFxnTbhQaBf2BLM+VwQLLF6f/BWPSESVnqDrhVGHRe/g6vH7q
         J9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=WD80FrVdvy3Avi4/+rEs2QAN7n7JbPi4VTfpdv+hG/M=;
        b=MazPykoqj6shxA9FPPMVbDUXy179JDLVw1vQaANNdZuGbYLisr3GMRJ/Ir7FIVah6P
         UNlym3tvhmibqyuffQw7B0YUYecmJFTHAV6NdGxf/UQVKcRbgiN5hvip9F/B54Uz7oi+
         Avx0MMWbu89DTyHzeqE9pnQTqjJa1sCh6DKNfQONBsJu7n6Nu4CGtcy4aL+kxCujmPV3
         pvb6C1FxtFo2ZP7bl/Mocfb8V8m97rnfSM2wqh/0XU5FET6R4rjF8Ah2QA1ZJRDlrg8w
         VOokepLsKlxrtC8sg8M6rbYb5A5FSJF2aRXYwcVh9eHt2f5Ki2Rn0cbMH34oV7krl0uu
         4YHw==
X-Gm-Message-State: ACrzQf2MArzJTNW02qjQbX2cyXpWU2A05hGEvH5Lkx/AKTG5o4XKGcwL
        VZNlNgK6LlJ4VPxrHPK9iUgi9A==
X-Google-Smtp-Source: AMsMyM78t54OBnJwecOi+K74O3HJ6iZUklhvHR9j8ZzUIW/X7apmgvgZ4hUazq8Uftd6Hhs0G7Q/ug==
X-Received: by 2002:a05:651c:146:b0:26d:9eb6:7f35 with SMTP id c6-20020a05651c014600b0026d9eb67f35mr5538134ljd.311.1664376970823;
        Wed, 28 Sep 2022 07:56:10 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651238a600b0048b256bb005sm498094lft.49.2022.09.28.07.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 07:56:10 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/3] clk: qcom: gcc-msm8939: several small fixes
Date:   Wed, 28 Sep 2022 17:56:06 +0300
Message-Id: <20220928145609.375860-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Apply several small fixes used for other Qualcomm clock drivers:
- Use ARRAY_SIZE and parent_hws where applicable in gcc-msm8939 driver
- Move gcc-msm8939 schema from gcc-other to gcc-msm8916 to declare the
  clocks/clock-names used by this platform.

Dmitry Baryshkov (3):
  dt-bindings: clock: move qcom,gcc-msm8939 to qcom,gcc-msm8916.yaml
  clk: qcom: gcc-msm8939: use parent_hws where possible
  clk: qcom: gcc-msm8939: use ARRAY_SIZE instead of specifying
    num_parents

 .../bindings/clock/qcom,gcc-msm8916.yaml      |  11 +-
 .../bindings/clock/qcom,gcc-other.yaml        |   3 -
 drivers/clk/qcom/gcc-msm8939.c                | 552 +++++++++---------
 3 files changed, 284 insertions(+), 282 deletions(-)

-- 
2.35.1

