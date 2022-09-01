Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C206B5A9DFC
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 19:30:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232814AbiIARaA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 13:30:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232008AbiIAR35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 13:29:57 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC415E086
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 10:29:54 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id x19so16248291pfr.1
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 10:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=aEdHMfIGdtLpgQABmHB5FAb5y4ZWlHDUTnfIlMSvXfY=;
        b=BYFUvve325d13qmtzzWxYDe2qdOVUiCzyah59NhIi3R4+yxdWwUUsCx/IgGmZVBFGL
         E97lIyPk0InE4KS8d1W8wmOHAGdghOCobSx2/Ghy/c8mZ959oaMWMEJ6u7ic7wA9H6lG
         jq2ivBKrZAfnI7+LpLTlpUy62ULMyrpMG6Fe4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=aEdHMfIGdtLpgQABmHB5FAb5y4ZWlHDUTnfIlMSvXfY=;
        b=xpV/xSeswwKj/hSA5UWsa7a7enxKOC0+1QVNvAQIe6SmAyh9oOyXKLUAkA2lE+7oj9
         8V2r6LP1PLPcOpPe4OiWOWeBmw0LXhzCcKtonAW0kfp2cOIn7OlVcOM2lStiowR4MMnh
         bY9mMVDRLNdmZWG6bM3xpYlkH42x0Z8Zh6zbUmX8vsDbTPDlKnflY2UY6+z3+Et8anUK
         X8YAIG+QWSQxl2tcLMqk2IwRw/Bd0a1BpmUjozfGajuekdihLslIEHCdg1VubWhgdAwe
         Fy6dJSlceYWNr3A4+cX556UaZXmoXiaHom2lH0W+yUJBxxGs6Olvbq9NooG3RXGcd86y
         6zVw==
X-Gm-Message-State: ACgBeo0zldx1TlRAut5WIfs/Pc+yNvU4/D6gj7wFJVXLxDg2ZJhto7Zf
        LGUMUYq1oesgT0rCI+GQ7xb0RA==
X-Google-Smtp-Source: AA6agR41hr8BNob0m3jPe5drjS5xktzGPZfgiELVke4qhZdqfmbWfo9tbzS0Vle0ZWaUXbrGOVCA2w==
X-Received: by 2002:a65:5889:0:b0:428:90f3:6257 with SMTP id d9-20020a655889000000b0042890f36257mr27637380pgu.590.1662053394413;
        Thu, 01 Sep 2022 10:29:54 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:34cd:3659:c11f:5d05])
        by smtp.gmail.com with UTF8SMTPSA id f5-20020a170902684500b00172f6726d8esm14193442pln.277.2022.09.01.10.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 10:29:54 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2] arm64: dts: qcom: sc7180: Configure USB as wakeup source
Date:   Thu,  1 Sep 2022 10:29:50 -0700
Message-Id: <20220901102946.v2.1.I347ea409ee3134bd32a29e33fecd1a6ef32085a0@changeid>
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dwc3 USB controller of the sc7180 supports USB remote
wakeup, configure it as a wakeup source.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v2:
- use qcom/arm64-for-6.1 as base, v1 was unintendedly based on a
  downstream branch that was used for testing

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index e8debb0da411..af5bab27eaf3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2782,6 +2782,8 @@ usb_1: usb@a6f8800 {
 					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3 0>;
 			interconnect-names = "usb-ddr", "apps-usb";
 
+			wakeup-source;
+
 			usb_1_dwc3: usb@a600000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a600000 0 0xe000>;
-- 
2.37.2.789.g6183377224-goog

