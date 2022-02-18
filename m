Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 535254BBD2B
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 17:15:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237605AbiBRQPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 11:15:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237577AbiBRQPs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 11:15:48 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E062B2FCA
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 08:15:32 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 094FB3FE41
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 16:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645200931;
        bh=eXTf6CI7XtqvYApoORACvc6rPyUPKkXor1yJtlktlDc=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=q8JH+mx0ZEKAm+LT0TpgTdfgGC2f2BsfEF0pdQZ1qiCetFcHX5IUivpa/Qxv1juyj
         U++5t+kVq4rxgzvsEgsIwiEeWZn9GVqtUoBdtpzOG7s2PwU1NvfR8rb7YWSQXbtUhd
         5aIYthhwHbyOjS792MqmVLfIKB8rjkt/YQt0PKgLDraUY0tsHjl3+gZyB7voLyaKoQ
         +VUR2hYY8FLbOBNVyawyHRWyVm5ooD28OfWeLCgq+HhOUhhVj49iQjWJFACCswZ38A
         06q/SobftYblfoe8Jquphy610SV4FvXjoX4vOlsMJjCyD1loIMKnU7vNE9DMyudivv
         tnz6VjL0sok8g==
Received: by mail-ed1-f70.google.com with SMTP id j9-20020a056402238900b004128085d906so4920496eda.19
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 08:15:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eXTf6CI7XtqvYApoORACvc6rPyUPKkXor1yJtlktlDc=;
        b=Ko2oRYaO9iZsq+8XrphEfGPbZMiyBBSJElqEaDEZYj6Zw2du52eteMOfqMlg2v1tsr
         FovWH4KEV4x6PQt6oLQX3NTjFougyuRVXQqC4HWaeAZVFANTU5j1Zxrss9ci5VSPR4Up
         KW3wd9L1lQKlOKW2zs8VdKJfjdql08e8txnsX8YSPIGxBalQR7CHAVfaonVXEA7TWAcx
         2g0d4Fw9Cf7Y5zWvuqvlp7NUWaDXTxawZZkQczzYBycUeMEKhDwuEQ78mZU+viXG1LvV
         QcueVl/MY70/HMOc8BoRYzpZJpbfA9Td7KkUpyWBjnNoBDGP9kqpT2hFDdNlUYPzl8YS
         m5pA==
X-Gm-Message-State: AOAM533d5QtdImdeNg50HuQ3QNJWNVGVdI2QmUhwyhqZMnGD2Kjug+oc
        Nc/A8bjHSgTUc3grjVm3iK3WkLVqpU9Ti50zswkRaWnSZuQfpKnv4ziI8ZTAVxU15BzGfXTdnDd
        t5VHKyYmbzxBvy6YBARhX/s25/CQdOnz6rX2+D5k=
X-Received: by 2002:a05:6402:1d8d:b0:408:4a31:9790 with SMTP id dk13-20020a0564021d8d00b004084a319790mr9100871edb.92.1645200930747;
        Fri, 18 Feb 2022 08:15:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwdswzoYMv9GT1AsPyCy429Vy5ZKlXY8hiNZQFBnkjJI6JAvV6mE8WIdoqyTzwBSbyUSRKGRA==
X-Received: by 2002:a05:6402:1d8d:b0:408:4a31:9790 with SMTP id dk13-20020a0564021d8d00b004084a319790mr9100856edb.92.1645200930559;
        Fri, 18 Feb 2022 08:15:30 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id y21sm2325572ejq.185.2022.02.18.08.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Feb 2022 08:15:29 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Dinh Nguyen <dinguyen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: agilex/stratix10: add clock-names to USB DWC2 node
Date:   Fri, 18 Feb 2022 17:15:22 +0100
Message-Id: <20220218161522.52044-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220218161522.52044-1-krzysztof.kozlowski@canonical.com>
References: <20220218161522.52044-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

USB DWC2 requires clock-names:

  arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dt.yaml:
    usb@ffb00000: 'clock-names' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 1 +
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 3ec301bd08a9..d7d1918ae471 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -484,6 +484,7 @@ usb0: usb@ffb00000 {
 			resets = <&rst USB0_RESET>, <&rst USB0_OCP_RESET>;
 			reset-names = "dwc2", "dwc2-ecc";
 			clocks = <&clkmgr STRATIX10_USB_CLK>;
+			clock-names = "otg";
 			iommus = <&smmu 6>;
 			status = "disabled";
 		};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index f4270cf18996..984c71b850c9 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -510,6 +510,7 @@ usb0: usb@ffb00000 {
 			resets = <&rst USB0_RESET>, <&rst USB0_OCP_RESET>;
 			reset-names = "dwc2", "dwc2-ecc";
 			clocks = <&clkmgr AGILEX_USB_CLK>;
+			clock-names = "otg";
 			iommus = <&smmu 6>;
 			status = "disabled";
 		};
-- 
2.32.0

