Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38D2947FD7C
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236811AbhL0NgI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54618
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236825AbhL0NgH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:07 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1D03C3FFDD
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612166;
        bh=WfhTTV0Y1eE7nwdIxKma7kRI9gj0CY3EEbVZ0tpJfUg=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=fMvyt3aA5bTwgEqDpsT4bdVKp6tIvOLvmR6cZFeuYfDEidQ7aZGNUh8SmwFxg/Ssd
         yGksGhwFVCUoBep5SceGFF/wW84kAZRc/aZGHGiKoekuHk28ZbmRMkPgsr3agDWTCt
         KUoy6WFrUNZaqZW2oQhdq8Ln64IKsmy+PSZp4z5IsIszxP+/SXMu0kKLvF1BrKAk7v
         V0f12Jzr/fJqq7IAJ0nAB1NRjpTL4m/aEMBYCmIhONj+09EzjMCrAHWRLVTeuLqn3+
         4QnsXWLSTDAGlwz13SVgKdet15dJOcmyWitAo4OcQtOcfAplPqCEbpCx3F+tKK1rWj
         s1vdQwZl9XqXQ==
Received: by mail-lj1-f199.google.com with SMTP id w17-20020a05651c119100b0022dcdb204b9so1604002ljo.5
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WfhTTV0Y1eE7nwdIxKma7kRI9gj0CY3EEbVZ0tpJfUg=;
        b=VY7IZWwQ16MdsV5SopJ7DSvpMomJL1W3yp4xN8gWkelqTnyuRzw6qiEBagOzo0KvcQ
         m0o6lX5Dd7HR3drahJSp0zC0cFkE0J7N6ca/iq5wtuxc9QSrPpMbrGSFZ7jIbj1o2wjB
         psTF0396qWfzb6RQTXKQoCj3HJmZA03BhHD9FcjqpiaZHLRsN+aUed+50sK5d1irfxp8
         TIjoz2voiK7YjFK+x7L0U499IYRZ0Xh1OeeML5Ma7ihiRnqWGhd4L0foFufH3IUqAIte
         vmow5DKddGtZkpYe5IJje54+C/t/nrXgKKHILNBru65YXKoR2dyyQ/e19GyovZ6jNYRS
         x4xg==
X-Gm-Message-State: AOAM530xNIrE/yMzxWKTthBVcJRgFm1Awm85aEK9U6XY6kOIFsG0Xfz2
        JM5VAZPWNB0d6d3BvwYr8/jubuat0V78h+1jLa9hmBLCheczEWvp9RN8BRTmTryzVqggjTCmvXv
        ILYw2uUVCXNWUQFD4lvJ95wqSJYqOsR6SvmBJKyg=
X-Received: by 2002:a19:6502:: with SMTP id z2mr15579093lfb.151.1640612165309;
        Mon, 27 Dec 2021 05:36:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy38iR16DrL9VfxBjC243Im/jp4zdjU6XJ5h3h1PY0QPqf2vwc+9AKP2xWJxPjm2ge92SselA==
X-Received: by 2002:a19:6502:: with SMTP id z2mr15579082lfb.151.1640612165142;
        Mon, 27 Dec 2021 05:36:05 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:04 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 10/19] ARM: dts: arria5: add board compatible for SoCFPGA DK
Date:   Mon, 27 Dec 2021 14:35:49 +0100
Message-Id: <20211227133558.135185-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Altera SoCFPGA Arria V SoC Development Kit is a board with Arria 5,
so it needs its own compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/socfpga_arria5_socdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
index 1b02d46496a8..0e03011d0247 100644
--- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
@@ -7,7 +7,7 @@
 
 / {
 	model = "Altera SOCFPGA Arria V SoC Development Kit";
-	compatible = "altr,socfpga-arria5", "altr,socfpga";
+	compatible = "altr,socfpga-arria5-socdk", "altr,socfpga-arria5", "altr,socfpga";
 
 	chosen {
 		bootargs = "earlyprintk";
-- 
2.32.0

