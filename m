Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0581C6E0C98
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 13:35:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230293AbjDMLfR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 07:35:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbjDMLfQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 07:35:16 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C05A26B
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 04:34:47 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id i3so4581429wrc.4
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 04:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681385682; x=1683977682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4BSMsmRcBzm9a9F0ARGDiJoIhh4OmCxmbiTOKI4boyU=;
        b=W4PlFT/XWAOQUyEjXNI72N0r4kenmbJiwGNxSwcpMUi6HLjpO31whvHe3fKXUmWTat
         8zpstm4pqEMGVWkKEKnlN13hgKTZAxHOYSgsWX3WRzekLUxbutO/sNfrVSQNMlSKqePO
         CjEY93A0E7L/qn+9cuin2UOE5VxejaXt5BJ73FRynnYeXMdqgIDHyl3BTy/3mZ4dUuf8
         LODUDY/Kyj22zScNQix+nshZdkPCih3+kOgGKQXK8iyKG0Sarr/Uvycq0vXnOg2+omLg
         QAd+NEwo7LhFbgExsVWR/xEexaDojg46sccLZpGV9hiwpM2f0QSfWHm4lwT66wXP2eda
         o83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681385682; x=1683977682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4BSMsmRcBzm9a9F0ARGDiJoIhh4OmCxmbiTOKI4boyU=;
        b=EbCZFzorptcV/0cLRTRBISr2PqPqZVaZKM/17OdU2/mzd77E8sMdI2rIEKK/Wz44Ci
         +CXqlSUx+LhPFAl6/B5cg2QXA5K9lVNDeRAWSWyqkujW2BYPWwLz6PJXaE8oHQ0YCC96
         uHaIZaem8y1eeNHQqZLa4JpBOFZ3Ko09QGkSLBznHDnwBeSwte2X5uGNvgg+rPpbDOzG
         NPdoJVQR9fQ82c1kTDtscaZc7zE/Xozu8kA9HulASi/sZf9bBrxhEOyC0zb1mIthGphk
         ZfBk04rxCcKLZ2pHcokTTxrcKP4iWLPAHu4Ri/v+MvPhfCjtaWX4JCOOwXoQX+xsjScj
         NW1w==
X-Gm-Message-State: AAQBX9dI3O5iXbHy42cLH8lojle2v+MGwHZv9j3w0FFoA+gfzf/0pmRk
        Ioo+v3dOXR2Yuuakkstoy6G2nA==
X-Google-Smtp-Source: AKy350bqTFr2hSh2GT4LuhiMp4Ssh6iN0iJ1HJkoQmHwTomOr/kpC/rafk7P6wPCvZr31Ivqrg2sYA==
X-Received: by 2002:a5d:4042:0:b0:2ef:b4ac:8e5 with SMTP id w2-20020a5d4042000000b002efb4ac08e5mr1317145wrp.28.1681385682326;
        Thu, 13 Apr 2023 04:34:42 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e16-20020a5d4e90000000b002f2782978d8sm1108877wru.20.2023.04.13.04.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 04:34:41 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, bryan.odonoghue@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
Subject: [PATCH v5 01/14] dt-bindings: regulator: qcom,usb-vbus-regulator: Mark reg as required
Date:   Thu, 13 Apr 2023 12:34:25 +0100
Message-Id: <20230413113438.1577658-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
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

The regulator code needs to know the location of the register to write to
to switch on/off. Right now we have a driver that does this, a yaml that
partially describes it and no dts that uses it.

Switching on the VBUS for sm8250 shows that we haven't documented reg as a
required property, do so now.

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

