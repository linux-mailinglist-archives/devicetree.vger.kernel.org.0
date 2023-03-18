Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1683C6BF9CF
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 13:18:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbjCRMSl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 08:18:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229832AbjCRMSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 08:18:38 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1257A3772E
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:37 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id c8-20020a05600c0ac800b003ed2f97a63eso6523964wmr.3
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 05:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679141916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7wLSDWvrESz4iYHp2hJf4zI/B2Ft5IfrJsh7oW3/t5M=;
        b=P8L6gmRvxvKRPt7yP50DNz6B+U2CeoTtWTC3OgMES0EU57hTS5giSJU1BkKbuj/D9k
         79lWtx2nndF97422oUJP+c8wsy/n6CFQBly1VdWdx4XhddAWxPxSZ7ZAqSwHxF0gYp11
         ZYq8KsdZMum4xGU47cLh6q3ph6Kf50joOIL1YNs5+I7QPn/sauClBYC3LQQXks3Ra2US
         IT5I9oHUcDZ4GtSzbpPPibwGq4cSg3KB37Kh+p7CN5IkVwpyH90kgw299xipcMJRv/ZY
         4FIU+zxqiuD09M95EDxOQ9kZch9hwozjQIQqKYfPDkX6dpwOKLF6UAxopA4lwV0nJ9r3
         OM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679141916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7wLSDWvrESz4iYHp2hJf4zI/B2Ft5IfrJsh7oW3/t5M=;
        b=m/tPoJbPmqSqr7A9razLF3/hx9AKxYpaOcTrG+PODX2Ll0rWdf6JmSIhxXtd+Jq+3t
         XQBtxTaCNzb6x7pawlPkrWFDADndBUONmESlgQkBBLKrMdjZ5Yc3YdR0Dzcm2iQ2ss8Y
         D4p/oizEibJgyNc6SWLHbo3ySKPwcUhLLiVkysDYnZNTMQ4G1w4t7SivpSlNiaMG8DsA
         eqYG1+Pi8/wYFdoAbaMCcoCBSU8krE63MJAKVl3j2YWxsxzovM0G281y9GNZhwoDieOc
         AL2F5jcsDt+MZBKsTLiVpsjRtoCiLc6X3PIeX7VL9NdRPam4JTx8rffOGRkWRwQsvj+M
         eiOA==
X-Gm-Message-State: AO0yUKWqmlvt0u4M7rzSQ/q7xNTsCXeMDyAgj7vcMv7iXNb1tW5YmGxd
        WvwvqAbY5HuRbyNBEnvulckuBQ==
X-Google-Smtp-Source: AK7set+9yXGCNUiHc2ojXeS8P9OXRKhTJIrw13uPQbsv32HtvarbM3YY2yihX22FZSfG62oky6Qtgw==
X-Received: by 2002:a05:600c:45d2:b0:3ed:2a8f:e6dd with SMTP id s18-20020a05600c45d200b003ed2a8fe6ddmr16602324wmo.6.1679141916686;
        Sat, 18 Mar 2023 05:18:36 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id az40-20020a05600c602800b003e2096da239sm10814997wmb.7.2023.03.18.05.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:18:36 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        bryan.odonoghue@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
Subject: [PATCH v4 04/18] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: Add port as an optional
Date:   Sat, 18 Mar 2023 12:18:14 +0000
Message-Id: <20230318121828.739424-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

port is required to instantiate a remote-endpoint which can receive
orientation-switch messages from a Type-C mux.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml           | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 52886cdb0e506..1c887e34b1223 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -65,6 +65,12 @@ properties:
     description: Flag the port as possible handler of orientation switching
     type: boolean
 
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the PHY to a TypeC controller for the purpose of
+      handling altmode muxing and orientation switching.
+
   resets:
     items:
       - description: reset of phy block.
-- 
2.39.2

