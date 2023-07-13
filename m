Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93DFD752552
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjGMOkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbjGMOkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:40:00 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F04F2706
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:59 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6682909acadso505096b3a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259199; x=1691851199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RPx8TXoMTBPqv3uRnnY6UKXIImJhBduWLO7dIf7/AC4=;
        b=xqlwKQjsTqzmn1QJEGd8JXe/ZovSTVQG8sxdzZUhd0KKws6MSZrJTGvJoB0oQJxuvq
         8RNXMIn1LV29fHId75foL62pGPrcAUoFnTuLm8zwAyqdo2zd8G2vn6v7vfEDCwQjLXXq
         8PmvJUIlFAYRw0r1zSAcDHYng0sNhakloiIt5GZxxGIKEjxHNulQAk223PQUT6iexQFS
         PG9ow9GNMdJBzVSpjXJVSfAcyHLGvD7JV0bpBxrzJmDYCVaIFLFu9V6pg1/VFoZHfZ5b
         yuJ11FYceQWtqn4r91hf5PSbgmzoPtthk9hn6ytO/9vqephyAHJ502kJvZm/wpMxe8wl
         pmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259199; x=1691851199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RPx8TXoMTBPqv3uRnnY6UKXIImJhBduWLO7dIf7/AC4=;
        b=BNeVu78H/Hg8BzpwdL9AXaOrvNxPtmWcsvc7VKpBcp2QnLzUIlYi1uQiqnsyjpWvf8
         XUPTi5c+MNEXbaqssONqzl1loILHyXItHmmuWjjCzGRMCum95/6gzNCINYLh++Pn7pzm
         QUVpc3upRWgAgmpvJrCFkgBzR8Ax1hTBt187Tb3bJ9X8HseTuacvDoUd+Kj9nJ3IyvN5
         KCP7M+RKC/srTzZjaZJ/z0c7G84LDw/dBXw9dBpI4LOROJ3q2w83z1txgL1FXcU7DhHv
         UNq9swZ3baUtt4/DT0/00xvFto8mRawJ3xH17OlyUCNLeSuf411+31XUCF76iG6I6yGx
         c9xw==
X-Gm-Message-State: ABy/qLYzZW9MRu9i0K1eEBQ1RJzAzqL964KHwFFJZ0YfVAnSjkQR1K86
        N6PB2bdGmhHLSBxURg9uDXlcjA==
X-Google-Smtp-Source: APBJJlFcXSP+5J66G/A3nfy7geKUuQg05H6iIsJR+VanemdB50VS1DtFF6IgNq4ZIR2uniMrG3KhxA==
X-Received: by 2002:a05:6a00:2d90:b0:661:4a00:1ea5 with SMTP id fb16-20020a056a002d9000b006614a001ea5mr1496470pfb.20.1689259198793;
        Thu, 13 Jul 2023 07:39:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:58 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 5/8] arm64: dts: rockchip: Enable RTC for edgeble-neu6b
Date:   Thu, 13 Jul 2023 20:09:38 +0530
Message-Id: <20230713143941.1756849-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add RTC support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 0b6f32e9b820..4a9f85d7542a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -25,6 +25,30 @@ &combphy0_ps {
 	status = "okay";
 };
 
+&i2c6 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sata0 {
 	status = "okay";
 };
-- 
2.25.1

