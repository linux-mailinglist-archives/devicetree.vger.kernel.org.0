Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0409638CE8E
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 22:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231734AbhEUUHW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 16:07:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231590AbhEUUHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 16:07:21 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98745C0613ED
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 13:05:57 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id n6-20020a17090ac686b029015d2f7aeea8so7929619pjt.1
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 13:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ybXypeyea8Cf9kwFCSJgN0ItJkY4+UPXl7JyFWq2ns4=;
        b=gvizpSBJ+apVKVlvGSXBZj2gEs1knSeRCxVXdN3vtGCGuh0shDb201I84svqrga0q5
         uX0JPqks5j4LZz+18rZ/lbNlLgVxjOPNcvhpUIOGJFxgSOGBLVHP9VgULuSrvy1abr3+
         NBYnw9w9w/vub/ZSfFkg831gtYAHt7j9EAO1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ybXypeyea8Cf9kwFCSJgN0ItJkY4+UPXl7JyFWq2ns4=;
        b=oIqqMp8m7yQU/1Ykjc/PGTbX52g8S01m+ojezugzjWAzbK3oax4rjQ5sRomGfwt6Qn
         CJ2inb8To5hRG4tgj5EUJls7dwmbuQoGWU86PtrM6OXeym/ZcwbW/R8d6ujAJo3mmvvw
         HCpONDEa+qNwwMn+x+CvlQm2wiGyeIUUHi9+aC6gUIwSegd136B3UE5nSC+Zv4TJt7Fd
         VYIZMsqp7y02s5OOiL6/1Q752kYPpS/oivoWCaN6Y4LJVJ1qh/yMPcV9ZT1tNMaYbDA0
         c56A8LMWOVkZcW9QYSliwm13Zqc2kcZCSwwgvBbVo8aUF9w/XVyLML79wuQ7WNkQXAyz
         3B9g==
X-Gm-Message-State: AOAM530rS/rv/VsJrlRiDQ47DZE7LVqFrY6Df8kpaDIsWVoShNubtl3h
        QkhPlutT1EcTfKLu2aSqNipnIQ==
X-Google-Smtp-Source: ABdhPJzhy4xTRi3QdYIYW790JHpwnfEydljuE/FpMrNWeq4/SEl0a4KL/tU7v+aalWjydp3F/uLpOQ==
X-Received: by 2002:a17:90b:11cf:: with SMTP id gv15mr12620696pjb.26.1621627557050;
        Fri, 21 May 2021 13:05:57 -0700 (PDT)
Received: from sujitka-glaptop.hsd1.ca.comcast.net ([2601:646:8e00:b2f0:22bd:8c3f:584d:d265])
        by smtp.gmail.com with ESMTPSA id z19sm4550614pjn.0.2021.05.21.13.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 13:05:56 -0700 (PDT)
From:   Sujit Kautkar <sujitka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sibi Sankar <sibis@codeaurora.org>,
        Doug Anderson <dianders@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sujit Kautkar <sujitka@chromium.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Update sd card pinconf for sc7180 DT
Date:   Fri, 21 May 2021 13:05:27 -0700
Message-Id: <20210521200529.1991729-1-sujitka@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series contains change to move sdc pinconf from SoC specific
DT file to board specific DT file. It also contain change to set sdc
GPIO pin to bias-pull up

Tested sd card working on sc7180 based board

Sujit Kautkar (2):
  arm64: dts: qcom: sc7180: Move sdc pinconf to board specific DT files
  arm64: dts: qcom: sc7180: trogdor: SD-card GPIO pin set bias-pull up

 arch/arm64/boot/dts/qcom/sc7180-idp.dts      | 102 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 102 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi         | 102 -------------------
 3 files changed, 204 insertions(+), 102 deletions(-)

-- 
2.31.1.818.g46aad6cb9e-goog

