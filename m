Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B18B434CF96
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 14:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231129AbhC2MBT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 08:01:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231395AbhC2MBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 08:01:01 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB89C061756
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:01:00 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id b14so17998891lfv.8
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=698miHjU8QPhMxdIPGrSpPRcB7+3WbXHAvlZkfluOik=;
        b=JX7qOGz4nkZ3ZR2P1A12dPwaRnK7Z96XKYj2kghAv5gksNFJBA2r/3AOGUSXL0m9Vw
         LvvFg4RIMkZZaeRw9KIVLvml2OT80eNHCLKfb2ZD/Bns4Gy1WgwtABXE+RAHaVmM4aQh
         +Y1Ma34HJhiYos+FpWGkj5h/F2u5dPBluAlEiDpFpUmBxci1Dk0P1u1DfR9MQsoK2o5d
         FawN080nMrYMI4XH6Yr4Veeq0Fh27vaVJjEVDhGfvN/KNlL4mrwXF6ldWqyD8T7Kpx2I
         fWUPb1ipcn/Ng6nwXjp2fpFaLcj+KG3DsC9S5u55n16oCppKhY5HC6JfBsycJAMV0CvQ
         lt+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=698miHjU8QPhMxdIPGrSpPRcB7+3WbXHAvlZkfluOik=;
        b=W1DPrAPofZFA/4g6qzoHVWUadSb/2VOTqrUSwv03JPXxZHbHJp1o25ywZjb+VpCY11
         B0BWTsDZzSF0Bn22DuCOYTjF9uag8aI3E/fVgJ53lIEwyJq3U7vcKtFPwMWa5yIOu0Mc
         wzCKSlsvAaJCKcfMYs1vbmNB0gU+3yQrC9iFLwn7b73Nvr9aCoVIcprHrXMAyIrKuluq
         pVAwfc1ZdHu+ysraZKMWKm3Xk+Bsswx7uyrFVA5ZEH/RTZC47D7olmsFeKXAq2e9GyQd
         0zZ1sphcNsN7l+G0uDQJv5LyO+RtmIu29cUTWErFCNvWGeZEc+GTldO65rljWkvVXKBA
         fvTQ==
X-Gm-Message-State: AOAM533/Y9i2if2OmBhK+ztgX/se1Ytu/7Mb58PhynW1ZH1JyRvn9G57
        6K0X5N5PAsCZPLsC8KnVQeNNrg==
X-Google-Smtp-Source: ABdhPJxkbGirUfUXLXHbx1tMMrtYXyaTiDNA3VzlnSUVOzrnIafiD0+3ZIvqyBDxW0111g8SajWY1A==
X-Received: by 2002:a05:6512:ce:: with SMTP id c14mr16346063lfp.64.1617019258780;
        Mon, 29 Mar 2021 05:00:58 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d8sm2415240ljc.129.2021.03.29.05.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 05:00:58 -0700 (PDT)
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
Subject: [PATCH v4 0/4] arm64: dts: qcom: sm8250: fix display nodes
Date:   Mon, 29 Mar 2021 15:00:47 +0300
Message-Id: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a series of patches developed by Jonathan Marek, and picked up
to split them, so that dts fixes can be picked up into stable branch

Add sm8150/sm8250 compatibles to drm/msm and fix the sm8250
display nodes.

v2: do not remove mmcx-supply from dispcc node
v3: remove references to dp_phy (missed this in v2, sorry for the spam)
v4: split patches to let fixes be picked up into stable branch

----------------------------------------------------------------
Jonathan Marek (4):
      arm64: dts: qcom: sm8250: fix display nodes
      dt-bindings: msm/disp: add compatibles for sm8150/sm8250 display
      drm/msm: add compatibles for sm8150/sm8250 display
      arm64: dts: qcom: sm8250: fix display nodes

 Documentation/devicetree/bindings/display/msm/dpu.txt |  4 ++--
 arch/arm64/boot/dts/qcom/sm8250.dtsi                  | 31 ++++++++-----------------------
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c               |  2 ++
 drivers/gpu/drm/msm/msm_drv.c                         |  6 +++---
 4 files changed, 15 insertions(+), 28 deletions(-)


