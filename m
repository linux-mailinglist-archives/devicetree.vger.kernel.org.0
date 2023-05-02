Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ACF06F404E
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 11:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbjEBJkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 05:40:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233571AbjEBJkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 05:40:20 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 945FB4C3B
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 02:40:18 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-63b620188aeso4109474b3a.0
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 02:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683020418; x=1685612418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BCKQTZ9DOack3c36NTOm6gsaC19bGFHhcNV2eKYbI7I=;
        b=rojoqY5BFmveWUb7kfww+A/cbN3EIDrEedpYspNvdGtQOlEfNj6iH2xMloTSlLY+Dk
         PRzMdkv68OzH3WYhEGiRfI34SfdJKJakQHlax4TGA0+Y9CQsBP9PQU201hHXIFWBBSaA
         kMR7iUJgA1TjlUfvh22wfQvgNYw74OwuBx+9Y0vhGXivQfB5qizw3EjhUglkH7bVNqwW
         QlIPSQvn24R5gTTBGVXA3aKYP1eoRkX5EnTg1l3PUbTOYj2iyX3+DgfaAc+doYUYu+sB
         HopURdN7ajn5LiIWxilReASWTcpRcZZlLHGid9gL/I8Zz2Hvqw+u7ZkGNlhi8ntJx9Yc
         FCXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683020418; x=1685612418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCKQTZ9DOack3c36NTOm6gsaC19bGFHhcNV2eKYbI7I=;
        b=HgvBrsyBYiVjC+BG1aI4onPtzitlwdHLA8XCXamC1mhB4Jrgdflj/wCf03gL1kNdmh
         i6KadyKhc+y58XOyuUAYXWDee5OXI7xygm/MjBVUL9yMd1mk2A3lLpCfzTJ34ocJ2Jem
         DyZjVCZc7zkI+q4I8ySZ8Ngpdc9CVp2r0Pz9N66rGiTUGlR2d/BPHjJLEVrAf3aF0saC
         HManVSv0qfqSOYHRmv4dfz3C4npoVvsK1Ua70GuuAmNAtpuR/dyBVBIsF6bmfzWUbQRC
         jhS38xpeHPXW6nS110C1D7Jx2kCotcpxk2mMISShwRDVSuk3OZV8AWrc5tG4m+0Z1VKR
         SlBg==
X-Gm-Message-State: AC+VfDx+UfL0QM5wFc8cSyXVbcbZDQDGJktGkQI5E8zPYZyYGsiYxnlP
        5/bWthhn4O6MnVeJ99F3eJVOtw==
X-Google-Smtp-Source: ACHHUZ4C66gbJED3MdZE1Q63UkJBSkKih+IdvdLla8/vYowv4aI+xwWmHcL8yto/nT1JZT/f7YkgRA==
X-Received: by 2002:a05:6a21:398e:b0:f0:3917:5b20 with SMTP id ad14-20020a056a21398e00b000f039175b20mr21094314pzc.31.1683020418050;
        Tue, 02 May 2023 02:40:18 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id r78-20020a632b51000000b00520f316ebe3sm18201585pgr.62.2023.05.02.02.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 02:40:17 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        linux-usb@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v2 2/2] dt-bindings: soc: qcom: eud: Fix compatible string in the example
Date:   Tue,  2 May 2023 15:09:59 +0530
Message-Id: <20230502093959.1258889-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230502093959.1258889-1-bhupesh.sharma@linaro.org>
References: <20230502093959.1258889-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As noted by Konrad while reviewing [1], the example node in the EUD
yaml documentation has a compatible string with no space after a comma.

Fix the same.

[1]. https://lore.kernel.org/linux-arm-msm/20221231131945.3286639-1-bhupesh.sharma@linaro.org

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
index 14dd29471c80..f2c5ec7e6437 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
@@ -55,9 +55,10 @@ additionalProperties: false
 examples:
   - |
     eud@88e0000 {
-           compatible = "qcom,sc7280-eud","qcom,eud";
+           compatible = "qcom,sc7280-eud", "qcom,eud";
            reg = <0x88e0000 0x2000>,
                  <0x88e2000 0x1000>;
+
            ports {
                    #address-cells = <1>;
                    #size-cells = <0>;
@@ -67,6 +68,7 @@ examples:
                                    remote-endpoint = <&usb2_role_switch>;
                            };
                    };
+
                    port@1 {
                            reg = <1>;
                            eud_con: endpoint {
-- 
2.38.1

