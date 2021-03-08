Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CFDD331438
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbhCHRKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:35 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33177 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbhCHRKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:10:01 -0500
Received: from mail-wm1-f69.google.com ([209.85.128.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOK-0003Kz-Fb
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:10:00 +0000
Received: by mail-wm1-f69.google.com with SMTP id a65so2284741wmh.1
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:10:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U4pUbqXfXgnnLhDhksCamnOqM1YsLoMYiBC/1NCNg+0=;
        b=dXEzwHjtRo09GQLyE59Nx51B6VDqdYV9DP8DthZpGOLycgUNlCFWdjoNiEe+qvNM2Q
         hgjgR7ohg9+tEJ66ezUeRd3X1NdQOcuIH1Dwp3epe00j+qcUHJiRhcr15TjibT+E/fvE
         e27B/XHhC8WAd7UJYa1eOXqgoZVAGScqciUcv5VAeYTDL2n4fifiyzYsD6EtuwW/gVRB
         RVGv/IgBTghMfBtN+eA/fLOMqFrva/3vSJ5iWh51ITsjv6+qRvz55H6aOF0QGgLb7tCh
         5oXEK/RrIhSycE/SOvPzQb8LqT+Aoi4rzLVy8Iq6UMMKBbWrZL9RkLG+DBRP8+AlAqQv
         Ie7Q==
X-Gm-Message-State: AOAM531X34K5NKJ88WS0AxXoR2lBnNFJDn1W8xxb1oSCwmwzPKgjEJp9
        JYMslo3GORtFumZM1m9IQ/rjsxXDG4LAEM3e1IGHbIdaxoXjYIOSn7RGjUVVFJkrucasNUrXGRE
        Yyex0tcyoCjV3I/C0e4ybuuorjRGvsIIiqMDLGaQ=
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr23367784wmh.30.1615223400280;
        Mon, 08 Mar 2021 09:10:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzDoAApcr5gaPCMJBgkDD5QBgXndL+LmIS5tK2e0cy377KXLKCREY1WOwOMtQJZ38tBp1Z3Nw==
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr23367768wmh.30.1615223400166;
        Mon, 08 Mar 2021 09:10:00 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:09:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 05/10] arm64: dts: intel: socfpga_agilex: remove default status=okay
Date:   Mon,  8 Mar 2021 18:09:40 +0100
Message-Id: <20210308170945.161468-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

New nodes are okay by default.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 25882faccbdb..f46d678ba775 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -472,7 +472,6 @@ uart1: serial1@ffc02100 {
 		usbphy0: usbphy@0 {
 			#phy-cells = <0>;
 			compatible = "usb-nop-xceiv";
-			status = "okay";
 		};
 
 		usb0: usb@ffb00000 {
-- 
2.25.1

