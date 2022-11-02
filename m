Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2AC6615EA2
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 10:02:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231313AbiKBJCh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 05:02:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbiKBJCD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 05:02:03 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DFC5286D3
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 02:01:47 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bk15so23453301wrb.13
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 02:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fb2K4qbqcK2Y2tqiEOJiLZAT+uIy0/dc8UaXQsewLwA=;
        b=dpnucKdFfRb01PE7FC9/sLijd6yiEF2ZNHCqNyOYl92jBQD+liWzbseCZ9znCF6DKu
         uW5Ca3Hdg7TjaTDw58WkAMxEfqQ38ZR8kaM1szRZOjMF05KhBL48MpXZkuZPHi9NCmaW
         d580Ib0D2Fkg++vdNldRtu/mbdgTZiR2cXJC3jtF3O5wobJATlNzZ8ZaBGZpkuGRmTBd
         YY6RF2ZHGOyT4kd/v1p8mP9zlhJj9B0gyyEvg44aHUQoQgJ5SSzHUdIwiLDiClZf66tL
         j23f3qEDpbQVdcYN7CDeyR5ykf0c9Hok/fj+4fiXQpNUFYYnp7Mvb5IU6RMg5dRsPFBj
         Hzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fb2K4qbqcK2Y2tqiEOJiLZAT+uIy0/dc8UaXQsewLwA=;
        b=aKS8zH94q5rMaifKMdr22xxZnqm8SJJKHF9d71FYOfVQMB865mo42UxA9w8xNipTSm
         whLSFJMvhXTt7jHxXHfpcjXDMPTXO2EVmxILp5pJZaavUbN3bwESEm8AGd780EdhWaW+
         tdmma91dQufTj1f2FL+eJkGa0ENrgN06ZAnWNJFPDwAN7OSsANH5LmQDoH5VJSfOcidi
         S3NCIZE7bXSQs5ci+A/RjlKQ+FNQzd3X+YvI3hRoy+Mcba6GlH0jMhZgSumH33sqjPWr
         B/p0eyVD5wSN1RpdDSRrVjplrl0VTsAbuOzWhPASrphirRC7PyuWNQFc1duRaVDtehWO
         pYDQ==
X-Gm-Message-State: ACrzQf0YMr50149M4MSz8hqCljIzFe1LTn1bhU5VLWOWNhAwb2SSCyA3
        iUw/gB1TA8zfWpipdpGmXNHVZg==
X-Google-Smtp-Source: AMsMyM758pxlcdQy009VmDr37vEIEa83qOgREZR/iULTELuI83RtVabMOnQnI4amuQuknTNLk3Zt8A==
X-Received: by 2002:a05:6000:88:b0:236:b36c:a0d8 with SMTP id m8-20020a056000008800b00236b36ca0d8mr12982433wrx.459.1667379705547;
        Wed, 02 Nov 2022 02:01:45 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id bd26-20020a05600c1f1a00b003cf6c2f9513sm1425322wmb.2.2022.11.02.02.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 02:01:44 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        dmitry.baryshkov@linaro.org, Jonathan Marek <jonathan@marek.ca>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v2 0/5] dispcc-sm8250 misc fixes
Date:   Wed,  2 Nov 2022 10:01:35 +0100
Message-Id: <20221102090140.965450-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v1:
 - Added new a-b/r-b tags
 - Improved commit message - Dmitry
 - Configure dp/edp link parent_hw for sm8150/sc8180

Robert Foss (5):
  clk: qcom: dispcc-sm8250: Disable EDP_GTC for sm8350
  clk: qcom: dispcc-sm8250: Add RETAIN_FF_ENABLE flag for mdss_gdsc
  dt-bindings: clock: dispcc-sm8250: Add EDP_LINK_DIV_CLK_SRC index
  clk: qcom: dispcc-sm8250: Add missing EDP clocks for sm8350
  clk: qcom: dispcc-sm8250: Disable link_div_clk_src for sm8150

 drivers/clk/qcom/dispcc-sm8250.c              | 38 ++++++++++++++++++-
 .../dt-bindings/clock/qcom,dispcc-sm8250.h    |  1 +
 2 files changed, 37 insertions(+), 2 deletions(-)

-- 
2.34.1

