Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6748D4B63A2
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 07:37:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232731AbiBOGg5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 01:36:57 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229696AbiBOGg4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 01:36:56 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1395897BA6
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 22:36:47 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id a42so9935062ljq.13
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 22:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6VYgBZ/nOikRTNTBGH76AuIRBl/NLeMAVIqsBzW9D3U=;
        b=RrQEZpMIaCNcP8ZJi/v9p6CgSpwMTZvF9eKJydI7Ai9kuFm0vLPzIvspRawnawG/gh
         t1HBHrRYa/d5VHAWMpuGqlPM3bAKNyKWcW+sMrzkX+drrbt0VbD0b4gCYmqJSWbVQYAM
         90sGVbhSc28aKRJlHNeNqRtsWIxkmjumLLecvGN5kjfqHfMRKIfZ9ZMuKJliq8gUz7u6
         LXiOWYuzsi+wics6KD7b/3e29OGmKBiwNBMZo615bcyNq4TKvY0QtnGf3aqDKb1+hCQd
         +GLnGbNZH1R37pFWBk8Ci6hmd8bLFjtp8jaqlEr6WEwLDNsdn6s+OHppMTZ09NnHYi3x
         E9Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6VYgBZ/nOikRTNTBGH76AuIRBl/NLeMAVIqsBzW9D3U=;
        b=4Xd2UxNdCg3UIzMDlJ1XK3Y89uMccbbyCEUhZrwJya+h4Z2n3DDch6l03b4LL3kztO
         q9yYidA+r40siMS/+PVQkFNta3o/uWtYuN8hnnEdqJGHc4QOHfSQr0FX3SvYE0dCSqjK
         8/lwrkjSvW4cKybvNI/CfOtG+G/tXn0ed3gqAF3sKMLet0vD1uMO19r96u2slzl9THyZ
         vXFCToBg27XML6r7mwm9bz7ASrGD4YYoEW8UIYSCVh/87zLOcWemUmimj9ZQUT5aBxi6
         /QHJRPvG4+hFXaMJMGcpUO+xrxhhADThP2fwt6r+BRKuqjOygVgF6ZMPDWke9D+sWt4I
         h53A==
X-Gm-Message-State: AOAM532b1YHJC5496TJhpG4klchXpzOJPvetgqRsKliJPe647JAKV0c8
        pyIanEaaTVtQCYUNct20Wts=
X-Google-Smtp-Source: ABdhPJwLNnViU/FhTQYAjQedqKjYF4XuamAwwOTfTZ7wpXAwRxMnNhHuy7aFyT/H/s37c4O2wt4NMg==
X-Received: by 2002:a05:651c:178c:: with SMTP id bn12mr1573895ljb.324.1644907005258;
        Mon, 14 Feb 2022 22:36:45 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id f21sm674616ljn.76.2022.02.14.22.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 22:36:44 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] arm64: dts: broadcom: bcm4908: add I2C block
Date:   Tue, 15 Feb 2022 07:36:39 +0100
Message-Id: <20220215063639.15361-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211103306.15271-1-zajec5@gmail.com>
References: <20220211103306.15271-1-zajec5@gmail.com>
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

BCM4908 uses the same I2C hw as BCM63xx / BCM67xx / BCM68xx SoCs.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This patch is based on (and targets):
https://github.com/Broadcom/stblinux.git devicetree-arm64/next

V2: Use correct binding that implies 8 B max transfer size. See commit
    e2e5a2c61837 ("i2c: brcmstb: Adding support for CM and DSL SoCs")
    for details.
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index b0bc5262beca..5158143a9018 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -464,6 +464,15 @@ nandcs: nand@0 {
 			};
 		};
 
+		i2c@2100 {
+			compatible = "brcm,brcmper-i2c";
+			reg = <0x2100 0x58>;
+			clock-frequency = <97500>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pins_i2c_a>;
+			status = "disabled";
+		};
+
 		misc@2600 {
 			compatible = "brcm,misc", "simple-mfd";
 			reg = <0x2600 0xe4>;
-- 
2.34.1

