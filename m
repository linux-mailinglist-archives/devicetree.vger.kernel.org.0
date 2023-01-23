Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7AA677F43
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232419AbjAWPQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:16:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232488AbjAWPPw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:15:52 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED1CB2941F
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:28 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h12so7127095wrv.10
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lCW60nZQX7NSf4Kfpcfc2t8JVwgs7iYI/cZwHaiLa6g=;
        b=veEO6pQO80liV6qfBiY02vPNpDUZzao2lLv/0+bpu3QBpChjObPNxiO4YDZj6r/QVX
         5mJw+JMPeMeBMu/hzAeMgxB3vLhIdNAsjnAoqEPvdwpvchFh9HgGYMiOy3a1u05AIVwW
         a7h/HC/rFQYtndaCy2idaxfSzTMvurvsaPuMHlf9N5JXhVPcMzWhEmepd7TDZ4AkQ49a
         CYJhzkLpb8dd8f2Gr4Mo9JK000OL+2p6yRp+VydzXeR23oa4wVMpDRaFdVYqb3c1vsxv
         C2aH8Z8dogGhYREfwQV7BuK7Sssmg/ROKc0jS2mid6c6D87Y3wTNydyuJJcBSUIC1j1h
         D/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lCW60nZQX7NSf4Kfpcfc2t8JVwgs7iYI/cZwHaiLa6g=;
        b=nFFYzAeBe/9ojkqV4Ert3vMatFiY1LPWsFxUQ+mjvixJPDR38nKogFrEdJpsG0ysM1
         36E8Fz/pm7va+0d2lfDfYH0SuoS/clcxCKu14n3VlHRmO6xM5Ee+9Ntiu55tvWVpOKtU
         5cdljXgm2Bh+IKGn/1+wqba6TYR5HDeLPSpWEsDZxnqDHzqUqK7cmQUZAty6IpKvpizt
         7xryaMkv8+ycMxy/jA5i+9PccuXDL7sIZh+f5jjLqt3dRgIHPscK+pL2AiFr+Sd6GSm5
         ZFSnHVXkLpq5RzThXw0HNnBdRC4tn+1WjZ6ssSY9M+7hoN+t1br7zAoZtlTuDT1waFPK
         gajA==
X-Gm-Message-State: AO0yUKUnJJqd7rF+oNNc0LGOxOwfdw8EQtyzkcu2q/w1ubxwSa7wYxXX
        dbpGhXSg+Fu/BsbDRoHhc6KIuw==
X-Google-Smtp-Source: AK7set8Cazr1rmHYux6nkvowszJLMVEn0atVI6OXJplmFBLXjFi+CoAV5MbxWdu5s4k/u6NKlKZv3g==
X-Received: by 2002:a5d:6804:0:b0:2bf:ad43:8f08 with SMTP id w4-20020a5d6804000000b002bfad438f08mr124012wru.14.1674486926996;
        Mon, 23 Jan 2023 07:15:26 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6e83000000b00289bdda07b7sm4527603wrz.92.2023.01.23.07.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:15:26 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: moxart: align UART node name with bindings
Date:   Mon, 23 Jan 2023 16:15:25 +0100
Message-Id: <20230123151525.369255-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect UART/serial node names to be "serial".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/moxart.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/moxart.dtsi b/arch/arm/boot/dts/moxart.dtsi
index 764832ddfa78..11cbea5b94d2 100644
--- a/arch/arm/boot/dts/moxart.dtsi
+++ b/arch/arm/boot/dts/moxart.dtsi
@@ -138,7 +138,7 @@ mac1: mac@92000000 {
 			status = "disabled";
 		};
 
-		uart0: uart@98200000 {
+		uart0: serial@98200000 {
 			compatible = "ns16550a";
 			reg = <0x98200000 0x20>;
 			interrupts = <31 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

