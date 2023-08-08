Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C176774905
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:47:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229818AbjHHTrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235494AbjHHTqp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:46:45 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 853A44A046
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:50:24 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-68783b2e40bso4152701b3a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691513424; x=1692118224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HvqYw50hA3eg6fTEyMxs963EOcH3mDmkMLxwXE575wg=;
        b=SspSYM+8cBxGw/iCQyPDIpRCVJkXFS1HRkriiV2a9QAFLSXxsc1Zi81wE65+NI5K8o
         G+K8dLRZ83DESdVmB2Fy4Zft3IWyRO8joEQ7EEuU6ArUb/vXQ4TMTPT2r6QtuPGKHuze
         IEt7VJ1UHQZMWC23JpGr4mgh2WS2gYI0n8iC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691513424; x=1692118224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HvqYw50hA3eg6fTEyMxs963EOcH3mDmkMLxwXE575wg=;
        b=FsIE1RFQ2DGCtHZgrEVGHBarigqcHk/57JOtj7QvyUW8OX8QyB1BFNVvDGSsu32UWN
         Mk3wStW9sCJNayfuXgeErttFqKjRy1VGlXbgOUXSTjUlMV3b6r2xWNgUBZ+IqC2b/tXV
         xM7Da1ABsPgWVN5oGuiXZC0RyU5LmLe4IVziO+a9FhkYLXTYCuMfbpm2qXx8d64niXW6
         HRoFfYTR0cGocoglPLzmZnpmloj7eesQ5wFozEVpcpn5oi0adPPbED5mg28yoT3DTnD1
         kJd/y6FSLCCQbB4c6VVRZow3W9/ftq+214F0Rc//Nvmmbus2t4iQ8OG+dauP2ljWSjiv
         tHug==
X-Gm-Message-State: AOJu0Yxx8pXZDOF/5Os+AJM8vu9NKzbJMx+ssoCKHRbRAS7S8Yg5u3Va
        LxhVNTH1LTo0MuG2fKsyFv/cHQARmfmNIHKfeNc=
X-Google-Smtp-Source: AGHT+IEr4kRNf11XniaflwZ5G4MFT6CEIrEsTvEvbpcV/reJoBZs+xiAbEYbAhT6n5rT/1rjg8mLWA==
X-Received: by 2002:a05:6a20:6a10:b0:13d:ee19:7725 with SMTP id p16-20020a056a206a1000b0013dee197725mr12015955pzk.12.1691480036426;
        Tue, 08 Aug 2023 00:33:56 -0700 (PDT)
Received: from localhost (97.176.124.34.bc.googleusercontent.com. [34.124.176.97])
        by smtp.gmail.com with UTF8SMTPSA id i5-20020a170902eb4500b001b04c2023e3sm8161899pli.218.2023.08.08.00.33.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 00:33:55 -0700 (PDT)
From:   Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Google-Original-From: Hsin-Te Yuan <yuanhsinte@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Hsin-Te Yuan <yuanhsinte@google.com>
Subject: [PATCH v2] arm64: dts: mt8195-cherry-tomato: change watchdog reset boot flow
Date:   Tue,  8 Aug 2023 07:33:07 +0000
Message-ID: <20230808073342.1054762-1-yuanhsinte@google.com>
X-Mailer: git-send-email 2.41.0.640.ga95def55d0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The external output reset signal was originally disabled and sent from
firmware. However, an unfixed bug in the firmware on tomato prevents
the signal from being sent, causing the device to fail to boot. To fix
this, enable external output reset signal to allow the device to reboot
normally.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@google.com>
---

Changes in v2:
- Limit the effect only on tomato.

 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
index 2d5e8f371b6de..a82d716f10d44 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
@@ -23,3 +23,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
index 2586c32ce6e6f..2fe20e0dad836 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
@@ -43,3 +43,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
index f54f9477b99da..dd294ca98194c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
@@ -44,3 +44,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
-- 
2.41.0.640.ga95def55d0-goog

