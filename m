Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0919767E4E7
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:16:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233858AbjA0MQX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:16:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232774AbjA0MQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:16:04 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E447EFFC
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:11:37 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso3305995wmq.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nMU8HrEqT4LU3T+XebMF5UlEzESQ9EmfXPGhzJjgA7A=;
        b=mKYWt1PjOeDy75XT104pgc/kheq7Tnyl77TDgmN5mHkk7Lgx71XhvgjtkBuZx/lVna
         BGrywUvylMgazJ1W+niUotpJY5Yv720re3PmhPvWYwsPGrH0nosZVVhcNlh1h4tfPMV/
         enlJBQyBtoSHb4iTonj7cJQRCVAL48y+gGWbjvoYYLOAoXTn8k7/AV9hLAZYFA4GHtvL
         z+0ScvWwwoF8X+giroGTXilsAeOuK5VUm8ccyTmGJekUZaluZvDB0iyJkQOZ3yo4i6nZ
         vkx8Sx9pXiVCwbQY/BG5ljWK1gQBgWHYbzl0SXs/vsTC9jPQ/WJJzZpq0NS6SHQ208BU
         7vVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMU8HrEqT4LU3T+XebMF5UlEzESQ9EmfXPGhzJjgA7A=;
        b=lIc0KUq/jrsJqNp1R6zG1vPYUuqMIbz3ep3fxqaf/Yhlh1267IqwaRSTKGOh0o5jGs
         oLwoWgWxsCju0fCnuxjcJYV/t1eg7hd4eTuOYXjRd+IAn6AJIWxpt5APd1LyHEi84/fM
         8oR+1JpW0UsJ0I8pFurVSG3ANh+VMYtVN83Blq4z3e5s9OTaLc+vOQNoJnjz23VpYvbk
         U5vYKmgFXtJJ3Jcl35s79VRms7m4JTmId1PPTRV7kBsYiaiepgGb9HSFSjbuF2UWOcrs
         FhadEiYvYmZ7zr7utp76uTAp609cKV8FCFar2A2oL1xg4p43R+g0OOQpI7w6vg9KbQXI
         +JAA==
X-Gm-Message-State: AFqh2koyPPDfMieeYSFtNLKTVAxZ7cpV0IJWvsCO612S6pY8ywRzGCm/
        3+YLmHGLnEgI955w0vSB+kigIw==
X-Google-Smtp-Source: AMrXdXvJ8MqT10z6qXwFZgbOvKJriCN0LVRqiMJg0bOXbm+s1r/3zKqBdKFOR36lkQOogPex/JE+Wg==
X-Received: by 2002:a05:600c:4248:b0:3d9:7667:c0e4 with SMTP id r8-20020a05600c424800b003d97667c0e4mr38562115wmm.31.1674821485959;
        Fri, 27 Jan 2023 04:11:25 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e19-20020a05600c439300b003cfd4e6400csm4170606wmn.19.2023.01.27.04.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 04:11:25 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH] dt-bindings: usb: qcom,dwc3: allow required-opps
Date:   Fri, 27 Jan 2023 13:11:22 +0100
Message-Id: <20230127121122.342191-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Few Qualcomm SoCs require minimum performance level of power domain, so
allow it:

  sm8550-mtp.dtb: usb@a6f8800: 'required-opps' does not match any of the regexes: '^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index a3f8a3f49852..4875c5b7d5b5 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -58,6 +58,9 @@ properties:
     description: specifies a phandle to PM domain provider node
     maxItems: 1
 
+  required-opps:
+    maxItems: 1
+
   clocks:
     description: |
       Several clocks are used, depending on the variant. Typical ones are::
-- 
2.34.1

