Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C76F073A571
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 17:56:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbjFVP4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 11:56:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231802AbjFVP4X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 11:56:23 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FEB41992
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 08:56:21 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b47a15ca10so71860371fa.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 08:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687449380; x=1690041380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bVNrmV62YGYAQclYMSUvX/eEvXhGpa0L72Uy0QPgV9s=;
        b=BzVSalBJO+Ok0bneB2AbcR9n2rGZ0Sm2D88rJqBgvzTAfgKlFlc2bYTTTefvfUFq0k
         vmTSqz+3to603Mg6XqQafFXZ54QTAFMOQXroRcm2weX+xKYI0y/VR0nmzBOp1RwlfgM0
         WmAXL8VAtQ4/lBN2ZgMmGW2eCOZ/DgITv7y3/kXpLUt+f+W5CADIl6HIavAn14cbnn1G
         +H3oYCexGn2MxsrLNgCrkSJOaWbhLC+b2p0iQDsFEgptlQiCOLOc26+9SB13uIeoePrZ
         iQ8vdWhKMKsDSntfQyvfK2oZ7jPOx4sdnn9NfRbWIXmU4uRrDAt1XEqN1X/4m248c+i+
         lU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687449380; x=1690041380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bVNrmV62YGYAQclYMSUvX/eEvXhGpa0L72Uy0QPgV9s=;
        b=WdCgBPzHD4fLW8PDagGl8oYcXrY494g4XPhk2PbqhgRe54f1LWeLf7WhyqldL/07s8
         2Vetv411yyDE1+4UY5VTcqUqH153aUD9i9AdnEJseIGk/oWaD0CM0N8YLHibEwghqsUX
         9IYNOKL2SAIDzfncFmK7iBMqlHM9ut/IhgiUJC1oYTIZZiEWofPh3DMnrzeckzaLAy7x
         w1U3K/6NE+iOlaaI8MNk9Fg+238MI47E9WsbWQc1axo7d8FoUhoM2YA6xbGhJSf/A4k4
         B+TXgltpzlNyCxLl6E9TJFm4VMIHjS3bYmYpvTiNhwZ87e8OTjaappttBioVuyR+7QaU
         DBKg==
X-Gm-Message-State: AC+VfDziTWWjSHsq6bCc3tDwVFXDgIfuL7XPaDgzCbBWKeqpv9sOt8Ox
        3/XRoOebcBqmHWsUn4/C9Dck7g==
X-Google-Smtp-Source: ACHHUZ45KLmkDj4mnujXGEY6jCtLWMORO5pw/AK4vZMy3tS3mdPCy/TcTsCI+Ou3bbAWg7eDzXTFDA==
X-Received: by 2002:a19:e346:0:b0:4f8:3b17:e0c7 with SMTP id c6-20020a19e346000000b004f83b17e0c7mr11277064lfk.7.1687449379838;
        Thu, 22 Jun 2023 08:56:19 -0700 (PDT)
Received: from [192.168.1.101] (abyl165.neoplus.adsl.tpnet.pl. [83.9.31.165])
        by smtp.gmail.com with ESMTPSA id h25-20020ac25979000000b004f8747e519bsm1146876lfp.125.2023.06.22.08.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 08:56:19 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 22 Jun 2023 17:56:16 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: sc8280xp: Add missing SCM
 interconnect
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230622-topic-8280scmicc-v1-2-6ef318919ea5@linaro.org>
References: <20230622-topic-8280scmicc-v1-0-6ef318919ea5@linaro.org>
In-Reply-To: <20230622-topic-8280scmicc-v1-0-6ef318919ea5@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687449375; l=727;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=NT3m86WoL3MkuuKoi81cggAgHYdFEiNVsimtMtL3KRo=;
 b=AjjwFA8GMpl1wQJjRKRh/1ni1Ey8g62u9DCNUSpyVhDBY1R27Po0DTh92p2G0bmvoR3aZQmCk
 yrQaRrGnWOmAClZ9QI1ighmZqb4YKlwMulT9fJKqD0wrTl6SThyx9Mp
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SCM interconnect path was missing. Add it.

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index ac0596dfdbc4..0756b7c141ff 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -298,6 +298,7 @@ CLUSTER_SLEEP_0: cluster-sleep-0 {
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sc8280xp", "qcom,scm";
+			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
 		};
 	};
 

-- 
2.41.0

