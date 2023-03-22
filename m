Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 188E16C3F7D
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 02:14:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229915AbjCVBOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 21:14:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230000AbjCVBOs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 21:14:48 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B54356150
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 18:14:46 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id bo10so12567819oib.11
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 18:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1679447685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gTZseNIfPdBe/0NuqBE26CCNGdGPf26kM9+Ru7h+44=;
        b=TrH+dk0EXzS3HGqqtjcqdZ4Fubti3ErYYie0R2TMzVWqXr4cDCdjBiwIO6eeiGxd0G
         Mm6mflQch7aa7Y4bgl7rhsTPVGNebZvk6GOyR23wGV2pJyp0PvQQsNBN0FEkopFuZ3Ed
         AVS49QTNG5CvYlSB+VzEv+7s6tQJazV+mM9EUsdsw3Tgj01ERc4DrfBw0HuJLOqPIl8N
         9K659i+HGMW8p8KZOVpm/bzdNmdM+WYgqFdcQOM4KdgMA50VgrzKGtIbbi7dyT8rBo+o
         XYhkH5eU4i53EKcaCNVW6Ozq9Ve3VuGvEyCC7Oz078ioMvee5xOywtGPdQyIEK0joc3r
         TOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679447685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5gTZseNIfPdBe/0NuqBE26CCNGdGPf26kM9+Ru7h+44=;
        b=DaCOig8akWK/Je+AF6KTS8T1K40mtjilh7Azq1RURqDJmwMxxJ9Gu/COZ/Xi40oUPP
         1FZaaNjZdVVHeT8QQdzyu5z894H4tdgFQYq6ht8eTUrxSh158fzjGwaaazDsi3lxWhVh
         skgty+Hqf+AQX9OmstJbTRiYbfFkc9kn8lAD3diFYRkvN/z1RIgfH2+7TXRH7XJAef1Q
         P9jnCBE7A6xGvjOPIQ9lpXAZ0BadgHCkUZM2HRUVjQ4AqUFwEJw2x1VbGK8ax0TqBni8
         SZc6Y/wkoJbOXW9DTtkT8NH82j0FjIkCWIAX0GAtL/FMiKk1LhDcWF5XAA2uUSw+MPTr
         VcUA==
X-Gm-Message-State: AO0yUKXnzfS1d3+9QPPqqZk3TYBIylT9OhjrWQvabgERRwA4aUdinW33
        jGuvkNL5VJ0yOQu4NX3W9choeg==
X-Google-Smtp-Source: AK7set+gB17zX+JyMlvxgHvJlgFOOvTWlXwtbz30b6VRPvN7jPpWC9VC/NSloAstlDVcGDg2hkeMkg==
X-Received: by 2002:aca:190a:0:b0:383:ee1d:f489 with SMTP id l10-20020aca190a000000b00383ee1df489mr590575oii.0.1679447685426;
        Tue, 21 Mar 2023 18:14:45 -0700 (PDT)
Received: from localhost (23-118-233-243.lightspeed.snantx.sbcglobal.net. [23.118.233.243])
        by smtp.gmail.com with ESMTPSA id e13-20020a9d63cd000000b0069f9a73a65fsm40505otl.29.2023.03.21.18.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 18:14:45 -0700 (PDT)
From:   Steev Klimaszewski <steev@kali.org>
To:     Steev Klimaszewski <steev@kali.org>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Sven Peter <sven@svenpeter.dev>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        Mark Pearson <markpearson@lenovo.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/4] dt-bindings: net: Add WCN6855 Bluetooth
Date:   Tue, 21 Mar 2023 20:14:39 -0500
Message-Id: <20230322011442.34475-2-steev@kali.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230322011442.34475-1-steev@kali.org>
References: <20230322011442.34475-1-steev@kali.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the QTI WCN6855 chipset.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Steev Klimaszewski <steev@kali.org>
---
Changes since v6:
 * None

 .../net/bluetooth/qualcomm-bluetooth.yaml       | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index a6a6b0e4df7a..68f78b90d23a 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -23,6 +23,7 @@ properties:
       - qcom,wcn3998-bt
       - qcom,qca6390-bt
       - qcom,wcn6750-bt
+      - qcom,wcn6855-bt
 
   enable-gpios:
     maxItems: 1
@@ -133,6 +134,22 @@ allOf:
         - vddrfa1p7-supply
         - vddrfa1p2-supply
         - vddasd-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,wcn6855-bt
+    then:
+      required:
+        - enable-gpios
+        - swctrl-gpios
+        - vddio-supply
+        - vddbtcxmx-supply
+        - vddrfacmn-supply
+        - vddrfa0p8-supply
+        - vddrfa1p2-supply
+        - vddrfa1p7-supply
 
 examples:
   - |
-- 
2.39.2

