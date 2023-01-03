Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5672265C600
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 19:23:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230436AbjACSX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 13:23:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjACSX0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 13:23:26 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D23713D18
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 10:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672770163;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=GMkaQo/BI/bmgnSRQkk7Z0Q9S5jZOIoAqxp/1ITyx/U=;
        b=dq9emZGbx3Xf3J6gIWoAvl4HkFHTH+rYk7SWLeBjrtSeIP0ecqvbx+j4U5U+NaFkdjL1Uc
        x0cEHaor7ggZkSo6yha4GzqYeVlnp4B6fB88FSCkd2XDf1+Rfza5XSNL8LrCFUs1Qpo7H4
        r3XZVWPstOxsZ3RhQgJAYPw1A00t4MI=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-196-cAmCdtjdNgmL2M4CsZEXGA-1; Tue, 03 Jan 2023 13:22:42 -0500
X-MC-Unique: cAmCdtjdNgmL2M4CsZEXGA-1
Received: by mail-qk1-f199.google.com with SMTP id bi3-20020a05620a318300b00702545f73d5so21252051qkb.8
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 10:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GMkaQo/BI/bmgnSRQkk7Z0Q9S5jZOIoAqxp/1ITyx/U=;
        b=pUkXaX0wMnsQF4ZVnnKhEeybfewhbHh5fiy/1kCQODTB7+5xwrIZWmgZ0OwrEqb7BX
         ntq/1zpcptZOYubh73J1TGNPTst8ReJDcvpB5dlSRQ5+xQZQIwxAGvBcv3GQ6uffX4Si
         J52+aTJEl3ornFd8LjCAg3yVecC1NcUh46i3ou3Er9J7LP6i88M8Kk/Nzde7r6cEylk6
         oNvY52bXhzMizWla98Vhcyy8+RTCNRsNoEhy+FVv33Il9Pv2XqpB6GZ0lf5V4nsMDX+W
         jgSYmxKxSKfy0inKWl3NMqWn9bsvI8tBuz4eei94Owx1xqwB7m7LaUc0a1mFV84lGgdw
         LUPQ==
X-Gm-Message-State: AFqh2kr/0NpKURlmopldeoTC/2DjMC+MV7T9MCbrgjDINZN/4dEbdQke
        MqPnVvEir60r6dpTswoeMxkCNS16YmmWIozFWoWg6Fw5q/w7Lgk7qBqtqgi6K6wL2lLz4TqEJOr
        NcMRVKaWDD9tV3w7lpTl6xA==
X-Received: by 2002:ad4:5503:0:b0:531:8d5d:5005 with SMTP id pz3-20020ad45503000000b005318d5d5005mr37006754qvb.24.1672770162336;
        Tue, 03 Jan 2023 10:22:42 -0800 (PST)
X-Google-Smtp-Source: AMrXdXs6+sDNrbiuY5zMeIFOHkcu7VABU+uITEeUiDuFJ9B3n17tUX+zdFjgZj3PpnRhvmqwgPd0ZA==
X-Received: by 2002:ad4:5503:0:b0:531:8d5d:5005 with SMTP id pz3-20020ad45503000000b005318d5d5005mr37006733qvb.24.1672770162108;
        Tue, 03 Jan 2023 10:22:42 -0800 (PST)
Received: from x1.. (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id t13-20020a05620a450d00b006fba0a389a4sm22819675qkp.88.2023.01.03.10.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 10:22:41 -0800 (PST)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     quic_shazhuss@quicinc.com, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.co
Subject: [PATCH v4 01/10] dt-bindings: qcom,*-geni: move #{address,size}-cells on i2c/spi nodes
Date:   Tue,  3 Jan 2023 13:22:20 -0500
Message-Id: <20230103182229.37169-2-bmasney@redhat.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230103182229.37169-1-bmasney@redhat.com>
References: <20230103182229.37169-1-bmasney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the #address-cells and #size-cells properties on the existing
i2c/spi example nodes below the reg property so that all of the
address-related properties are grouped together.

Signed-off-by: Brian Masney <bmasney@redhat.com>
Link: https://lore.kernel.org/lkml/Y6Wnh+tXPhF6aC1b@hovoldconsulting.com/
---
New patch introduced in v4

 .../devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml       | 4 ++--
 .../devicetree/bindings/soc/qcom/qcom,geni-se.yaml        | 4 ++--
 .../devicetree/bindings/spi/qcom,spi-geni-qcom.yaml       | 8 ++++----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
index f5f7dc8f325c..594bf810a4aa 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
@@ -127,13 +127,13 @@ examples:
     i2c@88000 {
         compatible = "qcom,geni-i2c";
         reg = <0x00880000 0x4000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
         clock-names = "se";
         clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
         pinctrl-names = "default";
         pinctrl-0 = <&qup_i2c0_default>;
         interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
-        #address-cells = <1>;
-        #size-cells = <0>;
         interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
                         <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
                         <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
index ab4df0205285..d6128fb7d361 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
@@ -137,14 +137,14 @@ examples:
             i2c0: i2c@a94000 {
                 compatible = "qcom,geni-i2c";
                 reg = <0 0xa94000 0 0x4000>;
+                #address-cells = <1>;
+                #size-cells = <0>;
                 interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
                 clock-names = "se";
                 clocks = <&gcc GCC_QUPV3_WRAP0_S5_CLK>;
                 pinctrl-names = "default", "sleep";
                 pinctrl-0 = <&qup_1_i2c_5_active>;
                 pinctrl-1 = <&qup_1_i2c_5_sleep>;
-                #address-cells = <1>;
-                #size-cells = <0>;
             };
 
             uart0: serial@a88000 {
diff --git a/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml b/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml
index 2e20ca313ec1..efa7f52941f8 100644
--- a/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml
+++ b/Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.yaml
@@ -85,13 +85,13 @@ examples:
     spi@880000 {
         compatible = "qcom,geni-spi";
         reg = <0x00880000 0x4000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
         clock-names = "se";
         clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
         pinctrl-names = "default";
         pinctrl-0 = <&qup_spi0_default>;
         interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
-        #address-cells = <1>;
-        #size-cells = <0>;
         power-domains = <&rpmhpd SC7180_CX>;
         operating-points-v2 = <&qup_opp_table>;
         interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
@@ -105,6 +105,8 @@ examples:
     spi@884000 {
         compatible = "qcom,geni-spi";
         reg = <0x00884000 0x4000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
         clock-names = "se";
         clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
         dmas = <&gpi_dma0 0 1 QCOM_GPI_SPI>,
@@ -113,6 +115,4 @@ examples:
         pinctrl-names = "default";
         pinctrl-0 = <&qup_spi1_default>;
         interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>;
-        #address-cells = <1>;
-        #size-cells = <0>;
     };
-- 
2.39.0

