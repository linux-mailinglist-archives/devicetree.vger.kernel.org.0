Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00C374BFBA1
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 16:02:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233170AbiBVPCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 10:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233110AbiBVPBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 10:01:15 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9592F10F203
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 07:00:11 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 091194081B
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 15:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645542007;
        bh=YBEC74wb9GPpBj/B6mQOA+S5GClKlTxflH8/ImjOGfA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=OkAcyGHSlMPznrF7HJyFj7mmi6ZirlLLonyYv23IyfhItglB9WOWcHL4AAHDtdHPO
         wIIQxGrG++EGzh/rBoBMqF3JlUYNJOGmauFRO24CFm1/YEqOBYHRT3nRsUKDrjbHTs
         hd8hb9IEvA7OEsCe8qLX4h00V+nNUccZ6LTcSO8PAfsoDoZZN2w2mYof65UqJCcg12
         zgpPea7J52kW+NtTw/fLqV9IcM5Zvrb32pr+DDciy9vLh0Io8Zkr4yZrW7tk/nkV7y
         GnYdsWeM8wdPstXenXWizXqCWVWPoP/9lpspBb3KBXcK0QfdEzaHxYuMYBMLS7uRVq
         1jfugrqsrKoOw==
Received: by mail-ed1-f71.google.com with SMTP id l3-20020a50cbc3000000b0041083c11173so12112996edi.4
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 07:00:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YBEC74wb9GPpBj/B6mQOA+S5GClKlTxflH8/ImjOGfA=;
        b=10wNq8ymwPLuAowp7xJGFlMdKB2lsh0/w6I2S47zeTRdYzxfZ60K/SypzlhBat863u
         B4ScItX3xmHIC5q1eZyfek9ltiEAp6AqR4M+UInHEYxpyV3jPRcsZpNKIAgoih2614bi
         Iyem1PUz+ulL/25LygxQgQ6H2YJx1Ol/hKCKOQ8qkJaTlHN2ikuhI/4+YZp9AvkIK6Id
         /YtKKLBeg1Jq/RW6mdrBmYb0YuSLR58CuQPwEVVQEt0EOtF//7eyxHtXQScxCfGQVDfX
         RXxoUbyaUOm56MXr8+2fvdocP8SwKMZkNmeuEAqb1WfQLRCAvm/Yf7IYbgsxVD2ylwDH
         QE2w==
X-Gm-Message-State: AOAM5303IFphnIFyNZmp7m70wJ0tGl8L/O0oSbJJwytpLgBeP/oOZthV
        FtsJfZZLOWtAWqHlxj0eumpqzLu0o9uxHx61J7XtETNFMAuxfJ/1yqH5rUT4hDVpmHprIObiN+m
        eUFf/As5kyWDuZcZmxJv9AQrht/J8Jd6Bwrq6wRY=
X-Received: by 2002:a17:906:7746:b0:6ce:a12e:489f with SMTP id o6-20020a170906774600b006cea12e489fmr18914899ejn.551.1645542003129;
        Tue, 22 Feb 2022 07:00:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwLi2RkpjMH1XnBpd7ijPxBtJkEM6ya606jWmcrmuPZusdxAuidRgjMaupSJDwmi2J8JqbfkQ==
X-Received: by 2002:a17:906:7746:b0:6ce:a12e:489f with SMTP id o6-20020a170906774600b006cea12e489fmr18914869ejn.551.1645542002826;
        Tue, 22 Feb 2022 07:00:02 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id m2sm2467960ejb.20.2022.02.22.07.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 07:00:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Jan Kotas <jank@cadence.com>, Li Wei <liwei213@huawei.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Yaniv Gardi <ygardi@codeaurora.org>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 14/15] arm64: dts: qcom: msm8996: correct UFS compatible
Date:   Tue, 22 Feb 2022 15:58:53 +0100
Message-Id: <20220222145854.358646-15-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
References: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm UFS bindings require to use specific (qcom,msm8996-ufshc)
and generic (jedec,ufs-2.0) compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index fad1bbfa1c0a..f25c68511b64 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1728,7 +1728,8 @@ pcie2: pcie@610000 {
 		};
 
 		ufshc: ufshc@624000 {
-			compatible = "qcom,ufshc";
+			compatible = "qcom,msm8996-ufshc", "qcom,ufshc",
+				     "jedec,ufs-2.0";
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-- 
2.32.0

