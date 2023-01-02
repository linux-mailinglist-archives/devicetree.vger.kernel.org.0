Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6854C65AE65
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229923AbjABIy5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:54:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbjABIy5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:54:57 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3B042666
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:54:55 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id y25so40771498lfa.9
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ghzp06ziZbCt/lg3Z90dZpRxpdba+ht3TANbdc2otI4=;
        b=ZGtJu9MvlfktJ4IfS4zv+pTw1bOdjn+5c6xVmfBn6nD3Z9LItorWxx/cNajXpnqo2o
         /bEasvU80GUy9xnKBxn4o6bNvqHTSul8NkhGuWXhk1ouGesyRFgZD0Sukwp5NoLKUzBz
         G2EaPXptBbgj3By4b9G6wCTHJogNZWr31/40vcDC7jcTQEL+oWtbMti0FfYJie/MSA1A
         vOd9LEIGCxQB/MyfPL8UdMf/xi9HONPzvRMUZbEMUVfjhcgywtby3HXNVO0wl8cUW/jn
         KqEysV0pZzsTuwGnEiUleoFHS8u5Y2Ixbf76E0XzN5BQ40J90nNjNsiDvcMRwsQYrEk9
         0vsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghzp06ziZbCt/lg3Z90dZpRxpdba+ht3TANbdc2otI4=;
        b=Y6hG44uXs7cVtokSbreFJnACAFpZmK0+50fX7BbmjMMjSYZeFZhOOI8RSqypf1cANd
         P+VXliXTb1jahbZ+1thMEbLqyAjXxR4L/YmGASqjeMeagttpLaXz70fiy3cLV0HKlCPO
         DqnfnfjBDbTwZ90Jeo1YLjPKybB04MRkmE3iHeei4D35a5hR08fPCkAAmSQVlZMZRVVG
         mwqT6Oxq82d/mfU0d1WYsO0sQ3ROu0DnAODO9iWn1zR1d+uZ1ZwVpcbxj1UF8yZAr+SJ
         4E7YSTWeM3NLHHMV/u0dEvNMJpTte8seElI6IRroCHL9DEky3tMPvbfo7KyHff8nbFnc
         I9ww==
X-Gm-Message-State: AFqh2kqhzwfYVSCEtlK3qVjQy1rHeiNhS8s+IHcT/r/FmXZ8l9mUW5E8
        IRevANVmAWJiVgy2zgS3dhoLCg==
X-Google-Smtp-Source: AMrXdXvbM3W8SnMYyt7Bzk7bXkBQ6iBvdz+oDGODxQBUT4YH20+zKusZQtwQ4Om0DU8qCNx/OxpaZA==
X-Received: by 2002:a05:6512:3b20:b0:4b5:178f:a14c with SMTP id f32-20020a0565123b2000b004b5178fa14cmr13455243lfv.16.1672649694216;
        Mon, 02 Jan 2023 00:54:54 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q8-20020ac25108000000b004aac23e0dd6sm4408815lfb.29.2023.01.02.00.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 00:54:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/6] arm64: dts: qcom: sc8280xp: align PSCI domain names with DT schema
Date:   Mon,  2 Jan 2023 09:54:47 +0100
Message-Id: <20230102085452.10753-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings expect power domains to follow generic naming pattern:

  sc8280xp-crd.dtb: psci: 'cpu-cluster0', 'cpu0', 'cpu1', 'cpu2', 'cpu3', 'cpu4', 'cpu5', 'cpu6',
    'cpu7' do not match any of the regexes: '^power-domain-', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. Drop first patch about CX power domain (incorrectly placed in this patchset).
2. Add Rb tag.
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 89004cb657e0..84459dbd1604 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -537,55 +537,55 @@ psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 
-		CPU_PD0: cpu0 {
+		CPU_PD0: power-domain-cpu0 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD1: cpu1 {
+		CPU_PD1: power-domain-cpu1 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD2: cpu2 {
+		CPU_PD2: power-domain-cpu2 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD3: cpu3 {
+		CPU_PD3: power-domain-cpu3 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD4: cpu4 {
+		CPU_PD4: power-domain-cpu4 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CPU_PD5: cpu5 {
+		CPU_PD5: power-domain-cpu5 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CPU_PD6: cpu6 {
+		CPU_PD6: power-domain-cpu6 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CPU_PD7: cpu7 {
+		CPU_PD7: power-domain-cpu7 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CLUSTER_PD: cpu-cluster0 {
+		CLUSTER_PD: power-domain-cpu-cluster0 {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&CLUSTER_SLEEP_0>;
 		};
-- 
2.34.1

