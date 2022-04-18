Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C75E950602E
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 01:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234883AbiDRXVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 19:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234950AbiDRXVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 19:21:41 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42D1724099
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:19:01 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id m15-20020a7bca4f000000b0038fdc1394b1so420976wml.2
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KRwm/xiNkHGRGFBLiiLuaRyJfnzyL5igPiymPbPmu64=;
        b=K+Gq2CePY9f8fkNPHb2Ti9WdadlVlIs2iCpYi0qN9hKwsQETcZY74AlzvMuS86q6Wt
         wnjY9zwLb0irhEYhzsREbbhJ0Y4enJg1H9C8swWSDf13GtdRQPGq4jle/5Ntw1PTYT3F
         rVZoX9MH3Ebv70nP2UfEaSsXCBMVhy7NeuWd/VUOMXwjDpL6eY0sGvVZKIT+bKzft+2s
         0QYFkhVWk3yRSvEGuhlqUIGxGLXNJ6TIjS/x+EYN+SUAtiRvQLACEQouWWWkVD1HaXwl
         +8sAFTwDAuqF56pcPLznRhaLUBtabgs372xp7lDS3kmEj6aP81NZrehmMbcxGAb7gzQr
         WzrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KRwm/xiNkHGRGFBLiiLuaRyJfnzyL5igPiymPbPmu64=;
        b=qdk3UV6NIOCJFIcVL6kDYpZ8P6e2C1TzWWuvrQZCSz9VBUTBgJVUIuUdNQRrXXezYZ
         BtX1Mek4tSz/W9OszT77vvhL+0xpSWgY2JIP7TRbd3sOoLUfqtva2k6zEW5k76BTqFbh
         n9geNfqPd1698q9k7BDFXAeYizSDpS4lJ/AFRv8ec4rl1stMB6THr1B3LkZvYb8/opqO
         EwNYbRS+es8kYhCb7pcHEoyt1lqVv9gbxyQ3Nu/5zklPrKFeAO1LBYWY5b8VcI4iSofJ
         Pppj9rT6NmIfqv8NEdsWp/0R89CPsoWJAjY2iC8AK5hTPCa2rkID4kbLnvDNVL1sAEQp
         aZlA==
X-Gm-Message-State: AOAM530iPZiufcc+uOCtTHOUOL+vSknaiIP+HP7gTk91Kr5rJMcGtH4L
        RRUL6DxBIZyhTUWvZY3moigY5A==
X-Google-Smtp-Source: ABdhPJyk+EXbsgz/ETDyCoZ3LRtt4+D2nvsvcj6V8uryx4n8C7G0Q70NMTsjX014iL1wT0GalRdS5g==
X-Received: by 2002:a7b:ce11:0:b0:38e:c257:4c76 with SMTP id m17-20020a7bce11000000b0038ec2574c76mr13314532wmc.151.1650323939897;
        Mon, 18 Apr 2022 16:18:59 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id u16-20020a05600c441000b0038ebcbadcedsm26105365wmn.2.2022.04.18.16.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 16:18:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH] dt-bindings: soc: qcom: smd-rpm: Fix missing MSM8936 compatible
Date:   Tue, 19 Apr 2022 00:18:57 +0100
Message-Id: <20220418231857.3061053-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible msm8936. msm8936 covers both msm8936 and msm8939.
The relevant driver already has the compat string but, we haven't
documented it.

Fixes: d6e52482f5ab ("drivers: soc: Add MSM8936 SMD RPM compatible")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
index b32457c2fc0b..3361218e278f 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
@@ -34,6 +34,7 @@ properties:
       - qcom,rpm-ipq6018
       - qcom,rpm-msm8226
       - qcom,rpm-msm8916
+      - qcom,rpm-msm8936
       - qcom,rpm-msm8953
       - qcom,rpm-msm8974
       - qcom,rpm-msm8976
-- 
2.35.1

