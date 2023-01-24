Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1905667954A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:34:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233711AbjAXKem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:34:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233639AbjAXKej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:34:39 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDD0240BF2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:28 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h12so9406977wrv.10
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2CdaMRLtCzvC4WyHAWjK2icYqsTTFGLirCU0OUkXnrU=;
        b=F7LwakyB36sQ2v7h89kpCl+MxGZk+CUGrAvrQQaNXEXGuJlSTeVnumKUtldxoWUe2o
         cK1Iou5OLHdKEHSjApqYVNiTbX1r9GFxlVdDybXaGf+N+2RLqdO+iMX811kzIhViBLoO
         eW79J9i/ucZgViJXSfU9EqSTTVcgkTybNJOeNg3GtjAixX/es+nxNdpdfBbH9UJEvMLa
         RMIdqD60pEAhojQqjnxJI+eLLa0E1DTkkE1wgZxr3W/hhjygojmVpNNcieiboLOt8zL9
         v1ctY0n+AZ3BV59RQw1JL+1xY3uCrVG322+Rcyaxm4FAnfOdcwNxb9lUs49hyniTUn3J
         b8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2CdaMRLtCzvC4WyHAWjK2icYqsTTFGLirCU0OUkXnrU=;
        b=xFHMh77z2jw/qtrDH1uI0u76BJkw0mgT+VUgkLtQEFMj/24H5qfJc3DxTh13VQichr
         wYmS9rXkdAHYaEwQ7CHSTavos5lFaQO57+hw8Dhj8JKzi7aDQ/ijm53MwWk0XRSkk7wO
         /0RZ+wZ0xY2ey8ZacUiqhokxrfuqfoz7TrBfWHVZTZCuXt7R9GFhpt4CBnMgw9ytp2TQ
         zAYS8ingM69TlJqHD1N4yJDEnoXybXFt7XJlVr8ybPGinMItOwZmBIbbYlLGSXhkV6jd
         fjcYHs+zZ90MnPzmaw+xyKXNKcwv1YxHuhJoFOCS5HDEZOFHEQjjPArlGRI2Kx5c2Czg
         aLQQ==
X-Gm-Message-State: AO0yUKWCeLn7dU9UoEayCG5ot7gZkByBNrDewZ6yb8cW2FMsznT+KeUV
        rN0Qn7MEoUHcPNe72yCdpLBjug==
X-Google-Smtp-Source: AK7set9c1iFpfv9PuITSfLVkzCEGSfcyTNpeWyeUIerUpyQfvxOMz6/lwJEmu5OVlnGsHOozxVXx/A==
X-Received: by 2002:adf:a34d:0:b0:2bf:ad61:6023 with SMTP id d13-20020adfa34d000000b002bfad616023mr2471268wrb.71.1674556467288;
        Tue, 24 Jan 2023 02:34:27 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q6-20020adfcd86000000b002bded7da2b8sm1551889wrj.102.2023.01.24.02.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 02:34:26 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 24 Jan 2023 11:34:24 +0100
Subject: [PATCH 03/14] arm64: dts: amlogic: meson-gx: add missing SCPI
 sensors compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230124-b4-amlogic-bindings-fixups-v1-3-44351528957e@linaro.org>
References: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
In-Reply-To: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes:
scpi: sensors:compatible: 'oneOf' conditional failed, one must be fixed:
	['amlogic,meson-gxbb-scpi-sensors'] is too short
	'arm,scpi-sensors' was expected

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 13f8d483c61a..cac8a2e0bf96 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -162,7 +162,7 @@ scpi_dvfs: clocks-0 {
 		};
 
 		scpi_sensors: sensors {
-			compatible = "amlogic,meson-gxbb-scpi-sensors";
+			compatible = "amlogic,meson-gxbb-scpi-sensors", "arm,scpi-sensors";
 			#thermal-sensor-cells = <1>;
 		};
 	};

-- 
2.34.1

