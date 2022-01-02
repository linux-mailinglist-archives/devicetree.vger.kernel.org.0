Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 707E4482AE9
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 12:54:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232999AbiABLyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 06:54:11 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59578
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233005AbiABLyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 06:54:09 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E15DC407BA
        for <devicetree@vger.kernel.org>; Sun,  2 Jan 2022 11:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641124446;
        bh=8Iiswqq3lRgfFSSwuunIJRGY+0Um9RImCxO/Z027Tqk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=G7dlxXTDy4r2hZ5xIkwCc/sPfrOx01iWJoihHGkXUzNrcNvaeAIDWMHI0E0P15mV+
         jtwzqGskSy+CxCwadYhDtnikmf+itgeT5UwtIudPyrlc2rYj1TVg8C/dgwo+mgxM2g
         QzvxxWRV6tj7teIxvyAtLrGGuCdLnwlpTyivNxBXgnADloQFFXkYgarOud0fAbXm29
         04mpROrQMY+X4YHe+R8p3fXzwB9z2TmVwyH9hFf53ogHQ2MJDm/ojcAVBYeAXnF4Xl
         JseUWxPgfOG386ihMnSA80xI7dSCs03NnmzcYemPhzgoxS1zA97N4G3blZuBpp9nfT
         5y2QnHg5Jh8jw==
Received: by mail-lf1-f72.google.com with SMTP id b19-20020ac24113000000b004297f324073so3350860lfi.8
        for <devicetree@vger.kernel.org>; Sun, 02 Jan 2022 03:54:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8Iiswqq3lRgfFSSwuunIJRGY+0Um9RImCxO/Z027Tqk=;
        b=rBIgLN+lkM5TS4pu4saCeKAwHZ5x3LyHRWBnv44psojWk9zhrimpi00wOBpL7Z9WlV
         u8NrGnxHdjLS53HBFzE6A354Dwq79ivifu6bt70yIfIJirtmZ1RgC4bYdRjyQcivbPYz
         oMGJ6egSZabb8oFvX5N4qKQPAlFVKiUeaRalOmoNj8NCU53jUFWGZo5bGaJMBAia4f1e
         AIhme1wCiaR1W8ceE2rIZxtD2IZbr4OR+K7ATU7T2OV+b5xozlV/CfaKiNggmqFN82Iz
         ylBOP6ZUblEP3xSKx0jr+bg/4P+y3BvgoJY1+p4Tpqc9yJ51jvniVhnaR1akG6CoRhQu
         3+4g==
X-Gm-Message-State: AOAM5312Yl/5SfY8vi949nWv64w7KWMhwpqj/TYs+MIvnTs6JZ4gp+lh
        n3oNHfKMnfECVAB6jZcgg7EJP5hVnHK3EuKNkJCJwETJ2GC8rapRTZ8W0RNTOJmeR2lXNrBzNFu
        JKzWB3PriOffhHuXutFV5AFc67cg7C01ZD/p7PGc=
X-Received: by 2002:ac2:490f:: with SMTP id n15mr20601493lfi.141.1641124445745;
        Sun, 02 Jan 2022 03:54:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw1GLEvNRCyNXDFJt1JJlRQIBOZJk+LUIbE17ZkCXTGpyGMuiMGyECp9GHjOloBT5pb9ZPESQ==
X-Received: by 2002:ac2:490f:: with SMTP id n15mr20601481lfi.141.1641124445591;
        Sun, 02 Jan 2022 03:54:05 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l2sm2368014lja.51.2022.01.02.03.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jan 2022 03:54:04 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] dt-bindings: clock: samsung: extend Exynos7 bindings with UFS
Date:   Sun,  2 Jan 2022 12:53:53 +0100
Message-Id: <20220102115356.75796-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220102115356.75796-1-krzysztof.kozlowski@canonical.com>
References: <20220102115356.75796-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The UFS for Exynos7 SoC clock controller requires additional input
clocks for the FSYS1 clock controller.  Update the bindings to reflect
this, at least in theory.  In practice, these input clocks are ignored,
so it is rather adjusting of bindings to existing DTS, without affecting
any real users.  I understand that is not how it should be done,
though...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/clock/samsung,exynos7-clock.yaml   | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml
index f3fa6c7ef48b..599baf0b7231 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml
@@ -209,14 +209,17 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 4
-          maxItems: 4
+          minItems: 7
+          maxItems: 7
         clock-names:
           items:
             - const: fin_pll
             - const: dout_aclk_fsys1_200
             - const: dout_sclk_mmc0
             - const: dout_sclk_mmc1
+            - const: dout_sclk_ufsunipro20
+            - const: dout_sclk_phy_fsys1
+            - const: dout_sclk_phy_fsys1_26m
       required:
         - clock-names
         - clocks
-- 
2.32.0

