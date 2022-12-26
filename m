Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29F88655F59
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 04:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231490AbiLZDLK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Dec 2022 22:11:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231510AbiLZDLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Dec 2022 22:11:07 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4204A38AE
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 19:11:04 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 1so14567254lfz.4
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 19:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOPpZXvnhHa1qoac0B6bfJrnDF8l/HQwHQJha2WAMcA=;
        b=y7lqmFF3DN7ZzcnjrZcCIKEy5NIzn3LtLpYfgOLj5NCFH7NPqM06Sr9ue+RsXUUfww
         WKddBkBrRKhOCA5jVj7GHpMKjNFG4mesBWtyIGd+cIN743WPB6tnqjFiWw+vI/MnV89i
         ba4MbTeur7yWp9Wh5IRa3UUjF2T+SHdwRiYHy8BT1UD4PEWN/hk3nQqudTn8wrQUT3zY
         jo0zpyv6y3KbbmZsr3Z+sjh2N5Ni5LV7SV5VJeWQgp7mqFCitHI7lbiy5Ny/AmhF02YN
         OkTJlKb6hmR1ZOX3MCGbfruKrm1Y1JJD297bI76EUA5HFSew+356g82t/Rs6I34BiNzq
         86Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOPpZXvnhHa1qoac0B6bfJrnDF8l/HQwHQJha2WAMcA=;
        b=yTsX62H60HHsxm9a9Ib027rPXX3rn0climm9EnDbT2FZ7Udo1zhqmwg0m93pjkodnv
         q1J0pUoqxnUwcpbQViyJTWDTU4xYUWHENnoubA1gc2oQIdkPT4JYzaeL3Eq5t1mj8Q4y
         MgfIOV6ZAZcVvnyIxZDym/zKW5nFpZurWvtOf9d+S4f++mpGLhpDm4ha91PPomxrpKaQ
         KcLyYECcGgNAVPLgwQcB8IO6YM2Mh+gTUkaUCea9TXxa1Oss/B8irYkyDC8hLwf9n6Ri
         uIsjQtN6SgWCn7yVKfBv4+rT/CobrOEbDwhMYkLOkqZACOD6ixZr6tfjwutnnYMVQPit
         ax1g==
X-Gm-Message-State: AFqh2krJuaUiD1Qbj78ZuQ+G7d2eXtik9EhAHobuu/bgHjCjpmWASsGL
        cu6nRzWaLqFph0dtvSSOqBVIZxhhp9GW8+0jYVY2CA==
X-Google-Smtp-Source: AMrXdXtLlyh5s3oI5dEvX7d8RshePPPEHXE+yeeNY0V3rN/FmbaNibWHOrZql6Nag1Q2lYJ/KZamNg==
X-Received: by 2002:a05:6512:31d1:b0:4b5:7925:8707 with SMTP id j17-20020a05651231d100b004b579258707mr5763777lfe.26.1672024262594;
        Sun, 25 Dec 2022 19:11:02 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a12-20020a2e860c000000b0027f770526ebsm1165388lji.75.2022.12.25.19.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 19:11:02 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
Date:   Mon, 26 Dec 2022 05:10:59 +0200
Message-Id: <20221226031059.2563165-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a5324eecb50a..ffffaa7507cf 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -810,6 +810,7 @@ pcie_phy: phy@7786000 {
 			reset-names = "phy", "pipe";
 
 			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
 			#phy-cells = <0>;
 
 			status = "disabled";
-- 
2.35.1

