Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 908D26C2485
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 23:19:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbjCTWTB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 18:19:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbjCTWS2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 18:18:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98DC22ED6B
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 15:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679350615;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UcZ24ZaYybRtPqLVIgPQFtW7rz0akj/SPyjHKg9YcJc=;
        b=cyy6B9fFgU03L1k2J/lRCld9vqTYcek+uPhIpCGueMkGF9FpKDbvFEWdh50q7R7goDbYda
        Li+C14/gR3vmkfDgVedFNyUSEshcNIm9PY3Tb6iq4U9i5kPOV/85cX8Ze4/a4yFz3w+w/v
        gyLjVahnTsKp9mmRJL1ZPFtciFzJR98=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-303-OgzobNpAOAqrhxbRRRHgmg-1; Mon, 20 Mar 2023 18:16:54 -0400
X-MC-Unique: OgzobNpAOAqrhxbRRRHgmg-1
Received: by mail-oi1-f200.google.com with SMTP id 65-20020aca0644000000b00383e7adefc0so5717115oig.11
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 15:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679350614;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UcZ24ZaYybRtPqLVIgPQFtW7rz0akj/SPyjHKg9YcJc=;
        b=ILyO9xBsCvPwelSDkBwZIlWY6HPjjX9eTLlg9Wddoq12K0AY91K4NTZF/evvU3zlA8
         +A5nfcWRNXYiE2zXkbFj+iOb1J/rzCOMH3s/HeVrjNxtHrAIT/MQxZo9RyGQ4TnWZU5O
         1g2myQDUuPeB29Rqwk4PhN5bKY4MnfsILOasnPlxLPsp1HyWqLChicoAPKLrLrZtf0iJ
         4/UfIL2r1/IhVBa2POSUhZgsbUn3P8qN9xM1eWCDzVMu3gD4n2TaX4kHhiiaA5117aky
         NCC45b9XQDiyBtERZshU6aaZx+dzaOZ0txrJRJKY3J0ghN+TNVhIVZ/TuEbkAa/GUptd
         PRAg==
X-Gm-Message-State: AO0yUKUaxMO0B6K3btF2/61QXU2klpjUT3OCkyjo4fJDpto1J4viuUrz
        RChyJLuh0hrSDJXZKtFzWwJfLO3r6E64q+TS8egUAl+EwttY9yxNW5Bcl/pspTgfgYHVzfB2xn3
        QmgL8D6pJ8U7JFiW0E0LJqQ==
X-Received: by 2002:a05:6830:1d67:b0:69f:7f2e:9474 with SMTP id l7-20020a0568301d6700b0069f7f2e9474mr152750oti.16.1679350613812;
        Mon, 20 Mar 2023 15:16:53 -0700 (PDT)
X-Google-Smtp-Source: AK7set88qtZ4v8k1HOBLwE7ZvoHS8oAzo1vuNep16/9zREb9pfCiFyhvnnD5S69+nn+LVuujapH8tw==
X-Received: by 2002:a05:6830:1d67:b0:69f:7f2e:9474 with SMTP id l7-20020a0568301d6700b0069f7f2e9474mr152732oti.16.1679350613600;
        Mon, 20 Mar 2023 15:16:53 -0700 (PDT)
Received: from halaney-x13s.redhat.com (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id q204-20020a4a33d5000000b0053853156b5csm4092465ooq.8.2023.03.20.15.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 15:16:53 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        bhupesh.sharma@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, peppe.cavallaro@st.com,
        alexandre.torgue@foss.st.com, joabreu@synopsys.com,
        mcoquelin.stm32@gmail.com, richardcochran@gmail.com,
        linux@armlinux.org.uk, veekhee@apple.com,
        tee.min.tan@linux.intel.com, mohammad.athari.ismail@intel.com,
        jonathanh@nvidia.com, ruppala@nvidia.com, bmasney@redhat.com,
        andrey.konovalov@linaro.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, ncai@quicinc.com,
        jsuraj@qti.qualcomm.com, hisunil@quicinc.com, echanude@redhat.com,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH net-next v2 05/12] clk: qcom: gcc-sc8280xp: Add EMAC GDSCs
Date:   Mon, 20 Mar 2023 17:16:10 -0500
Message-Id: <20230320221617.236323-6-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320221617.236323-1-ahalaney@redhat.com>
References: <20230320221617.236323-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the EMAC GDSCs to allow the EMAC hardware to be enabled.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

I'm still unsure if Bjorn wants to take this patch or net-dev, and how I am
supposed to indicate such other than commenting here (per Stephen's
comment on v1): https://lore.kernel.org/netdev/e5cb46e8874b12dbe438be12ee0cf949.sboyd@kernel.org/#t

Changes since v1:
	* Add Stephen's Acked-by
	* Explicitly tested on x13s laptop with no noticeable side effect (Konrad)

 drivers/clk/qcom/gcc-sc8280xp.c               | 18 ++++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sc8280xp.h |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sc8280xp.c b/drivers/clk/qcom/gcc-sc8280xp.c
index b3198784e1c3..04a99dbaa57e 100644
--- a/drivers/clk/qcom/gcc-sc8280xp.c
+++ b/drivers/clk/qcom/gcc-sc8280xp.c
@@ -6873,6 +6873,22 @@ static struct gdsc usb30_sec_gdsc = {
 	.pwrsts = PWRSTS_RET_ON,
 };
 
+static struct gdsc emac_0_gdsc = {
+	.gdscr = 0xaa004,
+	.pd = {
+		.name = "emac_0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc emac_1_gdsc = {
+	.gdscr = 0xba004,
+	.pd = {
+		.name = "emac_1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
 static struct clk_regmap *gcc_sc8280xp_clocks[] = {
 	[GCC_AGGRE_NOC_PCIE0_TUNNEL_AXI_CLK] = &gcc_aggre_noc_pcie0_tunnel_axi_clk.clkr,
 	[GCC_AGGRE_NOC_PCIE1_TUNNEL_AXI_CLK] = &gcc_aggre_noc_pcie1_tunnel_axi_clk.clkr,
@@ -7351,6 +7367,8 @@ static struct gdsc *gcc_sc8280xp_gdscs[] = {
 	[USB30_MP_GDSC] = &usb30_mp_gdsc,
 	[USB30_PRIM_GDSC] = &usb30_prim_gdsc,
 	[USB30_SEC_GDSC] = &usb30_sec_gdsc,
+	[EMAC_0_GDSC] = &emac_0_gdsc,
+	[EMAC_1_GDSC] = &emac_1_gdsc,
 };
 
 static const struct clk_rcg_dfs_data gcc_dfs_clocks[] = {
diff --git a/include/dt-bindings/clock/qcom,gcc-sc8280xp.h b/include/dt-bindings/clock/qcom,gcc-sc8280xp.h
index cb2fb638825c..721105ea4fad 100644
--- a/include/dt-bindings/clock/qcom,gcc-sc8280xp.h
+++ b/include/dt-bindings/clock/qcom,gcc-sc8280xp.h
@@ -492,5 +492,7 @@
 #define USB30_MP_GDSC					9
 #define USB30_PRIM_GDSC					10
 #define USB30_SEC_GDSC					11
+#define EMAC_0_GDSC					12
+#define EMAC_1_GDSC					13
 
 #endif
-- 
2.39.2

