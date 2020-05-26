Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E4D2198BD9
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2020 07:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726236AbgCaFoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Mar 2020 01:44:14 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44756 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726174AbgCaFoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Mar 2020 01:44:14 -0400
Received: by mail-pg1-f193.google.com with SMTP id 142so9834489pgf.11
        for <devicetree@vger.kernel.org>; Mon, 30 Mar 2020 22:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uK3BmSb3QWPSt6rWVBQhv/InDeHrsw1A2WAoGEe/xYU=;
        b=UUO43VcnOlW5f1fQ4GHfzAUzGnoaDOwuPUrZrYIJVySTj2iCzKN8TX96Ya1GXb+ZkV
         Cv9x0bGCCo/R61aUBDkflXd8Too/h5vxt1K0t1WB1ZzB66XoHIZUX5NaaAXvpBwQ29Jv
         6FNpU/6LDfPQj2HiCcXgQstPKjI4qBOH4zgDJjJoKeKTqTZ1I0kYoVsgZPx/k6MFfw/2
         pm5pqZ7w9Qs9vUB2Vgu00R5TO2td97FHD+5DUfPSFozJZsOxUiqR8oAQStTQmvFcXQcw
         BRAsOHiwraBM6ddHj4EywNuHQ/32Cqczdjv69sHmA4E7oRqJZ0looDo1M+nriMh5gFSC
         jlfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uK3BmSb3QWPSt6rWVBQhv/InDeHrsw1A2WAoGEe/xYU=;
        b=B/0+0bQOH/1Re/DeidF0MMs5vnMYbl2WZM+L78197BDdew2Gjf0eaZlf4r6qovYTR1
         UFe092w1KXM6Z7yPmbBLp9ZxnUZCP5jYrksglBs/NQlOorLAJkuLiDM3pg9TeB8GhZVB
         zQnRaCLkb1ZZyEnT7RyNaRJKuWprJTsujqGT+QC4DqctV+bBHi+NtGaOBWFxcIlevu6B
         rH0Zb4+xQ37GVVIAi1lBGcJUpaYRXuB/UFkPcWBLP1+QUECq1CaWzNy6TLdr4dbV9vi4
         kc8j/b/D8vqhsltuBMj5hBDM3AFoIr86kyyPMtGdeMIl7+Anb9eHhOdY6KDlBFcbP366
         zGog==
X-Gm-Message-State: ANhLgQ0GO6n+1PwBugahzSLI3B2jvnfJ5+vYkUL5c7hzlzsmduGwpCN2
        UbVtyAZy6RmfkUoTkHtwgBqSiA==
X-Google-Smtp-Source: ADFU+vubkUBYViYG1wiOE0PIkC4wOOUOcthcv6nrmXRSLZrwr2SnZnpdw6z2qt3JJpncraWpwspdng==
X-Received: by 2002:aa7:9a45:: with SMTP id x5mr16941750pfj.248.1585633452726;
        Mon, 30 Mar 2020 22:44:12 -0700 (PDT)
Received: from localhost ([45.127.44.10])
        by smtp.gmail.com with ESMTPSA id w27sm11527583pfq.211.2020.03.30.22.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 22:44:11 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, sibis@codeaurora.org,
        swboyd@chromium.org, dianders@chromium.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: cpus: Add kryo468 compatible
Date:   Tue, 31 Mar 2020 11:14:06 +0530
Message-Id: <18123f08bf1e60f6f7356c53f355884883b0897f.1585633235.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kryo468 is found in sc7180, so add it to the list of cpu compatibles

Fixes: 90db71e480708 ("arm64: dts: sc7180: Add minimal dts/dtsi files for SC7180 soc")
Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rajendra Nayak <rnayak@codeaurora.org>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes since v1:
- Added fixes tag
- Added acks

 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 0d5b61056b106..4cece4c27b73a 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -156,6 +156,7 @@ properties:
       - qcom,krait
       - qcom,kryo
       - qcom,kryo385
+      - qcom,kryo468
       - qcom,kryo485
       - qcom,scorpion
 
-- 
2.20.1

