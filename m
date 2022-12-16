Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 543DB64F50C
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 00:29:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbiLPX3k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 18:29:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229966AbiLPX3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 18:29:39 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A46C2B63F
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671233329;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LfWbuY2Nzj8geuaHp1jhfQ6giSwZLaTK35PfBVw+w04=;
        b=feFdEldLcD1r+0DTIlbiQQfcP3gsSrWhAY6+uc+wyvDyyldkQhJCBNn0e421kRvQlL3DGC
        jv+jz23QQFFPXHjebkR91G8mTB1FOyxotFUsM+FhEm/N/i2Av3HIzmFQ0M/IYI7Voqr2w1
        rs5136hhnPxg+QEkwfSq54jxWBByMYU=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-614-qz0lPq-OP0-SRe0g76L48g-1; Fri, 16 Dec 2022 18:28:48 -0500
X-MC-Unique: qz0lPq-OP0-SRe0g76L48g-1
Received: by mail-qk1-f197.google.com with SMTP id f13-20020a05620a408d00b006fc740f837eso2944421qko.20
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:28:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LfWbuY2Nzj8geuaHp1jhfQ6giSwZLaTK35PfBVw+w04=;
        b=1Lktcv58At61M3FEjjeKiMa3wyWfAcBRdhIJTUFvV10YyEEmZ4aHbUIWzTjWUcMqed
         skQ4dtJXrqQyKB5OvXeOwWvwovQQpV+PaIt4MgpFxSADn7kJj3LHLmV7ZorIGYAfGQhH
         CS61FoS8ejyJF2unQwq0MU/WiAoSYCqa5t7YXEwDRPz5WCGG0hQB3t/zirNFTxwUO+iz
         xwIvHjH7kRU/sKrsCuhxoPllmRSb1+UwTnRlPuTRyyqkbFoijF0tnfdrHfqs287ji0UT
         h+aIzQUy2Ryc33964z/OfN0wDL5Pc7+18w6WGq8DnfBos6tbiYiOEAG55LSEGiGGVqIn
         Gppg==
X-Gm-Message-State: ANoB5pkvJTRFLs+Rmr3muMxRe8B0+/IxOZcMRV80DWoAJgogu4cwDMfd
        OqXTvA1yeBdyV2JIgxnl9ze/0LGp/wnvNsqBelMmIs05ewQpYrXIpqcgxdxMSoZmgqNhZOZ7Ds3
        ClNMTdsdTi8+TG6Gy9zdbdg==
X-Received: by 2002:a05:622a:4892:b0:3a3:56f7:196a with SMTP id fc18-20020a05622a489200b003a356f7196amr54110840qtb.7.1671233327997;
        Fri, 16 Dec 2022 15:28:47 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4+xhpEzJrK4BApIroXNlQRVm+twiSeTowTgWXDWiBnm+NpWCClAv1iOJEy+9+iNePzECkSig==
X-Received: by 2002:a05:622a:4892:b0:3a3:56f7:196a with SMTP id fc18-20020a05622a489200b003a356f7196amr54110820qtb.7.1671233327795;
        Fri, 16 Dec 2022 15:28:47 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id fa11-20020a05622a4ccb00b003a7e8ab2972sm2192823qtb.23.2022.12.16.15.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:28:47 -0800 (PST)
From:   Eric Chanudet <echanude@redhat.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>,
        Eric Chanudet <echanude@redhat.com>
Subject: [PATCH v3 1/4] arm64: dts: qcom: rename pm8450a dtsi to sa8540p-pmics
Date:   Fri, 16 Dec 2022 18:26:03 -0500
Message-Id: <20221216232606.2123341-2-echanude@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221216232606.2123341-1-echanude@redhat.com>
References: <20221216232606.2123341-1-echanude@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pm8450a.dtsi was introduced for the descriptions of sa8540p based boards.
Rename the dtsi to make this relationship explicit.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} | 0
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts                     | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} (100%)

diff --git a/arch/arm64/boot/dts/qcom/pm8450a.dtsi b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/qcom/pm8450a.dtsi
rename to arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index 6c547f1b13dc..77d499702ea8 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -10,7 +10,7 @@
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sa8540p.dtsi"
-#include "pm8450a.dtsi"
+#include "sa8540p-pmics.dtsi"
 
 / {
 	model = "Qualcomm SA8540P Ride";
-- 
2.38.1

