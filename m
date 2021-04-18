Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57623363528
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 14:29:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231932AbhDRMaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 08:30:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbhDRMaY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 08:30:24 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB874C06138B
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 05:29:54 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id w3so48783426ejc.4
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 05:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AY49ZkjnSg9kfOd0WfKMTqMjQUL3RB3pacUpkz2Yd+A=;
        b=FY52ar2b+khkU/uMRuvnpXVjZUqDo/ehJx16Suwl8fKZWh1EQfo1RXEwfMgTDQLbTu
         cVSHZ8ulOaXnGUhj2NmHsCDo1BH06IJk35TnAH0LUUPfNd2GmtvU/7SsRhe76oAKyBFL
         kqMFfV26j8xP56c1cqpPmFd+rs2NizKUf/i13TefvF5U7YxmYK5VfyzckVFrH0psWCra
         5IXT44EBNcpZpj3ZA7ODCBq/AvGLaTczlqPCAGAcAK6uVqCCHIE6spSdw9JL2G6/QOiN
         BNOfrbdUuMrSf8LztwWVOkCcFTCYnRNUydVwr9PO3LBReT2vHQeCn3neqB6C1AMCHBYe
         wPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AY49ZkjnSg9kfOd0WfKMTqMjQUL3RB3pacUpkz2Yd+A=;
        b=Kih7NhOxUiCTrKmwAr3r/AO6Lzjse9W078SRqL33T5PmPBs1VOli7A3JKPccaeCKnN
         8kok2gRZ8WAL6y4ivuFyhpgMP4RAmO7B+3cCrIgvhx1hV5pllAYp1OfmTLVfyk7BsMhV
         jfi4hR/X8wo8852T0caGADCyHugSVxvx6TetPJ5wt35KlZHCt4LNtARhhg/0bb/W+j4B
         9qIrDHpN8z0IpzIRPix9rjongQ52EGpaGi7/OBFLMQBR9v60nVaXT2ZmFTAASDiu1j3O
         lxvu1tM31jfPnNOTWhxnYWI6g/cEexXI85bITco0b6T8SJofJL8oKEOHXgZLu+rS9yzj
         61CA==
X-Gm-Message-State: AOAM530MeGkMA5/yLZy0rIMmQS+iHMzsHolcgZ8kmAcR/+JDpL5NIpR1
        SOfAzgHbal28kAXIwcbine9fUw==
X-Google-Smtp-Source: ABdhPJwcHkDeJOuSa7z1fqurBb+BxTsL/ad2TV7UB8tAkIJiLW3yVGIgSYiNsPmmKXnUmzhLl9MT1g==
X-Received: by 2002:a17:906:6a49:: with SMTP id n9mr17225687ejs.397.1618748993499;
        Sun, 18 Apr 2021 05:29:53 -0700 (PDT)
Received: from PackardBell (87-49-44-144-mobile.dk.customer.tdc.net. [87.49.44.144])
        by smtp.googlemail.com with ESMTPSA id a27sm8213677ejk.80.2021.04.18.05.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 05:29:53 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id bc27f693;
        Sun, 18 Apr 2021 12:29:49 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [PATCH v2 1/5] dt-bindings: clock: qcom: Add MSM8226 GCC clock bindings
Date:   Sun, 18 Apr 2021 14:29:05 +0200
Message-Id: <20210418122909.71434-2-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210418122909.71434-1-bartosz.dudziak@snejp.pl>
References: <20210418122909.71434-1-bartosz.dudziak@snejp.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible device strings and the include files for the MSM8226 GCC.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 Documentation/devicetree/bindings/clock/qcom,gcc.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
index ee0467fb5e..eddf10e6a4 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
@@ -26,8 +26,8 @@ description: |
   - dt-bindings/reset/qcom,gcc-msm8939.h
   - dt-bindings/clock/qcom,gcc-msm8660.h
   - dt-bindings/reset/qcom,gcc-msm8660.h
-  - dt-bindings/clock/qcom,gcc-msm8974.h
-  - dt-bindings/reset/qcom,gcc-msm8974.h
+  - dt-bindings/clock/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
+  - dt-bindings/reset/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
   - dt-bindings/clock/qcom,gcc-msm8994.h
   - dt-bindings/clock/qcom,gcc-mdm9615.h
   - dt-bindings/reset/qcom,gcc-mdm9615.h
@@ -41,6 +41,7 @@ properties:
       - qcom,gcc-ipq4019
       - qcom,gcc-ipq6018
       - qcom,gcc-ipq8064
+      - qcom,gcc-msm8226
       - qcom,gcc-msm8660
       - qcom,gcc-msm8916
       - qcom,gcc-msm8939
-- 
2.25.1

