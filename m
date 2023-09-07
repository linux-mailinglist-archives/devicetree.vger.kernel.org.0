Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF228797549
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230477AbjIGPq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:46:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244276AbjIGP1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:27:50 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A85BC1BF6
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:27:24 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-44e05c22b92so45230137.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100402; x=1694705202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k6Cn+l81DTeRH5BCa+vvn0iipB7M2kLJ+yL4RWSTDCg=;
        b=lHbTG27A98YpqZx6cWLhnBunYuzBnlAzHGri2h6AMvDWvdutSRcibU7st9/tuyJ6Sd
         77W5D7OL2hIze5vqw5jvDrdxHe/Ojko8p5x43F4iVRHac7+khUgWZIeCtVNQdWwG1AfI
         LJwWJNzRNtuelUvsb/Q7bdVngYZYOYSPl8jGy8Gch+7p1EZYKBXJKomtoLAkOSdu6Oox
         RJnQYms5MestkgkBihBr3d4UC6MFwKgae1fqOVO3JYpgnKRruDJpIvEMicH7qOjuJIk8
         hwN8d5a6mK06jDRq1fkz6noBKNogTIORaSYNmYwYFLYqTxD3jCimr/993VMpdtwlCZN3
         R7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100402; x=1694705202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k6Cn+l81DTeRH5BCa+vvn0iipB7M2kLJ+yL4RWSTDCg=;
        b=feYBzhuOE3UttZOC1kE2yjJD4OIqSF/CP79Q2docKOsWLyvY6bqFStSKM7eAdXbWa2
         Fm0gamYQ/WtkLxMBNZkXdUGs7ooqnhsUDy2NZd71SYpHshYbl5wBCgg6ZgGF/6Kp8+Eg
         MArlTONUCcyRoXCJo/4LpaNsPEOs8/Ia7NgNsF8gpFhBhhsJg1Pb541nNoSkoKapzNCo
         +RRhA/SajWWmIeg4FtPt7LUqNKewrX35w65OVm5qGa9kkOUGAQXF1odfaypFdhvGvcQ9
         PVHAPuGmfB5Ex6MEEC46jUpDPERuvpAtTo7HAWoyDDFX5Rl4kAC8Br1HKhVwzQY2OzZ5
         2fDQ==
X-Gm-Message-State: AOJu0YxyO3tq17rBX6ouiZ5f97VTgug0HNyjapkpwjjzD7RdA/NbonoA
        g8YGCJQrl/jx00i93WYIMPPAYV1dAMM=
X-Google-Smtp-Source: AGHT+IEhse4HXZZuQj8ROuTqc2czAOUKZURtlZ/ZoqT2siLts8bmeB64mcUJK3zViszaMOCk9aEZ7w==
X-Received: by 2002:a4a:db89:0:b0:573:764b:3b8d with SMTP id s9-20020a4adb89000000b00573764b3b8dmr16988568oou.0.1694100033203;
        Thu, 07 Sep 2023 08:20:33 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:32 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 6/7] arm64: dts: imx8-ss-audio: Move audio_ipg_clk outside of soc
Date:   Thu,  7 Sep 2023 12:20:07 -0300
Message-Id: <20230907152008.491775-6-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230907152008.491775-1-festevam@gmail.com>
References: <20230907152008.491775-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The audio_ipg_clk node does not have any register associated with it,
so it should be moved outside of soc to fix schema warning from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
index 6c8d75ef9250..f248e78fb1e0 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -7,19 +7,19 @@
 #include <dt-bindings/clock/imx8-lpcg.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 
+audio_ipg_clk: clock-audio-ipg {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <120000000>;
+	clock-output-names = "audio_ipg_clk";
+};
+
 audio_subsys: bus@59000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x59000000 0x0 0x59000000 0x1000000>;
 
-	audio_ipg_clk: clock-audio-ipg {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <120000000>;
-		clock-output-names = "audio_ipg_clk";
-	};
-
 	dsp_lpcg: clock-controller@59580000 {
 		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x59580000 0x10000>;
-- 
2.34.1

