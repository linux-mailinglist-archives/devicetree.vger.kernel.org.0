Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A900651278
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 20:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232064AbiLSTNW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 14:13:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232347AbiLSTM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 14:12:56 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86AC611A25
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671477126;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OIdwR+qvjuKwdLoe3e5YFQ/t6daZrSiNt47lDk8vL4k=;
        b=hEP5TpkGywLxEsF2kxOi+3Z3Q23m6I9nU67kCCds0//8jVzQod6WtJClf5Qm2n+RX+Am1I
        aKuFUP+6HecKdtSxHzMcXbNQE/uF9SoH+1dveOOlvXHI4UX8jp+qUWL+V6BZQ8GOGBZSk+
        gfJ8pFK/YzJNde8R7NijpMo7JrBztbY=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-582-e76gtKzLPNilk7CyubX0yA-1; Mon, 19 Dec 2022 14:12:05 -0500
X-MC-Unique: e76gtKzLPNilk7CyubX0yA-1
Received: by mail-qv1-f69.google.com with SMTP id a15-20020ad441cf000000b004c79ef7689aso6019359qvq.14
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:12:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OIdwR+qvjuKwdLoe3e5YFQ/t6daZrSiNt47lDk8vL4k=;
        b=UdTtf40xgQUPUuHQ5hA7Ykg4fURwVvAejooEkxTDPuzkzEzX0ExG3G77whb53PdmIp
         viV+qsxJTf1yZn4OKNQurPSP+ayEzGbV9SHElsCGbKgnp/hCyxXyw+4U3koZPS8+pQBS
         lAVIki/pje1sbLK1STDmdz+JkoVoxqWl3FWgD3eKBp48dubvSHXT/XRjd6iphclml8r/
         fR3aRw5fdCdSluSy0ik6lPcR8k8RmbkoDoU2c9btC6bvxoU3DIJzpYn9+RIrSe9Buoau
         MSuK+Ba4HT3r2PabV7ItuvFuqHbq2GZzAIhxiOwSaPPC3w63zOupmsWt1c7S7Wl5yc6u
         /amA==
X-Gm-Message-State: ANoB5plteqvDy9gqgto23REBhRtVk0TP0NOoY51JSLnDTTN2h+YlKR67
        8V3xfKQ+lNeic0ObhI7nhvFlJWWb1y3rF1jPYZLz6XYfcTsUJaDrL4YOJomsJ+kNFm956C2RkoI
        jAOnyZy3P1SX5GbgI3XxSbQ==
X-Received: by 2002:a05:622a:242:b0:3a5:467b:c1d0 with SMTP id c2-20020a05622a024200b003a5467bc1d0mr82719778qtx.18.1671477124904;
        Mon, 19 Dec 2022 11:12:04 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7O2YefxePKoJwTUXuIPiBA7nNAECGHZpF9m3+9R83hpsnY8mCSL2vmHY5jCgQlVc414BYjwA==
X-Received: by 2002:a05:622a:242:b0:3a5:467b:c1d0 with SMTP id c2-20020a05622a024200b003a5467bc1d0mr82719753qtx.18.1671477124696;
        Mon, 19 Dec 2022 11:12:04 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id w7-20020ac843c7000000b003a8163c1c96sm6344207qtn.14.2022.12.19.11.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:12:04 -0800 (PST)
From:   Eric Chanudet <echanude@redhat.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>,
        Eric Chanudet <echanude@redhat.com>
Subject: [PATCH v4 2/4] arm64: dts: qcom: sa8450p-pmics: add rtc node
Date:   Mon, 19 Dec 2022 14:09:59 -0500
Message-Id: <20221219191000.2570545-3-echanude@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221219191000.2570545-1-echanude@redhat.com>
References: <20221219191000.2570545-1-echanude@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the rtc block on the first pmic to enable the rtc for sa8540p-ride.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
index 34fc72896761..c9b8da43b237 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
@@ -13,6 +13,14 @@ pm8450a: pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		rtc@6000 {
+			compatible = "qcom,pm8941-rtc";
+			reg = <0x6000>, <0x6100>;
+			reg-names = "rtc", "alarm";
+			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
+			wakeup-source;
+		};
+
 		pm8450a_gpios: gpio@c000 {
 			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
-- 
2.38.1

