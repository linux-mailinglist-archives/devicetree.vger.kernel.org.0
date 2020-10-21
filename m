Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CF422954E6
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 00:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506925AbgJUWvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 18:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409389AbgJUWvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 18:51:09 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F26B2C0613CE
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:08 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id l28so5132583lfp.10
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XUajRf0deY0ybpth0h7755bmH20RWxud7qUm1cDBOWQ=;
        b=BLdNHBsk0bzhSHFYSUqNi1hqTF5D1yLj5g6uVYypoHoC2rBPrcMAMMVX3ZMntqDPGn
         vGRns97QNZBmNNeKykP88dy7j29AAjk6eTQ5jiUssnfd0uFJ8/bPSHCsS+uB9ZhmDX2b
         x2B5pZhhC86fONyjq0O2QKsA4dKici88ERecMmsiTQonHoH2YS161kkDw6LGexMprWJM
         ShOKMCLT3Clf5g9KCQqDNuQ0FgezMaKdnduSC1IRqy3AhVzRDVVQHANOulR7Hg4+UB30
         4Wwu8yv/yrILWa77z4QBtEGI0qUXh31NjW69Fpy4WRuoDtEkkz7UVaqTBQNGlKWlsGUM
         aFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XUajRf0deY0ybpth0h7755bmH20RWxud7qUm1cDBOWQ=;
        b=SpjCuu9bcGcbPoOVRMpzisPuPplUkADb1Cb7572mOMUotaaNaq6/DwtiA2VwrEEE6w
         cIAKFp+ru0GdMAAKNN7FsxWX4dgcGJkcdo4b1Xj7qAeDyVUK9GCfEMqITOgDsOR0DDTj
         VWl66uZu4vYiLNQntzQA2kIKleQ6zOhUthoMoy7MhIuReo1DuQXKYYoTHUHuDwmI4bl7
         /hGiyQWLxNMdvds3IeMVXLteMaBqh+eE13KCCtauFyvgvRz3ZXWNAQnhfgEL2svzUOH2
         ypI8rw3plpxpfO97kMMBHgqqFQfi7A3QUQaP2TKd1Y6HCs8YyRJT1R07y21x2qIW0ytd
         rD+w==
X-Gm-Message-State: AOAM530Xo5TKhQVRrUM2iN53WCMcOkrDTyBpajRkkMPwfQbMn+RsaFSP
        UEVUHAZD8+XJhb9XdSrTluIf8A==
X-Google-Smtp-Source: ABdhPJxs1tCTj5XUaiigb6DjBHmi3vWNWrbq3CTTangd9VkMvzNz4GlTkZXByPWJ0vvNjotdjWf3ng==
X-Received: by 2002:a19:5e5c:: with SMTP id z28mr1931658lfi.528.1603320667465;
        Wed, 21 Oct 2020 15:51:07 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id h11sm652062ljc.21.2020.10.21.15.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 15:51:06 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: leds: leds-qcom-lpg: add pm8150[bl] compatible strings
Date:   Thu, 22 Oct 2020 01:50:56 +0300
Message-Id: <20201021225100.162795-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
References: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add two more compatible strings for Light Pulse Generator blocks as
found on PM8150B and PM8150A/L chips.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
index 5ccf0f3d8f1b..0474f1d998ff 100644
--- a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
@@ -17,6 +17,8 @@ description: >
 properties:
   compatible:
     enum:
+      - qcom,pm8150b-lpg
+      - qcom,pm8150l-lpg
       - qcom,pm8916-pwm
       - qcom,pm8941-lpg
       - qcom,pm8994-lpg
-- 
2.28.0

