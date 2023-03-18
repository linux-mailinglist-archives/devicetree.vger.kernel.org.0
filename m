Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E44A6BF9DB
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 13:18:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229878AbjCRMSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 08:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbjCRMSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 08:18:38 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A74972B2B9
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:37 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id bh21-20020a05600c3d1500b003ed1ff06fb0so4826529wmb.3
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679141915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qJqqjU1k7l7SWj6A3NdoYJnwGra9kxkjhiJ76PD1RCY=;
        b=O7kDPq3J5qAohMsFT1AAP9UXq5lnileP07if2nrAT4GsZuFo005c3+e3L4XfJBC1uj
         VPyhjyY+gWZWZYORmz96hD9DDXCl3rnHjWUDZi/TlfRCVBUijTLF+ghPT9Xzmv8TSMQe
         Dxbp0QAB+is/ejSROVyhbQ6PLvaaZYWib0Y50oMO+JKKexR4YF6ibI4BgtqgJn4YUPsD
         54Q1fDsvCyHR+NN+cy9k29LTThcIzuWMD8RjJ7tUiJvQi/QHyY14KreExOQgi1iR7Mi/
         +LopeNm70O9BllgaNsY+8sSFTm0zNAxQ2cYVSgftsrewH9xsMx1Vl+ptFowgt8NFCQHu
         iGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679141915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qJqqjU1k7l7SWj6A3NdoYJnwGra9kxkjhiJ76PD1RCY=;
        b=Ayp9jAj7YvCYMzBQ6wOxJRExLIb8XWNvICPRPZ3+VlkVNiGgshrnFIY7Xsi9c2qTLq
         KC9kDVSKPNUbGwlGD1N/+x57Ul10WGHuqazfiXthov371iDkDZunkPhQgV6PlkEwN1BJ
         Kw9F1AySjjHMm9uKkktvvrbVzUheEc79rm3xmBpky+X5ajCqKQXKX2CkOqEJZJpTh+SG
         8wFyqW2waWL2gG4Kcq4shjVxLQAHjHO+WUMq3ZVWnI1urIHFtMhBF9iNB+YUh4AienCV
         XWsMjZcxvy0GvIh96Jv4Ckm9ZelAbwUbqWIsPXlC6b2/z2slBXqTd1KluPdQSF7QDYT9
         sJtg==
X-Gm-Message-State: AO0yUKUF9gd4tlOmS6RTzDP2B6XrlumxX/nBvRLi7LKFRqRwcA+YXyzH
        U4Pi54NcMq0EUk1qgNfKyVxCNA==
X-Google-Smtp-Source: AK7set9WcyqlUsEYjJKjfCU/1DzawREfgIFMT1tNnJ2keiCoz5LxP4Cqqx2mAYd7PllyvqmH6OrYeA==
X-Received: by 2002:a05:600c:3595:b0:3ed:2a91:3bc9 with SMTP id p21-20020a05600c359500b003ed2a913bc9mr16691554wmq.15.1679141915706;
        Sat, 18 Mar 2023 05:18:35 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id az40-20020a05600c602800b003e2096da239sm10814997wmb.7.2023.03.18.05.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:18:35 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        bryan.odonoghue@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
Subject: [PATCH v4 03/18] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: Add orientation-switch as optional
Date:   Sat, 18 Mar 2023 12:18:13 +0000
Message-Id: <20230318121828.739424-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

orientation-switch it the standard declaration to inform the Type-C mux
layer that a remote-endpoint is capable of processing orientation change
messages.

Add as an optional since not all versions of the dp-phy currently support
the orientation-switch.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 0ef2c9b9d4669..52886cdb0e506 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -61,6 +61,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
   resets:
     items:
       - description: reset of phy block.
-- 
2.39.2

