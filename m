Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 281644B8FE4
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 19:10:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237457AbiBPSKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 13:10:42 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237442AbiBPSKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 13:10:41 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090DA2B0B19
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 10:10:28 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id b9so5358260lfv.7
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 10:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IcjZSFFwvzH/2up3CoXhhR79DVF3xC2YmgnlBmig55Y=;
        b=w0bfYwr/yIGgKsMa1Lc2zzEf7dvcqLF1kzRhwu0wytHvdRAS+simDuAOgxyM7Vwzu9
         tlA5U3ssSqPOn3EMDTDRu2aq9oU+7vOWm6Roq0/pqSQOMdVBM3gbeduVwjmbT2DHWVMb
         q9D5CEfQHC+J+H/Y7rnP2d/ViEGlk215M49G6LxjPZ3Yv1Gz1UZBEOmnRjhgIuqmvUgU
         C8Eiuf2J1pQ6sjyI8nRt/GyZ2yP3Kbqx5fXJXA3lcicj7pPDK7CF//nRb9Wy/Et7Qb1y
         iIZdq5bvjNBVYdqRcmCwQjysllfixuxZE6Oo5rcbxX4XfaY1rB9fH43GUQvoq0ccjNTB
         HcQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IcjZSFFwvzH/2up3CoXhhR79DVF3xC2YmgnlBmig55Y=;
        b=3xwzkgWdAHvlUVz15DYpjQFcM12SLrnAXtgTVBStTJKY2Cv/XeuXLNta7YtoDnRASV
         404If6NuWWHoKLm2i7H0P6+y6s3VFTwiuMTsdVlSvwcVnfGz5hEHPm+rNKF+goCaF2Aq
         kZgK9ynZRWOkZv/sLjePN/HCJeVxg0w3L5y6aSXzBcnPyIsGDwlWlfqH6GILr4Y1C62m
         WWEPf5XG3Ei/Hs0OlmWpq1Ejf8wpWtlZ/Bv0jBtRYZXNgAao653h8yuRTYg+SQkckeUG
         ezTK7XHPRclwGZ0xALO9uOoPttcklwo06jbiZKaDie/ATBHqOnE+9oZ8AubAf+xonocj
         Bzdw==
X-Gm-Message-State: AOAM530ITDwuWzHhmoKWDCPG9arU3mtK/6icMtCJxxafy9TgqSIq2592
        dtGYIVOyC4M60M7wljvqY+5W5w==
X-Google-Smtp-Source: ABdhPJyHHJ2z98x3FxWyYQVGxbdwLK7ZNxTg/1MKt2UFEenBVMHIcz9Wxy7OW5QZqcMRz5JB8DYs3Q==
X-Received: by 2002:a05:6512:1507:b0:443:7e88:ce57 with SMTP id bq7-20020a056512150700b004437e88ce57mr2877346lfb.659.1645035026383;
        Wed, 16 Feb 2022 10:10:26 -0800 (PST)
Received: from cobook.home (nikaet.starlink.ru. [94.141.168.29])
        by smtp.gmail.com with ESMTPSA id y18sm567909ljd.13.2022.02.16.10.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Feb 2022 10:10:25 -0800 (PST)
From:   Nikita Yushchenko <nikita.yoush@cogentembedded.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Subject: [PATCH] arm64: dts: renesas: ulcb-kf: fix wrong comment
Date:   Wed, 16 Feb 2022 21:10:04 +0300
Message-Id: <20220216181003.114049-1-nikita.yoush@cogentembedded.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix comment referencing salvator board, likely a copy-paste leftover.

ulcb-kf.dtsi has nothing to do with salvator.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 arch/arm64/boot/dts/renesas/ulcb-kf.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
index d122e645a892..40147920bdf7 100644
--- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
@@ -413,7 +413,7 @@ &sound_clk_pins
 		     &sound_pcm_pins>;
 
 	ports {
-		/* rsnd_port0/1 are on salvator-common */
+		/* rsnd_port0/1 are defined in ulcb.dtsi */
 		rsnd_port2: port@2 {
 			reg = <2>;
 			rsnd_for_pcm3168a_play: endpoint {
-- 
2.30.2

