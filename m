Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DFD6681585
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 16:50:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237021AbjA3PuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 10:50:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231936AbjA3Pth (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 10:49:37 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2486F41B64
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675093730;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=iK+zUbg3IfyivImjOtAAZPRNA3nl2U9KaOpRKvRLj9U=;
        b=IfJVxzlNfdFyKgRp1cEq3wAwRnuLo8qbEUqBNJ4Uw+hxEI3MFlWPoO7YrCC0RrVCrV1Vnp
        n6WxwtgjIRnQMhxYSyCFnXMZ1V9jRLsYEHRzyYnsOeeerA1YcaxJU29NGe8wVQTYC23XCP
        QoB0iV8glLDmWSgP8lM91reY/A8gKG0=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-61-6g59Uk-AMn6OKVPNkKPccg-1; Mon, 30 Jan 2023 10:48:49 -0500
X-MC-Unique: 6g59Uk-AMn6OKVPNkKPccg-1
Received: by mail-ot1-f70.google.com with SMTP id t20-20020a05683022f400b0068655e05e7eso5912257otc.22
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:48:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iK+zUbg3IfyivImjOtAAZPRNA3nl2U9KaOpRKvRLj9U=;
        b=7YFypeqFCvTiFIsaDrJVvRCwETkNJ3pTmJKvdFXyB0Xt3EI1omB52zb/VPJYmJVoX5
         F/y495u+BCKfeJvhoymrfleDttjf2GvyaiuzphNKgjIZaU/BaLr4jCLzGbACyml00WDU
         QITQkBcCl06R83feuQvINjRIeSlh+ciN60mZUe6DVHOi+uXwM9e9LThVPwe3TpryVdAo
         aDMQa8Z86mEi6kh1HHLufu2vRncytRSNPeX9iBMoIIeravor31QgupVNfF3Sc7O/uqXW
         O0MyrJHTel5tRmQfL3kticwBnASxDIdkRKy3X48C56KEke30nuswP0ZLNtiX7u3AMfmR
         SujQ==
X-Gm-Message-State: AFqh2kqtIa/AurfBpnZRQ6wBFFB9AlZ3ZZKjVqgTCi9aYCZ++WWzRwUa
        4K02THDO3dUlCXh3kcfU23vGJeeh1Z0w9K5O+zmPEPpnyr5gmVC2BTeJWmYGt2ReOI8luLGAztz
        48/QpKHe0cT5Xv+MO35Zqdg==
X-Received: by 2002:a4a:8c68:0:b0:4a3:aa96:23c7 with SMTP id v37-20020a4a8c68000000b004a3aa9623c7mr21645482ooj.6.1675093728223;
        Mon, 30 Jan 2023 07:48:48 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsZlKsW4UmOUh6zsAp22dbVWH2s79oinxhwudtqXjMDouXPUguT+G2PrV8znXbFRgCyFddmFQ==
X-Received: by 2002:a4a:8c68:0:b0:4a3:aa96:23c7 with SMTP id v37-20020a4a8c68000000b004a3aa9623c7mr21645469ooj.6.1675093727973;
        Mon, 30 Jan 2023 07:48:47 -0800 (PST)
Received: from halaney-x13s.attlocal.net ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id h3-20020a4ad743000000b0051763fef75fsm2137688oot.37.2023.01.30.07.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 07:48:47 -0800 (PST)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     andersson@kernel.org
Cc:     agross@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bmasney@redhat.com, quic_shazhuss@quicinc.com,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 1/2] arm64: dts: qcom: sa8540p-ride: Fix some i2c pinctrl settings
Date:   Mon, 30 Jan 2023 09:48:22 -0600
Message-Id: <20230130154823.117542-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.1
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

Some of the pinctrl groups were invalid for the selected pins. Select
the proper qup group to fix these warnings:

[    6.523566] sc8280xp-tlmm f100000.pinctrl: invalid group "gpio135" for function "qup15"
[    6.535042] sc8280xp-tlmm f100000.pinctrl: invalid group "gpio136" for function "qup15"
[    6.597536] sc8280xp-tlmm f100000.pinctrl: invalid group "gpio158" for function "qup15"
[    6.597544] sc8280xp-tlmm f100000.pinctrl: invalid group "gpio159" for function "qup15"
[    6.597991] sc8280xp-tlmm f100000.pinctrl: invalid group "gpio0" for function "qup15"
[    6.597996] sc8280xp-tlmm f100000.pinctrl: invalid group "gpio1" for function "qup15"

Fixes: e073899ec3e1 ("arm64: dts: qcom: sa8540p-ride: add i2c nodes")
Reviewed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Brian Masney <bmasney@redhat.com>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

Changes since v1:
	* collected Reviewed-by tags

 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index a43f831f9018..6ab4b435c49e 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -318,21 +318,21 @@ &xo_board_clk {
 &tlmm {
 	i2c0_default: i2c0-default-state {
 		pins = "gpio135", "gpio136";
-		function = "qup15";
+		function = "qup0";
 		drive-strength = <2>;
 		bias-pull-up;
 	};
 
 	i2c1_default: i2c1-default-state {
 		pins = "gpio158", "gpio159";
-		function = "qup15";
+		function = "qup1";
 		drive-strength = <2>;
 		bias-pull-up;
 	};
 
 	i2c12_default: i2c12-default-state {
 		pins = "gpio0", "gpio1";
-		function = "qup15";
+		function = "qup12";
 		drive-strength = <2>;
 		bias-pull-up;
 	};
-- 
2.39.1

