Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA2CE370B61
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 13:53:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232167AbhEBLyg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 07:54:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232151AbhEBLyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 07:54:35 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 226ABC06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 04:53:44 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id h10so3117085edt.13
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 04:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gQhNcy2LNQytLGOWB93x3Yia/FlpQuGD9oTfRwaHwtc=;
        b=YRDDjmMQ4uz6Yg8/UFaM1VFNIMQbNSCUy3AgtxJj0MM7IwRwPtLyffG1VCLA+P8NWj
         G2Sv70kuzDojxXTB54ZXPKVAxJLCHR7W0AYRp4sOzcHag3jm7LNyyCrcel6KCTOjAt4R
         fwr4zGmqS7SZzNbEVl6K7706mBt4tyb8grRYj9s1IFJQAmBAJYY2+7aWFYk1KWr/KwKn
         PqF0cATKc0TStnGyelBsKwGHuIWvc86kl68HmShrxv/xnB0YdN2JHv2M164zU4PUJ7BK
         gn92ZEbHHH/ESJPcn8ZZ/J8XMJVZ8mtyJWf0eG8dqPjiiwfgCU9v0pe81fBc+VXZY6RS
         sMtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gQhNcy2LNQytLGOWB93x3Yia/FlpQuGD9oTfRwaHwtc=;
        b=nw59TTn9MQ84ijjeKxS9xh4XeuHoFqh55KVmyapWW45aHHUyd34mhcTrttssSkVehy
         pk04J50YUx0jTLM4D/z34IcxzWQYqHxBj7MbfeKZbUxiG91qbzbVepcobP8WNvM1+NZU
         nkV3KCb1fsNezRUoE8/O60n7XAVZXWOIYaWvkjACgZIfmyPK28IA+9iI+a90+eJr+hTV
         40XwaONGli1Xy7Whoc/WATCHLugjr1iWxMfnYHz5W8uFrL45Ki2ezIWpVIy+IhPTBfXV
         nC891Fvba1+RWxHe/A8HpiaqmuL5EHsDP4yLwEqJ6q7EopTzTE+f1frGFmLodNvqDebt
         pGtQ==
X-Gm-Message-State: AOAM533nbd5u1Hz8qelUb6oTybIrqH7w7X1vz9htfL8tKMe9U4EPOfV8
        GXSYmNHITVuOcHDG+lrajkisgQ==
X-Google-Smtp-Source: ABdhPJwTOA7f5PiQKmT2l38tfhrAv7+vdZZWlfvWVt2eyPOWrVYp9QdFdSUfYT2pM5omKhECTgZztg==
X-Received: by 2002:a50:9e0b:: with SMTP id z11mr15389314ede.228.1619956420544;
        Sun, 02 May 2021 04:53:40 -0700 (PDT)
Received: from PackardBell (192038133011.mbb.telenor.dk. [192.38.133.11])
        by smtp.googlemail.com with ESMTPSA id mp36sm8598075ejc.48.2021.05.02.04.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 04:53:39 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id 1777edaa;
        Sun, 2 May 2021 11:53:35 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [PATCH 1/2] dt-bindings: regulator: qcom: Document PM8226 smd regulator
Date:   Sun,  2 May 2021 13:53:03 +0200
Message-Id: <20210502115304.8570-1-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the PM8226 SMD-RPM regulator entry.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 .../bindings/regulator/qcom,smd-rpm-regulator.yaml           | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
index a35c6cb9bf..83b53579f4 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
@@ -24,6 +24,10 @@ description:
 
   For mp5496, s2
 
+  For pm8226, s1, s2, s3, s4, s5, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10,
+  l11, l12, l13, l14, l15, l16, l17, l18, l19, l20, l21, l22, l23, l24, l25,
+  l26, l27, l28, lvs1
+
   For pm8841, s1, s2, s3, s4, s5, s6, s7, s8
 
   For pm8916, s1, s2, s3, s4, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11,
@@ -68,6 +72,7 @@ properties:
   compatible:
     enum:
       - qcom,rpm-mp5496-regulators
+      - qcom,rpm-pm8226-regulators
       - qcom,rpm-pm8841-regulators
       - qcom,rpm-pm8916-regulators
       - qcom,rpm-pm8941-regulators
-- 
2.25.1

