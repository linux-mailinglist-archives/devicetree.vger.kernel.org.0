Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F2A0227B60
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 11:07:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728271AbgGUJHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 05:07:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbgGUJHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 05:07:45 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C62AFC061794
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 02:07:44 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a15so5468472wrh.10
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 02:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=/OxVowHa1fzTS8gxpWxPISoWUyhArDmXgs2hoChHUPc=;
        b=rA/559WyzqjkNR0hbv9ikfJ1cN7FUfBS0VOcj1VuFigCuNRmYYnaZ8HL5f2FY6y2OV
         CNxdI61eEXdQ15w/ee103fQDg1Q/NQvsoozh5MZnCIjtftL4U4JTshJnjE8CE3kmLE82
         29rQIEHxkgGrrxj0kOidCm1FY5O/2z5dX28DYn2aL7ygStdgIuZgeFKGWwpK3HZwfzwa
         iiRHEo5furMeU9/ZnIUUKQ1F+opEl43up4wCVu5cSUeuvUWTJxhFBbB8xGk2oFt7zPLU
         CQWPhkG3F+JH9gw+dR+87Dboa5DIxFOz+cVvaB8GJYzdwaDsG9fx4mZazA6oN7lVjrdn
         QU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/OxVowHa1fzTS8gxpWxPISoWUyhArDmXgs2hoChHUPc=;
        b=K5de0P0s3jztq+Q4n1qK9p8T4KDMChvC+ixolfXGaP90SY5Rx/01RIdbAMIktthr19
         NF+lNEHRInwqfUQjOyYGMVAnsRJsNiC9kLZVgB32nESuwBvpDoEj/NrBuT53DkFAcL/c
         DITU0L7ybv2n3/B72+StJoSi/lPKXFimTWQTkvC//JkUoPLV2MiLg1GL37IB06WqfgEV
         wQ59nDPQz8syKWCaoC9WeNzfaFhGSqhRNkL5Fr4WDcuokvIcn5MhVPzW3DS5b5paAY+s
         Z2bXioR0t7rJzYADa7QeMJhgNfg4XJO0Xcz8MXEK9vhR+5tsW1/HwuZpL+5Wy0tbmdLo
         ApHw==
X-Gm-Message-State: AOAM530AxgNSxrlxevO4w/8L2/tfJcBdEQUsEiEpjxq4qwYTdNIyXQo6
        XkbBZXT96D6ivyZhA6Qwj8DkKw==
X-Google-Smtp-Source: ABdhPJzvKTkGOU3P6banh76jfIC31xAnMFma1OCt8xasxSNWGqr4pPlHEn1SLwIj5zO/QkMX7HRX8A==
X-Received: by 2002:adf:fcc5:: with SMTP id f5mr28572300wrs.60.1595322463467;
        Tue, 21 Jul 2020 02:07:43 -0700 (PDT)
Received: from localhost.localdomain ([88.122.66.28])
        by smtp.gmail.com with ESMTPSA id m9sm2495594wml.45.2020.07.21.02.07.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 02:07:43 -0700 (PDT)
From:   Loic Poulain <loic.poulain@linaro.org>
To:     sboyd@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH] dt-bindings: clock: Fix qcom,msm8996-apcc yaml syntax
Date:   Tue, 21 Jul 2020 11:13:11 +0200
Message-Id: <1595322791-18571-1-git-send-email-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix errors reported by dt_binding_check.
- Fix literal block scalar for dts example
- Fix schema identifier URI

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml b/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml
index d673ede..a20cb10 100644
--- a/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/clock/qcom,kryocc.yaml#
+$id: http://devicetree.org/schemas/clock/qcom,msm8996-apcc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm clock controller for MSM8996 CPUs
@@ -46,11 +46,9 @@ required:
 additionalProperties: false
 
 examples:
-  # Example for msm8996
   - |
     kryocc: clock-controller@6400000 {
         compatible = "qcom,msm8996-apcc";
         reg = <0x6400000 0x90000>;
         #clock-cells = <1>;
-  };
-...
+    };
-- 
2.7.4

