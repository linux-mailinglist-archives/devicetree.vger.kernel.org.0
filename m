Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF1CE6F30A0
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 14:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232479AbjEAMLU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 08:11:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232468AbjEAMLS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 08:11:18 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 701941A5
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 05:11:16 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f18335a870so13503215e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 05:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682943075; x=1685535075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdPOb/kVKRm2CWLAaTiuZb0Yvx8fGBpCags1edg/orY=;
        b=N8p+YFeajBoBPIuVuNaPO8zZVKM0DnysnGItaokQJ9BYrqiCY2YuwGc8BSZB2kxwSx
         iTCaXam8Q3rg3GUlRrrNFXflyxGPJ88jplC+nJuyV0qyoPUUpnUb4MyIswfIV5m0FGwW
         VQ7+II+5miYAbI+B062O2/ourqGdd3O2cBnq3Ebju+FT6mum1tihntwFEIuh8emWXtni
         gMJNXpvaOQlt7rZfdB2pnfHDm95UjOP3osW2GdvYJOq2eP4EgRWsbDVc9YKrED+0o10D
         6is+/SGjJMaKlHDOAfuLANrUM+YDLVvB6ZgF3IXj0MfHSQzVUj5Q+3T/xlndZjtuNbk6
         9NSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682943075; x=1685535075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdPOb/kVKRm2CWLAaTiuZb0Yvx8fGBpCags1edg/orY=;
        b=ExUvCa+cdOEcGi3gIppy56GXquIsctlOtskihDMttQTiWDn9Gk82ukkx3HJA/Z9nT7
         798qJMaWJeddYa1/Awf+fvmxq+vsVmgNbBTREHGCkH1gRVdvCx3rHvpPECSn3ycPUHk8
         tPoB0f1DIXLhhDiZR9ZhDLmvvOGloAY5DufYKkSrKaoWUcJh34Y6i8pYzhjcw5YHECNP
         x1/+Up2Ut0kfPT+RUf3Af07wn+M0Rux37tKW+GphB5cHwGjiBQo9J0LhojBwyOhqJGwo
         x4cvS+oES7XwJpoQla1eFXHoimGG/n2N0aLaqlvnO12wxqmfehBJJTJEqQB7g7tCYsAz
         S98g==
X-Gm-Message-State: AC+VfDwuYVpPW0FY0/GWQ8Qwj4l7jro0g7Dx72gXNsfW8+ad35qdP2sV
        ww/EFxSjJsufeYC7fwNSxvrdJg==
X-Google-Smtp-Source: ACHHUZ5unDH0Cz1OdQ96Xami9iOM40tsQFdU5LlEnhGDCdElpicSQYfFjNd+tAlYil+9qAd5Y3pd4Q==
X-Received: by 2002:a05:600c:214e:b0:3f1:7277:eaa with SMTP id v14-20020a05600c214e00b003f172770eaamr10092767wml.31.1682943074925;
        Mon, 01 May 2023 05:11:14 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o10-20020a05600c510a00b003ee443bf0c7sm35856634wms.16.2023.05.01.05.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 05:11:14 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        luca.weiss@fairphone.com, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, bryan.odonoghue@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 01/13] dt-bindings: regulator: qcom,usb-vbus-regulator: Mark reg as required
Date:   Mon,  1 May 2023 13:10:59 +0100
Message-Id: <20230501121111.1058190-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
References: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
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

The regulator code needs to know the location of the register to write to
to switch on/off. Right now we have a driver that does this, a yaml that
partially describes it and no dts that uses it.

Switching on the VBUS for sm8250 shows that we haven't documented reg as a
required property, do so now.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
index b1cff3adb21b5..7a3b59f836092 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
@@ -25,6 +25,7 @@ properties:
 
 required:
   - compatible
+  - reg
 
 additionalProperties: false
 
-- 
2.39.2

