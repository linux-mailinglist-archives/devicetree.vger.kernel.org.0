Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9289D65C626
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 19:25:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238567AbjACSZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 13:25:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238709AbjACSZG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 13:25:06 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A696B13EBD
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 10:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672770183;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Tt+pdRFwqN8VH88+PGfu+O8CtSAML4FLnYQjY76G08c=;
        b=b3Y6f9iAYvpSxvDVxjtsWJs2A99IqNS13jY0X6vTOe8qnHCTyc5DmpFgRvt0wiELJhnSBI
        PIFqYZbbLZZlLKn5BYWwuiQaR9UR18dBhsQmHI5JHVpa1oHURqoTaJcSJacycoPwwGfx4B
        Vksoj+LHAAaI0EDPdxWKWSqeIXS/Mlo=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-581-MvfdSIhVNoWoH9syMhFWpg-1; Tue, 03 Jan 2023 13:23:02 -0500
X-MC-Unique: MvfdSIhVNoWoH9syMhFWpg-1
Received: by mail-qv1-f70.google.com with SMTP id lp10-20020a056214590a00b0053180ee70f1so12062181qvb.13
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 10:23:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tt+pdRFwqN8VH88+PGfu+O8CtSAML4FLnYQjY76G08c=;
        b=EOtNY67CX3hyP5x07M2Q4tDH8bC2jZK/VWn0cLyDVuhh19Bxc+y1BmJARbSqw+0ZvA
         cnO2u4XwYk/hjuRhGG5rNe9vTGvB+gaAvg/ClMthjR3Gz0R831oej3HT0Z+EUD/6bUQg
         SRmw2SFmcucufx4tE9Usb+USuCvTgQHAQL/hADNqBWvkqNzRbMTSD0JnE1MYMXaZe84o
         RjOCoz2XZe0iArkzWCKgVz5q7EwbSYgn4CW+ASVyiLOqxBfLbadDsVnQJXiJ9vLWAcah
         nInnidHfhkxWtFc6VGws/oYXAZX6hQZwqWVF/AtYaS7zEfUU6nOE99+T5CzhIjwVplOq
         WfOA==
X-Gm-Message-State: AFqh2kp3EE+bQ/osAj3uMGF9WanePPNjWRoAmP1ODDV629JKs9k7nyR3
        SCY+wvNERYJAZgnrkk2d4gQAn58ZLjaKssaBFEkMzeRx8ZhkhT1/riHjNKJkTo1V0MLvRrmb5cz
        mCQODwbxdC+lX/LAHZ+YsTQ==
X-Received: by 2002:ac8:7598:0:b0:3a5:63ef:cf4e with SMTP id s24-20020ac87598000000b003a563efcf4emr68534223qtq.16.1672770182229;
        Tue, 03 Jan 2023 10:23:02 -0800 (PST)
X-Google-Smtp-Source: AMrXdXujwLFY/CRb243+DbBgit9aoC27M7uLVbd8/5ea/dPxHl86nTLOIaT52IuagtOHBBdSQJ8RLg==
X-Received: by 2002:ac8:7598:0:b0:3a5:63ef:cf4e with SMTP id s24-20020ac87598000000b003a563efcf4emr68534207qtq.16.1672770182018;
        Tue, 03 Jan 2023 10:23:02 -0800 (PST)
Received: from x1.. (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id t13-20020a05620a450d00b006fba0a389a4sm22819675qkp.88.2023.01.03.10.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 10:23:01 -0800 (PST)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     quic_shazhuss@quicinc.com, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.co
Subject: [PATCH v4 10/10] arm64: dts: qcom: sc8280xp: add rng device tree node
Date:   Tue,  3 Jan 2023 13:22:29 -0500
Message-Id: <20230103182229.37169-11-bmasney@redhat.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230103182229.37169-1-bmasney@redhat.com>
References: <20230103182229.37169-1-bmasney@redhat.com>
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

Add the necessary device tree node for qcom,prng-ee so we can use the
hardware random number generator. This functionality was tested on a
SA8540p automotive development board using kcapi-rng from libkcapi.

Signed-off-by: Brian Masney <bmasney@redhat.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
No changes in v4

 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 7f316c3918bd..b713c0126164 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1626,6 +1626,13 @@ spi15: spi@a9c000 {
 			};
 		};
 
+		rng: rng@10d3000 {
+			compatible = "qcom,prng-ee";
+			reg = <0 0x010d3000 0 0x1000>;
+			clocks = <&rpmhcc RPMH_HWKM_CLK>;
+			clock-names = "core";
+		};
+
 		pcie4: pcie@1c00000 {
 			device_type = "pci";
 			compatible = "qcom,pcie-sc8280xp";
-- 
2.39.0

