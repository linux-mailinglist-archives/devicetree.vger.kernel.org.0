Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71C8C356F9B
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 17:02:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345458AbhDGPCN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 11:02:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243243AbhDGPCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 11:02:13 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25717C061756
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 08:02:03 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id g8so29002965lfv.12
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 08:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/LBtCivT8RjVxvsmi0WxRFn8L0eyOzWjgUYimtMST2k=;
        b=SYjfGs/hCTzsdJPGSZT5lbyFGm+CbUsITCHHvnZz+buGVcvltB/e9AmsHLQc6C+6rt
         i7V7OT2Vy8LXGem+BJHUY5d6WlWH5h4D2Uc6EuoDZ3SspKAX59VQWr+mCU7lDK8AB72w
         IUIs3orUjIyDMNsxjkJMawuPzsciI2ApBJ0nSDzNm6DIPxmO9vZc9h48KjuEMeRVBMvQ
         5JKhyKAFaGrb9UTFxa+lZRCDIK9sU4+k+wbvjJQnKf+GMam18pXsHeUv4YtFiETbSE4E
         8psB3UN9MD05kvQBaE0QxJIM8RG4wLX0w3closJNtrhDgsjFWaYVoSUmCJU2o8ya0Vdl
         0IjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/LBtCivT8RjVxvsmi0WxRFn8L0eyOzWjgUYimtMST2k=;
        b=VVwiUK7kMhp11SkwG+4D5i9wQqHP4AlLnI9PbHU/AtM1VRBqeurGR2+NYNNWdYnb6u
         48ibSTUMa47Bl4zudAQIlpOfshwq4E3vmMSUNLle165RAcJJAyZ7swhR7LPLo0Yr7gvX
         Px+zIwyZMZMF9suk/3jOjxgH32JFPanr7Y+jabKcIfhxx9mNtvVc9fRfEQ3asFl5jlrY
         fFtsUsJTmbiJ/nlSB1CBY6jj9/5y6AZvOph7NbEqKH9u+bQCn6zsvv0SIojyAVvVgr0G
         3rlND7nnQYVE2UK6k8rP79rNaBfK8ovh5yJ4p+Xh/U5vaUBsOVf4PXwLKFnjhfWab0MG
         XR7w==
X-Gm-Message-State: AOAM530ALGLhRXCdrx4eJf7b+izlwqO23B1n0Iak6E7500k84wddHYFZ
        7wIce+UNdiGCj+r/aB29fDw8SQ==
X-Google-Smtp-Source: ABdhPJykHSWWklYcE1eNJZmtmV9MVnhC03A+eepjyV3mrjNDR/ybJhP6m7UIxJqF3QhM4rq7fON97g==
X-Received: by 2002:ac2:599c:: with SMTP id w28mr2652623lfn.381.1617807721313;
        Wed, 07 Apr 2021 08:02:01 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o11sm2552142ljg.42.2021.04.07.08.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 08:02:00 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] drm/msm/dpu: always use mdp device to scale bandwidth
Date:   Wed,  7 Apr 2021 18:01:53 +0300
Message-Id: <20210407150157.801210-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently DPU driver scales bandwidth and core clock for sc7180 only,
while the rest of chips get static bandwidth votes. Make all chipsets
scale bandwidth and clock per composition requirements like sc7180 does.
Drop old voting path completely.

Changes since v1:
 - Add dts changes as requested by Kalyan Thota


