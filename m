Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3FBE75A5CD
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 07:44:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbjGTFoo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 01:44:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbjGTFoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 01:44:23 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6DD32727
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 22:43:24 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-666e3b15370so245930b3a.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 22:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689831790; x=1690436590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mPypMCRuXClcgpL2lzvILT3JZpVsxzUSfa1w4HvazI=;
        b=Y2E2qjmmVC8V3Tvj3PyJGakAdVUhyqLTUYoxkCJUOBFoFjv8Rk0yKQOnO9ycQov5VA
         3zRFcFuCKy3AsKX3iiFQhWKOwuZwqwdPAyBME1CLVOalm3zwQb7J/UeHyLNkXjlV12/r
         bdAMjlJyT3N1qMRlmLBFTbAQhRkyFPHHSVX/VPL3bRtlaWMA0UWep7IpLqjHwppLAw31
         q/suRvfXPBpqkKB8e2qcdMMLXSqZ/J4JeM5wW9qFEUCY9QeEe8ryV33X+0oO6/q3tDGl
         M0lS+4KwRC6WicaQix15RWqi7/PPfFtqFBufKybZHbXg+Z/hJi9Nwu9HYoGvVw3JHXdZ
         FTIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689831790; x=1690436590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2mPypMCRuXClcgpL2lzvILT3JZpVsxzUSfa1w4HvazI=;
        b=huR5FfaI0SgDYeCug+XP6vz00faDgUuIFScWkP7eV1Ykv3YHoSoDTvuA/wQW/ekBU+
         76io1Qi4lMwptDJB/m6vS4yFdKaWIA4IK2BQ04uFB/oU/t8gz7WtRpe+1iEPN9K+vA3R
         mvpKiRGVa5IQmMXmiKZ2HEX4u3//6KlWQyq5ffkA5c+g9yQiqoA1Tu9fnIhaW6Rylgzt
         vM20Nffz2YkwXn54umIWOV4ndq2w0QGdBZdNlMPesdUf719BEAW3HBp0XZ1H54kn1Hnj
         9Ea2sAz8gBXG4QjZR/2eLjHfBtlhM7F9HusBLZQ6X4KZflLv0/SUgGkub+bvr/lOhG+z
         KlVg==
X-Gm-Message-State: ABy/qLaNLxUrfnZdC2BLAsYMOPWGtzUtp2BeIvkiL1muLY7uwZ7PSRuz
        BzOosqzQbgbrf+8GPDjO8YFm
X-Google-Smtp-Source: APBJJlEuMdN6Sloz1qGrBXi36RlA7nfygvYAdS5/5iswYB2/voMdFFiFqDM6kssl/IT25ku9K7KLDg==
X-Received: by 2002:a05:6a21:3387:b0:137:8d4c:6b0f with SMTP id yy7-20020a056a21338700b001378d4c6b0fmr2095112pzb.42.1689831789996;
        Wed, 19 Jul 2023 22:43:09 -0700 (PDT)
Received: from localhost.localdomain ([117.206.119.70])
        by smtp.gmail.com with ESMTPSA id r2-20020a170902be0200b001b85bb5fd77sm263367pls.119.2023.07.19.22.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 22:43:09 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
        cw00.choi@samsung.com, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        jejb@linux.ibm.com, martin.petersen@oracle.com
Cc:     alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        linux-scsi@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_asutoshd@quicinc.com, quic_cang@quicinc.com,
        quic_nitirawa@quicinc.com, quic_narepall@quicinc.com,
        quic_bhaskarv@quicinc.com, quic_richardp@quicinc.com,
        quic_nguyenb@quicinc.com, quic_ziqichen@quicinc.com,
        bmasney@redhat.com, krzysztof.kozlowski@linaro.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 13/15] arm64: dts: qcom: sm8250: Add interconnect paths to UFSHC
Date:   Thu, 20 Jul 2023 11:10:58 +0530
Message-Id: <20230720054100.9940-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230720054100.9940-1-manivannan.sadhasivam@linaro.org>
References: <20230720054100.9940-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

UFS host controller requires interconnect path configuration for proper
working. So let's specify them for SM8250 SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 72fd66db9c51..7a495ff7512f 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2197,6 +2197,10 @@ ufs_mem_hc: ufshc@1d84000 {
 
 			operating-points-v2 = <&ufs_opp_table>;
 
+			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mc_virt SLAVE_EBI_CH0 0>,
+					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_UFS_MEM_CFG 0>;
+			interconnect-names = "ufs-ddr", "cpu-ufs";
+
 			status = "disabled";
 
 			ufs_opp_table: opp-table {
-- 
2.25.1

