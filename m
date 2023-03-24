Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB2806C87CA
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 22:55:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232273AbjCXVz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 17:55:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231896AbjCXVzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 17:55:55 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F9D918160
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id x17so3959230lfu.5
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8+k49y8vkq2xcxY7Yu0qyM15XqLOBvZj7lJd33kjylE=;
        b=DIt7fgQP9aIBziEje2pbhgkfgk+aBVXzDXA54iSuwKnziMqKHlLbk7+cwnVALohxPm
         t9xyHDZp0/haQxE2s2aqwH9+HGDDGovGf3XyTCuXVo960mVUziEf7IlEjDuIAOEm5uWI
         3wdiSB2euhDQA2BUwgtyGKe8fdtaegos/9FkxnzdBhp5blQf7Z/UnHXvGQexmrahDU00
         eeaWiXyQsOjRqK0jann4maWbCKWuJkZyczQ1CwrYf9XaB+8LJXMpB6elq5TlOtGI543w
         A6BbAkant+xs/1ZR8lvIEUpqNv6188R5bBS8xnKNvlXtOLUw7UCykaa/YssPfFgpCeG/
         PqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+k49y8vkq2xcxY7Yu0qyM15XqLOBvZj7lJd33kjylE=;
        b=BytUi5cw473y1cOx66W6GA8Cgj+DhXmQhUymCoT0kB67M8nYIVQSt+oo+tMktUVffA
         UuYhr6zNyk/Nfhv/a7mpIVIFIJAt7le2qUPlbFIUGyHVEH1O2doWILqVabCygq0nHQ5J
         7SbIRI5IQWOQT7GpPRs14/1TTHG74iNoGG/zgHpuu7H5EONKEVCZs/0jclcJ/hCXCk1L
         Ly+IsnYUHfogU3WBAqlrI9fppbQN/qo14hqAJrodxVfpIxYUVoqjmMwUqiAZO6XvSCuV
         v9bcsmZJcl0yGNotJPLvhGw3zexs6sxsBIO18i/4KO//UNXWqSJYL3Yq0E1fDkw62sGT
         E1mg==
X-Gm-Message-State: AAQBX9dpCzSYD06m99iB0BKpo1nAZ5ejOTBVbrJfbTlNwwayOaUUqzbN
        f4tWH/p600PMlrkm2NOYZUC0wQ==
X-Google-Smtp-Source: AKy350ZoIo3YqS+8G0Ry9LXRU5W/KUssG5ok8McFASmNcoJp0io8xqb2FfzJRidHCE6aXp5pi9ssJQ==
X-Received: by 2002:ac2:54a1:0:b0:4e0:dfd0:fa9 with SMTP id w1-20020ac254a1000000b004e0dfd00fa9mr1052700lfk.56.1679694952854;
        Fri, 24 Mar 2023 14:55:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
Date:   Sat, 25 Mar 2023 00:55:46 +0300
Message-Id: <20230324215550.1966809-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for sm8150 USB+DP PHY. These bindings follow the older
style as this is a quick conversion to simplify further driver cleanup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 0ef2c9b9d466..a2ddf718ba76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc8180x-qmp-usb3-dp-phy
           - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
           - qcom,sm8250-qmp-usb3-dp-phy
       - items:
           - enum:
@@ -192,6 +193,7 @@ allOf:
         compatible:
           enum:
             - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
-- 
2.30.2

