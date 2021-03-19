Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9B18341A70
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 11:50:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbhCSKuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 06:50:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229993AbhCSKtf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 06:49:35 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FB60C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 03:49:35 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so7065357wml.2
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 03:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CepUcafGtrFUpUZtYhucDpANeVxiqNaK7mNfdLMmOyM=;
        b=zu6kEtsgJp2yJyo5y9yaZyeIslO8DJEBjXDq/dHhC5q2XALqTz8lRFBBt3LEG7rrw8
         LMppSHvuoL/pqe0Lh5m6jyYpdcp0hgeCN8wbk6vwOPIJ7BtXCMyXQxnwkWVYQ3ErJ8p6
         BgcnYPkFdAd9ACa+V6zluQZWhJOaD8+OkXa/99jKbqEnSfdZrNllLntAVlbXGTEJPZKt
         F0KzkWYEZ/d2ohnQnPiOpwP+RPwUPx3FHLDUdBcENq6oOmPwAw59KiiEV0LL4ObJdd+k
         abKk+Bu217H/NOeH/98zyztUzq3JxgJJDR4yjqHGDCDXo8FnpahpqGxZiHfg0SPrW4Mb
         jbYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CepUcafGtrFUpUZtYhucDpANeVxiqNaK7mNfdLMmOyM=;
        b=VWEussw9kxnaLDk4nbzNP3Gz/Fy5j3OwlX2Rt7GJ562953Q4Ixpok8+idmVYQLXlWI
         CaF3K264WdM3xGUXYHkTlEYVq/86gYh2sh+HZ+s/8Vf4I2P9k2+dP+UfBBkUL6gDlI5Z
         yDKF4PluG5U8Xt+y8AZixqz0ts6zWtWnO0c4CJJlHbcWZqjOKhg+sPUjXwXET4BXsPVO
         9Pj9NrH/stGBxQYFlNFGJC7b/FTNWadoZoJ1MqR7kOfTyEGgixQgEgnITO8yjXL5dFFa
         EJr36bQPVVi6PUG8AwlCtH0Jfu8U93Y566U5C9vIJatZW0G/Q1G7AAU2mc0ScJs9HRmc
         hcyg==
X-Gm-Message-State: AOAM531jgMg81Dhuwun6Kc7JQfxcrLdyAzt95dkjnS/Y/LdHu1H0HHfr
        dGlKSvY1KG4KVr4VXsdMT3wFIg==
X-Google-Smtp-Source: ABdhPJyHEH6apFgqPDDVWjovz+O8j/BxFJef1bbaqK1m/dkdKmD6T3k9KdkKIMgqOMAIYTb5OwE+9Q==
X-Received: by 2002:a7b:c112:: with SMTP id w18mr3139217wmi.28.1616150973768;
        Fri, 19 Mar 2021 03:49:33 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id y18sm7416224wrw.39.2021.03.19.03.49.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 03:49:33 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     amitk@kernel.org, agross@kernel.org, bjorn.andersson@linaro.org,
        rui.zhang@intel.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vinod Koul <vinod.koul@linaro.org>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v1 1/2] dt-bindings: thermal: qcom-tsens: Add compatible for sm8350
Date:   Fri, 19 Mar 2021 11:48:54 +0100
Message-Id: <20210319104855.85075-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add tsens bindings for sm8350.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 95462e071ab4..e788378eff8d 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -43,6 +43,7 @@ properties:
               - qcom,sdm845-tsens
               - qcom,sm8150-tsens
               - qcom,sm8250-tsens
+              - qcom,sm8350-tsens
           - const: qcom,tsens-v2
 
   reg:
-- 
2.27.0

