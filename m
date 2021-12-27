Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D2EA47FD82
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236890AbhL0NgK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:10 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54652
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236778AbhL0NgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:09 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1B34A3FFDD
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612168;
        bh=6CumE1tdz/IiMkyzPEeBLg2u+UtItsz0xDBI5CCIEIU=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=IACquTVdj+XwJl01DFBnp+yX/dkqa4vF8hIEAd2d1CcLor/XJ4ivzhtw7ZOxtjXMa
         kcvIE0ro1X+OqqjunJXPMn91l7jbQhjnSEVWbISdoc7cHUloBokdJYYrcHhFnjEccM
         RF+Zsve1M+W9IIMa6XMJJn3M363iSkeNaGAK7n00Ej9QDD4D8tk1zXh5zXeN5/wW1x
         E35TuulAcDioPDNvndaV5VSqn0pQrgNAY9yfHMnHmc8AZ5Q9mJK6ilgWKVXzHPEJtX
         r7GDjJDDM6N7Csl7fkxPlg0Zw0OLXaXjqWgnfVgn3+FkNJs6jxEwilUpx2/c796E6Z
         tqEg8eNBfNdfA==
Received: by mail-lj1-f197.google.com with SMTP id l6-20020a2e8686000000b0022d9a4d18d5so3955209lji.19
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6CumE1tdz/IiMkyzPEeBLg2u+UtItsz0xDBI5CCIEIU=;
        b=5FJUuLJaQmz48QRSUpHIzqQz+ksbixFAStOlksQbc4C8dAJTVMIAYMsHMErGQjrrvX
         vxaErGFBSU/IENYAMcbn/QfdNy0W2GUgmq8dgAw6uGAJN3ZdRTVYUva2Fik13XhWQJQX
         0BeEShBUadMeHHzFHLgisGLMxEzJRVJZZFULrgWjzHICcbASvWv5QMEfXq6RDWoNTX4r
         pYdKKFMUWeyzat0LEZE8IKI631oZgG694TDWjp8jH1dw2zWnBtxZE3MF+6bLCaMUP96b
         jN1GfLfvaxGs79hsecBkfpBXxWdsSHEk33na7/6ashtJcJufv4dB6To9ofikeoSdF97l
         u2Zg==
X-Gm-Message-State: AOAM532jMe+mBE9YkATfMhZHMy9GlbbT+u5zkOA8XgHCAqjAvlA8aDHY
        DTfIqUTbChobvGkKm0qV+A2LNFldgUDPL/uynsVjIosipVVs0m/YlnZ/Ink20QtBoC5Tjr+xYGp
        1Btkm4Pa6yHJyPAWVy92V0Cpov5yZOwtBoicA1EQ=
X-Received: by 2002:a2e:bf24:: with SMTP id c36mr14663994ljr.150.1640612166758;
        Mon, 27 Dec 2021 05:36:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyXnVeuN6Vzh2Sk739PqVMNoEtG1DsCj0nvwPussspyosmpW1khavfDw2ZEC2G+P4qbT06Zlg==
X-Received: by 2002:a2e:bf24:: with SMTP id c36mr14663990ljr.150.1640612166609;
        Mon, 27 Dec 2021 05:36:06 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:05 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 11/19] ARM: dts: arria10: add board compatible for Mercury AA1
Date:   Mon, 27 Dec 2021 14:35:50 +0100
Message-Id: <20211227133558.135185-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Enclustra Mercury AA1 is a module with Arria 10, so it needs its own
compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts
index 2a3364b26361..a75c059b6727 100644
--- a/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts
+++ b/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts
@@ -6,7 +6,7 @@
 / {
 
 	model = "Enclustra Mercury AA1";
-	compatible = "altr,socfpga-arria10", "altr,socfpga";
+	compatible = "enclustra,mercury-aa1", "altr,socfpga-arria10", "altr,socfpga";
 
 	aliases {
 		ethernet0 = &gmac0;
-- 
2.32.0

