Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1E1C2CD8EA
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 15:23:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730518AbgLCOV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 09:21:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727822AbgLCOV5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 09:21:57 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F1F5C061A4E
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 06:21:11 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id s27so2951131lfp.5
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 06:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Tf8DiD3u7w6wv6cJWgVSr8vC1830hhxp5RiUIeRowlA=;
        b=niWyANAW3axBreapkmOAfj1Ix11ybAaIRuNYyjrZjU4DSObk65Gvei/CNLMZUz+QIs
         mitUVRX06RXo3DxBDuXrUZvgGlyCCOCFXrRyyTCHzShPZRiLy9dOU+rpoHb+owU6lm2a
         TpxUjTGVt5Ry/KZt0Q0yfS4Wvg/HvfyLxcidzqlr99R2A+OaijA/8l3SApTzyfNC20j3
         yjL7fAAr7Z43J0We60MOK0+Qr40vInRR/HrHR/acM7F8SQn3mTSvMdKKD8gautnU/Hvu
         K9CF+V6n3hPNt5nzMIKr3AsJK8WM0ugj8oO7CXcE315ct4IZ0tVijljdem4Ovl8ZmKuI
         mIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Tf8DiD3u7w6wv6cJWgVSr8vC1830hhxp5RiUIeRowlA=;
        b=pvtd4KQ+e/hzuSRcd3NgzdkCIjhA09G0OadEBAdO41lqFd24ZeA3wtLpVGwX6K8PF/
         hCKaLAcn+IW9tKyzeA8UoLm58oJJZHA4VSYtJjytfuatY1uApe+u3JpqddgmSpvkDIwx
         Oat+KRZgSgdzr0c4XMRd5cjAQJgFsHT4H077IfsFmpw0K1DuxgCEO1h7kl2czaweKMzy
         qTbK0RENrRfkYYDDvLo35JGBEipgThakYKw1AshkgExXvbL7qIzjKVPB/jPigJNmriyx
         /rALbmMYA8awAix8PDW6nihg+9xtogUBLExq2UTtRSOZfWEmPtkm4JpG5kXNLi+qNByM
         1wJQ==
X-Gm-Message-State: AOAM532oiAO6QiqPOGvB/prwRdm4ValH/QnIpvOWzEpe1kLS9FnkwXTR
        MyyBEdXEE65s0MaJDUN3IokYiA==
X-Google-Smtp-Source: ABdhPJx3PilQ+vDOxjDHiI9lB1WaJOf3JUnPpBf95p8VV4FWYsnDQwRDhibwOgV0tLfUjfuH+Z8ZDg==
X-Received: by 2002:a19:456:: with SMTP id 83mr1491389lfe.240.1607005269553;
        Thu, 03 Dec 2020 06:21:09 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.117])
        by smtp.gmail.com with ESMTPSA id k185sm575716lfd.294.2020.12.03.06.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 06:21:08 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/7[ arm64: add support for display on qrb5165-rb5
Date:   Thu,  3 Dec 2020 17:20:58 +0300
Message-Id: <20201203142105.841666-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for display device nodes on qrb5165-rb5
board using lt9611uxc DSI-HDMI bridge.

Changes since v1:
 - Move zap firmware to qcom/sm8250/
 - Use squshed firmware (mbn) instead of mdt


