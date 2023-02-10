Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CF3969215E
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:02:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232462AbjBJPC3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:02:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232083AbjBJPCY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:02:24 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC0115B76F
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:02:12 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso4259128wms.4
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N8+H5EEAbdvf52NcUpG/q5u48K7jDEZDyAtoMXnmBJw=;
        b=hOqKKORNY8wSqtfSKO/XW8kOzz05LhPY/YX4fPQlqGEUIJlCkhmnB+O2BY/bi6C95r
         PFThlZwSBeN+uSGf+N71xv7/k0LROHJ9OvOLKO/9iaKZte/LgAt35SyeNT66vsY3gRpH
         WwKtiUZaulMcG+jvBVp1XivQHikOcu4L2LtnbH4nUk19t1DAR8zR5mwc11RZ1Y/Ixc/Y
         B2xXaW9Ry2VSpLvylkvGO/jyQFv/O/PnW2Q3BO1FERV3dbVYZsz9dNSX+6asaAvav4+A
         7btRxdQqL7OPZMUPDWp9tgJ9RFWtFl5whSDEaVUCMZcFJQj7uym0AonXtEneqxFMZF1a
         L+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N8+H5EEAbdvf52NcUpG/q5u48K7jDEZDyAtoMXnmBJw=;
        b=BLqdb4eXyX5gPnmUnGXq0DTzIsNxCFUer/DG2s4ELk8IZtM6Zl1NWN/uVCYMXQv+r2
         fHwugtgygLnRs130JSO1uZ4mC/xF2kVuem4oUJIBJ5P/O9GQ5Im68aP76xGu3CKAKB2S
         oeLCV0gm8V1yYJt+2QOVaLfTP8kNLgewPxYWs9NnJVwdNe69bPelU2WHhvp6elytXtV0
         2/pzCEuqo5ADrcWg46rrtZ5NmiEwePvBD0ATapaiPAgqIFsp2o1FUox6AxYmbt96F4oV
         NsbzNbCDgBFIvX4lYUVup/fyh/z09Dl0jhWLLmRPmoJHDO3xG7311M7OgNljAtBcyW4L
         jcNg==
X-Gm-Message-State: AO0yUKWCADhqhmJOWZgmAinzUbNdYactnWyyPgdnwp5gJhQ3eXUfUqdA
        NDW23e4nkyI0pjx5xxZg369iGLzA/ra+hFwwm4E=
X-Google-Smtp-Source: AK7set/KVGxCa1+r+60rPwUlqZcFQjBtDzbDwBsLRWFoSuiOkR0N9i2LeJJ1ICD0cdH3umVNlb++eQ==
X-Received: by 2002:a05:600c:1656:b0:3db:742:cfe9 with SMTP id o22-20020a05600c165600b003db0742cfe9mr14661428wmn.34.1676041331180;
        Fri, 10 Feb 2023 07:02:11 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id w23-20020a1cf617000000b003db1d9553e7sm8282482wmc.32.2023.02.10.07.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 07:02:10 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 10 Feb 2023 16:02:05 +0100
Subject: [PATCH v2 02/11] dt-bindings: soc: qcom: qcom,pmic-glink: document
 SM8450 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230130-topic-sm8450-upstream-pmic-glink-v2-2-71fea256474f@linaro.org>
References: <20230130-topic-sm8450-upstream-pmic-glink-v2-0-71fea256474f@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v2-0-71fea256474f@linaro.org>
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the SM8450 compatible used to describe the pmic glink
on this platform.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index cf863683c21a..a85bc14de065 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -25,6 +25,7 @@ properties:
           - qcom,sc8180x-pmic-glink
           - qcom,sc8280xp-pmic-glink
           - qcom,sm8350-pmic-glink
+          - qcom,sm8450-pmic-glink
       - const: qcom,pmic-glink
 
   '#address-cells':

-- 
2.34.1

