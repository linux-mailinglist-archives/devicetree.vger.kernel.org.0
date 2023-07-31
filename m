Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 656D7769112
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjGaJGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjGaJFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:05:39 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30DAF19F
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:04:47 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bdf08860dso774221566b.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690794285; x=1691399085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nJO9NQ7vK7AJAcGCHk7QVU9AX/jwtIW+NQLwTCdqNqY=;
        b=r0EqoIqywadaqctz91y78LQA8JglGD9rAv8WsyzPSKs1RjGZXSnFPgyDBPMk7ZjoBw
         t1sYbzrLlTO7YAJdPkM2CTR/7ajs9eipcQxTWa9nvdk7IiyucaktyQKu6kbuBGcD+F9w
         fYVN2+BuXxbq80PXxkUYHbXaN2IclbY+YpVKwoQjQLVOSTyRdXDVbxaSKpSUgvZjTcUp
         NoFhc5frg+SAm/yTXJx5qphKgCmvg4wsS0pG1ZMbtLlMfKXPvh2+c07ee5wDiGRcA+IZ
         CXWaTAMZE6pxaujQo5pMIJfszyEFdmEgB+12CRm/j7dvCqkgSSrEVdGzONr4qLb9iPLm
         M+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690794285; x=1691399085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nJO9NQ7vK7AJAcGCHk7QVU9AX/jwtIW+NQLwTCdqNqY=;
        b=EmBm+q/YzKFR6Q+xpmO2OLfSFkN518y4vcjfZdPf05BxrtER8pOp6yn48BJrwzzN8F
         iQlN5ayxB1uTSB5uavLUe/Ofr5sFB9ZXbB+TJxumPBRr3XCv8poM/H9C0V0oAZbhRDuc
         fwYPzaDlN2Q+29HDhLI87DTo7lhINMNpOpgIHSd7vUxWWtBfZ8OG/iYJjgwGCmbcRtBQ
         y5ItMmv0eIELrkOvkwUrLhWX+JOIO1JffVIL7Gc4XCHHQxrOPQa1GwzwadTzJWleyX2n
         jA/nx1MN/YH3RKDtNa+BC/s1zQGDMiVOCe8R2t/a3vwPEYgch1k3UkSWR69N1gs4bRYK
         RRyg==
X-Gm-Message-State: ABy/qLZdM7XN9otp8EvxaL8dNhfiroQ0Vk/iUXWqhKiqcrzFyGd/4MPy
        GZv7oqtp3DFKcpfq/+wAHOq8gQ==
X-Google-Smtp-Source: APBJJlFkSpVPIStAe9Vl3YBvz9umydkAl6u8k+fmu5C4SIOfgsL/ZfGAkiz3E+homafZX+J1d2uqSw==
X-Received: by 2002:a17:906:5a45:b0:99b:cb59:79b3 with SMTP id my5-20020a1709065a4500b0099bcb5979b3mr7071426ejc.1.1690794285532;
        Mon, 31 Jul 2023 02:04:45 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id a11-20020a17090680cb00b009892cca8ae3sm5829049ejx.165.2023.07.31.02.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:04:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: meson-sm1-odroid: drop redundant status=okay
Date:   Mon, 31 Jul 2023 11:04:42 +0200
Message-Id: <20230731090442.100856-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

status=okay is by default.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
index 2fce44939f45..cdb80e0a7718 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -181,7 +181,6 @@ sound {
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
-		status = "okay";
 
 		dai-link-0 {
 			sound-dai = <&frddr_a>;
-- 
2.34.1

