Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B544B4DC50C
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233110AbiCQLyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbiCQLyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:54:23 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE722628
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:53:05 -0700 (PDT)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 534073F312
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647517984;
        bh=GjViklxymlU9oUxXKXReSCbCv0V/xFiwY5UUrPDATe4=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=eJqkicx2v8fN5HnH6r5YPgXD+fPCVmkmJqYq3E0VQ3TRWKeaT5sM9qnEHiiHcETF2
         haeJklNV0pEukEnGoOc/x42+o/VAPPwhINWb7eagfs9rVPW3aAGKBm7NdRF0NmZ/Tl
         3oSE8/kvJ9hNt+GV6o8RWvBZSDn1PR7QTG+qG2gB+aZUqi2+DjwkQQCpNr32pmZwRp
         O2RT405gkldmW8hth2WiF4cC787O7hDS+iKp0N0EZ4yipuaM4tjx2nBrOJfR6lFRII
         oFBFNhyOgqn6J0sx4sLxYjyLK6MFpZu0HF3J1U9McLU5BuZUuQhghNgW6TGCNXKcjR
         d4MaSV028UMXg==
Received: by mail-wr1-f72.google.com with SMTP id p9-20020adf9589000000b001e333885ac1so1468301wrp.10
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:53:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GjViklxymlU9oUxXKXReSCbCv0V/xFiwY5UUrPDATe4=;
        b=BbtVvpBL2KceQr9nRk7Aquzgz0Ovq5no1l4defqm7qzbTgicGEy2leskaZMfb13UPg
         71RrOTnRUATSijHNQlk7z/x+IFWADgWxZVtK7C+7asWTpJyzZiIWCMEUJ9OlFA9MGmrm
         1MPQgWlrNiz3ffpFLVf0EvNxxGGQUxQ1BUvTGFm9smJlKrM48/K2CuYbsl07Vt9IrzI3
         uC/ydKcBwnH9rNmaBcJYfpvi4XYW1MESG1MCLAk40UVRfShyrFODIMheOgZFYBMirwKl
         VMPzzK38jjjtw8pz4pO16/W3PAgEWgtwWzP9xo5TNSvve8vZ2SPvekKjyRJIM/Z0T6pg
         oFug==
X-Gm-Message-State: AOAM530GX42GFVnKwxmyPyNRPOb/sfuWhgAVz75LKTt4yqLfmw7A9m5h
        QFCaxLMmed/0nb1QJESYA2YldkjvrUAyMubTlbcoKtON2hMb4vqTIo2xBQQq9ZnBv8G/hHmfDw/
        VYB1KZA09ahiQM0qHh9jcRdOKlGhPxWHURRn/r5g=
X-Received: by 2002:a05:6000:1a8b:b0:1f1:d8f4:4aa with SMTP id f11-20020a0560001a8b00b001f1d8f404aamr3854708wry.238.1647517983559;
        Thu, 17 Mar 2022 04:53:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/DM8yJ+E/5dtwBBWinZJdW8tjig7HKoZ0ZwEWjp3EJbHwbEfzlppwLm7ESNbDHke+EN+0lQ==
X-Received: by 2002:a05:6000:1a8b:b0:1f1:d8f4:4aa with SMTP id f11-20020a0560001a8b00b001f1d8f404aamr3854693wry.238.1647517983347;
        Thu, 17 Mar 2022 04:53:03 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g12-20020a5d698c000000b001f1d8bb4618sm5397351wru.36.2022.03.17.04.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:53:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Paul Cercueil <paul@crapouillou.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] MIPS: ingenic: correct unit node address
Date:   Thu, 17 Mar 2022 12:52:59 +0100
Message-Id: <20220317115259.448868-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Unit node addresses should not have leading 0x:

  Warning (unit_address_format): /nemc@13410000/efuse@d0/eth-mac-addr@0x22: unit name should not have leading "0x"

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/mips/boot/dts/ingenic/jz4780.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/ingenic/jz4780.dtsi b/arch/mips/boot/dts/ingenic/jz4780.dtsi
index 3f9ea47a10cd..b998301f179c 100644
--- a/arch/mips/boot/dts/ingenic/jz4780.dtsi
+++ b/arch/mips/boot/dts/ingenic/jz4780.dtsi
@@ -510,7 +510,7 @@ efuse: efuse@d0 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			eth0_addr: eth-mac-addr@0x22 {
+			eth0_addr: eth-mac-addr@22 {
 				reg = <0x22 0x6>;
 			};
 		};
-- 
2.32.0

