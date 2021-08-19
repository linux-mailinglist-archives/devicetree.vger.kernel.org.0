Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 182503F1D2A
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 17:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240521AbhHSPp6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 11:45:58 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:52774
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240559AbhHSPp4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 11:45:56 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id A688F40CCC
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 15:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629387919;
        bh=R7D35cbra117D9PxgbQHF85yjpBLQZ8KDhGISFH2tcs=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=vZiSX1PyuE/9tBTRwkHxG21YU4abO1BKVXEsDfVsnLY2VwinKu0LCXDZ16yhGnIsZ
         7tGH/WaBGmG2UkH/vGKFiUkxEGtYgkT/0hA1gPVUbcEDdA3poqiR7EUhFkumEDft0N
         k4CMkweHn8dY0tjWa5HNznyT2XErlWN276JonjrZaoesGTsaDjeDlwFhfJae6lT6kt
         Pi3bxIB9du+z6ksrW5rjXm0UuOzckGWPTmfJa43n2rxKnyplcQbGcL/3vv9K3rmc+E
         74NYDhh72QVRalSAY9RRvR4/BOeijdMYiiLKy5BZA87v9vh1OxRpD/X1f/OKQR35QG
         YWg0soMYdk9fQ==
Received: by mail-ej1-f70.google.com with SMTP id ne21-20020a1709077b95b029057eb61c6fdfso2402943ejc.22
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R7D35cbra117D9PxgbQHF85yjpBLQZ8KDhGISFH2tcs=;
        b=FdZibaK47V6toG8GvTYUeGqaLEiT/bgqhvD/7PVegF/vtcVDoMby7B3idDAjEl2Q6Z
         uf0a75z9tQS21aqmKiHBo7QlYC5mN+DFiPNC79arlzEPAOYi4hkQwAeYaXYP5xAODNWX
         YM7Ff+qN6h+JelgTaStz1lYwXZtAmTrewrwK8sIyNPgV/guIiNYYlVR1xxCjuDYrEeBC
         DrmNvFoSsxz+JLgLUKSE8WCW6+XVG6mGkfgFFa3dU43ZccQEDPMoVlDoUX5wOZP8wk3k
         B/GsGk5PBMp3FFfJwoK1ID1DjrPD9oyuFWuc8cTMhEyCaWBNOUTIccqV6eHDXGhCxMCu
         8Zrw==
X-Gm-Message-State: AOAM533tatAFdZCaWkj+EuNP80BTsgZ/dM4qLM3Da7xTzUw3RGTcYEe3
        ONOzMoZM1uWQb3FPKAlgCkR+a5eYKS/7cqDFfheMxxul/FJv7n+/H3rp+p9Bag3X4c/Emniw60R
        yPUfnnPYjDKq1+rU38yVnvcJGWx6zsM+5YGL7muo=
X-Received: by 2002:a50:ed05:: with SMTP id j5mr17338659eds.256.1629387919477;
        Thu, 19 Aug 2021 08:45:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwExpdLPWOGCIOlhdKLAezKk54YUmCNyk9hkQhVf/OBX+C4Dw+NBvBYgBjE6TzVYrSx7HyOxA==
X-Received: by 2002:a50:ed05:: with SMTP id j5mr17338650eds.256.1629387919373;
        Thu, 19 Aug 2021 08:45:19 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id f16sm1925373edw.79.2021.08.19.08.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 08:45:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Atish Patra <atish.patra@wdc.com>,
        Yash Shah <yash.shah@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH 3/6] riscv: microchip: mpfs: drop duplicated nodes
Date:   Thu, 19 Aug 2021 17:44:33 +0200
Message-Id: <20210819154436.117798-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTSI file defines soc node and address/size cells, so there is no
point in duplicating it in DTS file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index ec79944065c9..237830583514 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -9,8 +9,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "Microchip PolarFire-SoC Icicle Kit";
 	compatible = "microchip,mpfs-icicle-kit";
 
@@ -27,9 +25,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x0 0x40000000>;
 		clocks = <&clkcfg 26>;
 	};
-
-	soc {
-	};
 };
 
 &serial0 {
-- 
2.30.2

