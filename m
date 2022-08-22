Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44F559C74A
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 20:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237778AbiHVSvE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 14:51:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237855AbiHVSup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:50:45 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F7A44BD29
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:03 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id z6so16532960lfu.9
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=rsjsUi5j29pEEYwqLrOimHSSjS8I1Tzv9QAdiQT8qPo=;
        b=LQGklJCGzJGKHdWBkted5ByOVqUVC7J0izLl28gYCPluIn7L0Ez6NyrkxwrK2a8q8p
         Ktftb7A2PEroo6wEZIwBtcIIsxvDh2fMVcQv1waPpo0s1Jspg7npBdJLUG7y+h2MNCzN
         1oYGU7Rmveduyu1Rx+gFlFujMnRVyItJxagzMVfJAZb+kfiqUkHKQnPYR9bV+VkGTg7O
         3uFyHLmSr5XOsciaST3frULP/uFly4YD6sZd7ubkRkbfy5YX3IMBGsfC4I6Kn7Mq4KXl
         KUzV/QFF3ngPfyhbg1vuYJ6yRdVo28JJWd9Hr0P57j3KRWL0j44wAaeMWCAHeNwB8mNU
         mtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=rsjsUi5j29pEEYwqLrOimHSSjS8I1Tzv9QAdiQT8qPo=;
        b=iRYyt5364py7voLbXXzhkXXuSqIcOnuGeId0P8OsS3FcpROtAHW5w+mRLBfRzTyNUf
         d7w/CKLN2Z/6HrMM8Z6ONhvcOvj0pUeAOiD3KTY3Bvvr9vWg0vemsmywtEUT1A9oHPeh
         ACn4SLQvcSMLWOgOB6TiXMfn+sDemclxzNOGsn45LqtGRjCrZdfLU06NDLpv/l3og+t7
         951mCYImQDsP0rHnGu03iqy8Mk2V7FssBNDFhbGFheVi+79GaSB3sl76QmypyQmgFUbg
         AHXGmkJ3STB7qtEbW1XNpKlVDzPANjbtHyzaihBO7/uQXpV714lDdoacHzS5PVlgYBX1
         E/JQ==
X-Gm-Message-State: ACgBeo0MfgRT1lHTPeDRPtcX7cOpWY8OtU2zeBVXMpipgrAbUOaSUvcG
        DCPV/z6shLggw2rM/vmSOK8ZGw==
X-Google-Smtp-Source: AA6agR5DtSe4fBaOZwmnol1A/9xLdl1qZkv2nRAnVVepcoZn0MEJuGyfMi+XYztw6sZ5o48fs5c2NA==
X-Received: by 2002:a19:5f4f:0:b0:492:e5d9:a0eb with SMTP id a15-20020a195f4f000000b00492e5d9a0ebmr1992808lfj.377.1661194141378;
        Mon, 22 Aug 2022 11:49:01 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c118b00b00261bc05c461sm1672599ljo.50.2022.08.22.11.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:49:00 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 0/3] dt-bindings: msm/dp: cleanup Qualcomm DP and eDP bidndings
Date:   Mon, 22 Aug 2022 21:48:57 +0300
Message-Id: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix several issues with the DP and eDP bindings on the Qualcomm
platforms. While we are at it, fix several small issues with platform
files declaring these controllers.

Changes since v2:
 - Fixed commit message for the patch 1 to mention proper commit IDs.
 - Dropped dts patches which were picked up by respective tree.

Changes since v1:
 - Reordered patches to cleanup dts first, to remove warnings from DP
   schema
 - Split DP register blocks in sc7180.dtsi and sc7280.dtsi
 - Cleaned up the p1 register block handling: marked it as required for DP
   and absent for eDP controllers
 - Dropped unused xo and ref clocks from sc7280-edp node, they belong to
   eDP PHY.

Dmitry Baryshkov (3):
  dt-bindings: msm/dp: mark vdda supplies as deprecated
  dt-bindings: msm/dp: add missing properties
  dt-bindings: msm/dp: handle DP vs eDP difference

 .../bindings/display/msm/dp-controller.yaml   | 47 ++++++++++++++++---
 1 file changed, 41 insertions(+), 6 deletions(-)

-- 
2.35.1

