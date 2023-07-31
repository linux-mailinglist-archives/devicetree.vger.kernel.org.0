Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7631E76933B
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230222AbjGaKg0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbjGaKgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:25 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A662E46
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:24 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-686efb9ee0cso4315362b3a.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799783; x=1691404583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CGv1dcNKbS3YC7V4kkMD0PxlW/a+2lGKPQQ7EbzshOA=;
        b=ZlNPo2MnkBjJ1fcgEvxHQ8xYzc9RdvvpNt38jBBOLOCugZgg4mPyrVMF9QbSmAIfkH
         o3e656XYZA1keutDtrF2nSX6+r750wFI8fPz8KFD6BOoevEF+CXXMuMxbDJJzgIehZsm
         sWhBrjgYpdmam3seHMBQVg+tIlBXDHfE51Qhe6SPjcBWV8wwTpKitZl5MoZO8V+QqDCm
         IdigFulA9X2MjCIS9l19OS/tgAGjuDPcJ1n48rn14XSwVHpoyT/7T6RTmj4G5+AIr5yu
         +Ztvw7oCoVi6ybgXs+q4qjfOvxCfHCa86IDrVB9tf+aeBhL9RM3foQJRDQPLK4iTo2tz
         ZV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799783; x=1691404583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CGv1dcNKbS3YC7V4kkMD0PxlW/a+2lGKPQQ7EbzshOA=;
        b=QH0mprdyBU+pEugRkKP+vyHRs46UOFoFXEGrlqXvyg5Dn7RVvv6gkCztrOVbIBQh01
         WuudXnK/lYGo926lOJuBdACX2vU4NNMseYlzb6Jrw/CYzYb5Q2pjX22clylyXqlRy/c/
         mkxSgMtk+7pCZgcdbQQX9Wb7I0pGreBKY4yJOB5/qP6NPp67HwTTTtZGmnyPa4R9M06S
         CzYQl2yXBtwVoLFE8c2mSGgKbc5VXBqgblhMfP9PwxkA8oRSt3yuqrlMkle5dZ//m3iS
         0gBGcGeJh589bdLM2Yg4bmINZh+sx/vd36MMU1g6C4ikGeInyHf5+6RR1+2IsD39VUNO
         BmIg==
X-Gm-Message-State: ABy/qLZM2D0r2ej57DpOHm1PyLb7zH6UvQPxkCU2JsTD8Q9AoBjZQs/J
        VCShzyqaV+kNkoIo3L56Ka+PpA==
X-Google-Smtp-Source: APBJJlGlw9ezW8FYGzLUTXIHL6JOHakL4mSK2TtrDVsybBfwL4KRI/X2LLCB4mLm0IfcH530uyBqdw==
X-Received: by 2002:a05:6a00:23cf:b0:63a:ea82:b7b7 with SMTP id g15-20020a056a0023cf00b0063aea82b7b7mr12943743pfc.28.1690799783728;
        Mon, 31 Jul 2023 03:36:23 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:23 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Stephen Chen <stephen@radxa.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 11/13] ARM: dts: rv1126: Enable SFC for edgeble-neu2
Date:   Mon, 31 Jul 2023 16:05:16 +0530
Message-Id: <20230731103518.2906147-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
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

From: Stephen Chen <stephen@radxa.com>

Enable on module SPI Flash present in Edgeble Neu2.

Tested-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Stephen Chen <stephen@radxa.com>
---
 .../boot/dts/rockchip/rv1126-edgeble-neu2.dtsi   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
index e3e5752fd6b7..6bbaf6da6545 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
@@ -301,6 +301,22 @@ &saradc {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspi_pins>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &sdio {
 	bus-width = <4>;
 	cap-sd-highspeed;
-- 
2.25.1

