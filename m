Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E3D070299B
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 11:54:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239768AbjEOJyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 05:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240013AbjEOJxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 05:53:48 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB8FD213D
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 02:53:16 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-306f2b42a86so8177160f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 02:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144395; x=1686736395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4xoKLoBtO6JbCjepCa5c12r42aP/CGO4v/y128we9BQ=;
        b=21H8dYaOZv0Nu034SJA5yJfTXlAxp6uvDuHiV/WEDpTbaVXJcFmPyMwDxnaCOeiS/U
         HxqhNJTJfl3A6P48YyRVZZzuJQaPXSjnqQL6LuJ0NwwEcMhsQgbIk0W3IYBb8YRb2DO5
         oDqHoX7ivR91Q93gcXMODInL29kM5lEuOOC+m5/VKPERSN0Rs639hLjfeJt1+K7GgXYB
         lLLBqGyox5z/nboZv0gjYUWjMTRo9vJa1Xzbc3Wk6gM22vrCmIpohBgx5rqrEmUasxYY
         vUGl7IVC1Jf/Nb52OUlLgF641K9pUd6AzBuloMij778+qBcXcfM3+mHhgQbWQAMSDI+x
         CLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144395; x=1686736395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4xoKLoBtO6JbCjepCa5c12r42aP/CGO4v/y128we9BQ=;
        b=kOI2tdLFgFRuK/cdMPKa33EsPc4a00ea9gzYXsm7FTMw1OMWzpd82WV7okxN1EIKL1
         PTH/lLFtqTuneBL2dd0QmDHQg0xoNKC5E3Rfg5zn4LSeI8jCmHtMdDDfhBduIQvh562L
         5+ovBWtoDENVe2X4WCYo1z9LQE414FZd/zXQZ3N4yu6b+Armw+LoG/LtOGdXKcH3EpfE
         pfmgQR3mHavgz3GcqpyWnGxgM0UVqyDXU5MV0p17vKUL4r78pUg2OfjOALVyVbvjDmG8
         tRvglfL3W3cMkNvy1jiiUNRDXdzH43aWt+Mka573dzPkOPEm80E42HSOUNxyLFNvboQi
         YMaQ==
X-Gm-Message-State: AC+VfDylYAb1f37+oB9cV9zWpapLJn+tYQdShy3xA+o0mEtERg+itTcn
        2QcdBmcNWrzg0RF1if9wkgb9eQ==
X-Google-Smtp-Source: ACHHUZ7uQiiIX7ojRv2QU5h9YTwUl2i38KxCdmaX6EFJ8ZTx9bFauBpjvVJkLmp8Na07xcfW2d3LBg==
X-Received: by 2002:adf:e84e:0:b0:306:35fa:202b with SMTP id d14-20020adfe84e000000b0030635fa202bmr21392240wrn.6.1684144395121;
        Mon, 15 May 2023 02:53:15 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1388:9f6:c7d9:3b77])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600000cc00b0030795b2be15sm24228443wrx.103.2023.05.15.02.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 02:53:14 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v4 0/3] arm64: qcom: sa8775p: add support for UFS
Date:   Mon, 15 May 2023 11:53:05 +0200
Message-Id: <20230515095308.183424-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Update relevant DT bindings, add new config to the driver and add UFS
and PHY nodes to the .dtsi and enable them in the board .dts for
sa8775p-ride.

v3 -> v4:
- drop applied patches
- mark the UFS as dma-coherent

v2 -> v3:
- fix DT bindings: move allOf: below required:
- collect review tags

v1 -> v2:
- order new compatibles alphabetically
- rework the UFS PHY bindings to accomodate more clocks
- add a comment in the .dts regarding a non-standard clock used
  by the UFS PHY

Bartosz Golaszewski (3):
  dt-bindings: ufs: qcom: add compatible for sa8775p
  arm64: dts: qcom: sa8775p: add UFS nodes
  arm64: dts: qcom: sa8775p-ride: enable UFS

 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 19 ++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 59 +++++++++++++++++++
 3 files changed, 80 insertions(+)

-- 
2.39.2

