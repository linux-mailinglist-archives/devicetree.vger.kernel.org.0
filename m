Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EED1F6293DD
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:07:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237872AbiKOJHY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:07:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237808AbiKOJHP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:07:15 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F93921278
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:07:14 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id m6-20020a17090a5a4600b00212f8dffec9so13275825pji.0
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5ZFQEoKVRbIfSfItdmWycqTzq7emVGHn7tQvs1HyFc=;
        b=kaTCXy9NTn9ky20nP7T+gz/kzP4EXtscARvVKey6KLpM1X5mvpxHLvxGZRgm3HiGKy
         Ku4VVEhfcdvwqWQRZkpEaw87Z5WtiIBKtibuSyCqkLo4tHTDDSwVORjGzVXHUW3mfet4
         AFamSQ83xPANX9ssr7d+CfeU6vpusLtDTxABE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R5ZFQEoKVRbIfSfItdmWycqTzq7emVGHn7tQvs1HyFc=;
        b=Spovx80Xvdnc/J0aOG3tfUvZACSyqTzNYzMvDXOvHpsUs9RFQ2kNZ8MXMi9ovZ1rBu
         bXAm3OmTK4IvpXeuejIetVPvvzS4iyGThs/au8q571jQ1kyM2ufgtVNhRsQuSgoabnlL
         xrt9kpOmcvYRr//KUYZakPe3oOyrefQvsAGiRukcU7yDW1C25uCZQUaRQPf7+HR6ndhc
         uWvJ5suXYnjvZJ+8WIQ0iHgcIjY+4WV9wEbN41yOdjHmzx5narOYdSouXQ5l+/4aoItC
         UJN0O20fCLPacARPy8m7hTt0Pc9gFMThQzMUtI85CqCHP3JWXpd5GKD7rjJeJMBByHOb
         dTVA==
X-Gm-Message-State: ANoB5pnq6Zh72cut3w147/PETLfTXfORi9Guxn61Bq2tkEocT8Hf2ywH
        SzA1UYODiacPpeBBr+qjxjN33Q==
X-Google-Smtp-Source: AA0mqf6xPgmp/9dWQoBk4GaDGwS6v+A/TwdAX5vB3zmEdHUZjJxWqfB0WDZ/WyQ5o/+ZIS9vw8C7cQ==
X-Received: by 2002:a17:903:28d:b0:186:9cce:c59 with SMTP id j13-20020a170903028d00b001869cce0c59mr3133032plr.120.1668503234175;
        Tue, 15 Nov 2022 01:07:14 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4d49:6d15:b250:5977])
        by smtp.gmail.com with ESMTPSA id q16-20020a17090311d000b00182a9c27acfsm3378830plh.227.2022.11.15.01.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 01:07:13 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: allwinner: h6: Add IOMMU reference to Hantro G2
Date:   Tue, 15 Nov 2022 17:06:44 +0800
Message-Id: <20221115090644.3602573-3-wenst@chromium.org>
X-Mailer: git-send-email 2.38.1.493.g58b659f92b-goog
In-Reply-To: <20221115090644.3602573-1-wenst@chromium.org>
References: <20221115090644.3602573-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Hantro G2 video decoder block sits behind the IOMMU. Without a
reference for the system to properly configure the IOMMU, it will fault
and cause the video decoder to fail.

Add a proper reference to the IOMMU port. The master ID is taken from
the IOMMU fault error message on Linux, and the number seems to match
the order in the user manual's IOMMU diagram.

Fixes: 0baddea60e8d ("arm64: dts: allwinner: h6: Add Hantro G2 node")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 53f6660656ac..ca1d287a0a01 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -161,6 +161,7 @@ video-codec-g2@1c00000 {
 			clocks = <&ccu CLK_BUS_VP9>, <&ccu CLK_VP9>;
 			clock-names = "bus", "mod";
 			resets = <&ccu RST_BUS_VP9>;
+			iommus = <&iommu 5>;
 		};
 
 		video-codec@1c0e000 {
-- 
2.38.1.493.g58b659f92b-goog

