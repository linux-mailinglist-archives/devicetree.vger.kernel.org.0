Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D99C079C7E7
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 09:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231490AbjILHQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 03:16:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231476AbjILHQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 03:16:09 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 779DEE7C
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:16:05 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5009d4a4897so8904161e87.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694502964; x=1695107764; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1jzu3ICRlRuOqr6KXi9pg4tZ+npWXS+/xVE204wn68=;
        b=IqoD7qf3i8IL80BzGIVO0ztfIjvWO3VgD26olcFbrL9mdIqQgF3M7Z2tUyvQjzo8Rc
         NDTfVgRKbQr5LQQc0c8XP2Vy+xWy57UaDkqi18Wfw9lNjKiJOKRahEZlGVBTAKtEtb/1
         zwmmvQqEsceMOYhFH3EadcyKLCe9B9JbMyj1D7m83jvtDCqlJTGlmeOloHCKJO5j83wt
         0XbiWQg9S2cJy4XhrJtKsV+XnXpwLl+NsrXt3pFcydO/ldfSNHjD8KcUUw+X/Itzgup8
         Wxj/CkYUZrOe5ufN29DePGpPj7sDjQbwug5JNUWHAripJg4fVz2RmyawP+e3lq2kfkdP
         a4zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694502964; x=1695107764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j1jzu3ICRlRuOqr6KXi9pg4tZ+npWXS+/xVE204wn68=;
        b=nWHU/k9wb8mNIe/4emiLgU6yms6FA+Myc02vNNcQNTmVm6k6MpYtED3pXHf8TukCgA
         +TBVY4KBiD4GpcdAMsU8mqsdcs8WK6o5uJieEt32p0j23GGn6yN2iOR94Fq8CRHZhB7E
         wRZrHhhsgV7aLj9vAzrAnX6Et5A9i0DcxuAJdkYjMxN8arW1Z4ls+Kcp9BpInZdxvNZE
         HLNQBDwUEU8ZLNuC0e5tnR/mKDgssZCXt1nl7hk8ysf9j/7WKD58/QG69x3hSikcn0zy
         uK0zS56ak2ODiurDo06n6cSDFqDrPRvKiGVpkxMJ7PGs3bf2jQzUwYxUA25gKobSPvOF
         3l6w==
X-Gm-Message-State: AOJu0YzZeafZpV64UpIpZ9pgAglnNYMOmYtJ+M8D22nVmVpFThRA1OkJ
        8N8ET5z4zMtSPKSf7OMZOELqB5s0qaSFqi5/3Ic=
X-Google-Smtp-Source: AGHT+IG+ijoG4xhCgyGr/TJwh9pgBHvbMTZu2K8XqqMlqy9lWAR+uwzm96wIUBxzxSTekATYYJ9MWw==
X-Received: by 2002:a05:6512:1094:b0:500:7c51:4684 with SMTP id j20-20020a056512109400b005007c514684mr12580257lfg.56.1694502963636;
        Tue, 12 Sep 2023 00:16:03 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id f8-20020ac25328000000b004fe20d1b288sm1626872lfh.159.2023.09.12.00.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 00:16:03 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Sep 2023 09:16:02 +0200
Subject: [PATCH 1/2] ARM: dts: versatile: Fix up VGA connector
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230912-versatile-dts-v6-7-v1-1-a2734f1757e7@linaro.org>
References: <20230912-versatile-dts-v6-7-v1-0-a2734f1757e7@linaro.org>
In-Reply-To: <20230912-versatile-dts-v6-7-v1-0-a2734f1757e7@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bridge does not have any cells on the node level, just on the
ports.

The VGA connector is actually named "J1" on the board so give it that
name in the device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/arm/versatile-ab.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/arm/versatile-ab.dts b/arch/arm/boot/dts/arm/versatile-ab.dts
index f31dcf7e5862..de45aa99e260 100644
--- a/arch/arm/boot/dts/arm/versatile-ab.dts
+++ b/arch/arm/boot/dts/arm/versatile-ab.dts
@@ -32,8 +32,6 @@ xtal24mhz: xtal24mhz@24M {
 
 	bridge {
 		compatible = "ti,ths8134b", "ti,ths8134";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		ports {
 			#address-cells = <1>;
@@ -59,6 +57,7 @@ vga_bridge_out: endpoint {
 
 	vga {
 		compatible = "vga-connector";
+		label = "J1";
 
 		port {
 			vga_con_in: endpoint {

-- 
2.34.1

