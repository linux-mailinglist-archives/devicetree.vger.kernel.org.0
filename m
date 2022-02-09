Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E92A4AFE10
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 21:14:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiBIUOZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 15:14:25 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:58214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiBIUOZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 15:14:25 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D61D9E01C6B8
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 12:14:27 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id o2so6429407lfd.1
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 12:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wLuEF1JojT8ddrzbNvABXBvK35dZuuz52+IY18/wEwg=;
        b=A82to0KNbd7E4ns9k2SP/YKHHiXcx6mtZii9mXpRyHwGE2Ldb0NPHZRUTAt3ms9vW0
         DruEPGVt0mE0hbPiPPIGQL7+Fd+/vaGLtxHKhp/Z+a+79tLBmSV95czMTdKvJ3LHpyDO
         nHpVYHwiEbhUM4OPTQUuqcwaJaMTazDErLtgYEKWFyFg9Kb9UssEuxUKl1t0f3vvizkN
         bsV6rPBlCIoXcbW1zR2LQT8+mjsFYak7avrfTgFa8E1wiacYzsir5wA/KOAwp35s14uF
         qZcuoT/tSl+Ai4362BqJpMrYTOKpAuv2Aw/iL0ewPrCPHKNcdokslH5iMvkVvin59jO8
         UFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wLuEF1JojT8ddrzbNvABXBvK35dZuuz52+IY18/wEwg=;
        b=b4Gdkfmga/unq7Amg78H1eIr51PdWFN+zG7uRhIdfW388mOemXVH4n8RXOCJ69b973
         YzJbDY+ad+PC2KAcrQR7EhjP1ucNSaZQuArM5QCrnqvwYhBqhtQfk3K3viM74dXBS0mu
         KwMbzCRtbVU7PZ2ldFk2tmI+C5HFSNiQCoXGzkGJ0vMd/J2yZ0ED17Qn0xzGJTrLAusC
         PHLey1psEYLsa/OloBrFIOxJCCMtCxly8M2UxWleEGGraE9jV66iE/UW5l25ZlK3C6kO
         knDf8P6ShyuhCZHWYzhBeLFrL++2gYYxc+hzkC7SWbD627Wwuv17BpESiWN63yPANbQP
         ky+Q==
X-Gm-Message-State: AOAM5302jwd6IrLEHSV3lDPBDXdlutxArOwLhMC/jzQR1OfveYgOe/hD
        NvW0G10Bu8fvdjzkiqNMdSQ=
X-Google-Smtp-Source: ABdhPJybDBYAYCJlXy3XKTuf5Vl2DUv95bL5fVEtKSyqBEeseMYM8+rS4yudN/vpboqLXoGCviITzw==
X-Received: by 2002:a05:6512:b0a:: with SMTP id w10mr2809578lfu.545.1644437665923;
        Wed, 09 Feb 2022 12:14:25 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id k44sm863269lfv.1.2022.02.09.12.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 12:14:25 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: add watchdog block
Date:   Wed,  9 Feb 2022 21:14:17 +0100
Message-Id: <20220209201417.25264-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 has the same watchdog as BCM63xx devices. Use "brcm,bcm6345-wdt"
binding which matches the first SoC with that block.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index ef93c37ae591..b0bc5262beca 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -276,6 +276,15 @@ bus@ff800000 {
 		twd: timer-mfd@400 {
 			compatible = "brcm,bcm4908-twd", "simple-mfd", "syscon";
 			reg = <0x400 0x4c>;
+			ranges = <0x0 0x400 0x4c>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			watchdog@28 {
+				compatible = "brcm,bcm6345-wdt";
+				reg = <0x28 0x8>;
+			};
 		};
 
 		gpio0: gpio-controller@500 {
-- 
2.34.1

