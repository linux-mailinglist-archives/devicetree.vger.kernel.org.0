Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 889895A6B9E
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230289AbiH3SCH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:02:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230480AbiH3SBi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:01:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F30081B01
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1661882491;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=B4ruO31PHkrlH5v1gXJkpOHPSYcHLtyneSEzcjXO5Ho=;
        b=MGsOGheHacR2X/1wl1M99EAVcV0j2UnMbhyfPl8/+Krr8pgI78WRO6D7nbNVEN66/Q6OW+
        mpjcPeKRVVmUnrwnsTB9RhMqEndcZ3+HQt1x0woOqMnrqiB717FfT7wk83AkGrgkNuaNxa
        Q+g1fNGNF+xxp7DrzwFJBjYgn8osq9Y=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-237-1avBn6xMO9qdShE9rBMZqA-1; Tue, 30 Aug 2022 14:01:30 -0400
X-MC-Unique: 1avBn6xMO9qdShE9rBMZqA-1
Received: by mail-qt1-f197.google.com with SMTP id y12-20020ac8708c000000b00342f1bb8428so9323710qto.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:01:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=B4ruO31PHkrlH5v1gXJkpOHPSYcHLtyneSEzcjXO5Ho=;
        b=CMb9gH0GG/msVIU7fRYNK8Av5d1EGxVsL5zDOTR6MmOb2qXR3xNJpEAtMc2jpgMW8d
         XJThxf+51wRwwoda6MU7JT413Wuo5aZl0zso+FlBIGnCYqsXGrlu0B7zyj8sBeul/dDC
         NkOWgBOk1luQuLqOLDOoqR1FAHXweUoy2RQeVBpVcMEZWaBZBOYD1cB9JTG3RfJ6NKCM
         9iM7r87rEsejsADX2ZgEr8s3gGsToLE/qFBYaztNflDAW8774M+2jCd5bsAQ372No4Wl
         LD3XEe7GD2QrPAfIXrAfoe7fcrAPTdffgXCTrgj42M00aU4yVp1LWms1ZfgzncpbecRn
         aVOg==
X-Gm-Message-State: ACgBeo19CuR0RqMF2shTZGF5e2zl+enY+Pwn/YOfKTYjneJf/GsuP8+1
        lpewd96F8Vl4IHw+slcv0Ie+fSm2FLNjPrDucDDHMvYKQ9WnelMRVps/0vkWXdhIQ8N2nLeG/q+
        edmIFPrs8LSU7zi9Og8E/gg==
X-Received: by 2002:a05:620a:2452:b0:6bb:d8ba:ca65 with SMTP id h18-20020a05620a245200b006bbd8baca65mr12862207qkn.263.1661882489882;
        Tue, 30 Aug 2022 11:01:29 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4FDpHPGTAEXt4hym2rCFYYguOK7NgS2axRiD3nKOflngOJy2QWn639ZrCJ/MLxORdMitK6Nw==
X-Received: by 2002:a05:620a:2452:b0:6bb:d8ba:ca65 with SMTP id h18-20020a05620a245200b006bbd8baca65mr12862167qkn.263.1661882489395;
        Tue, 30 Aug 2022 11:01:29 -0700 (PDT)
Received: from xps13.redhat.com (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id bm2-20020a05620a198200b006b5f06186aesm8599670qkb.65.2022.08.30.11.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:01:29 -0700 (PDT)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org
Cc:     agross@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.com
Subject: [PATCH v3] arm64: dts: qcom: sc8280xp: correct ref_aux clock for ufs_mem_phy
Date:   Tue, 30 Aug 2022 14:01:20 -0400
Message-Id: <20220830180120.2082734-1-bmasney@redhat.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first UFS host controller fails to start on the SA8540P automotive
board (QDrive3) due to the following errors:

    ufshcd-qcom 1d84000.ufs: ufshcd_query_flag: Sending flag query for idn 18 failed, err = 253
    ufshcd-qcom 1d84000.ufs: ufshcd_query_flag: Sending flag query for idn 18 failed, err = 253
    ufshcd-qcom 1d84000.ufs: ufshcd_query_flag: Sending flag query for idn 18 failed, err = 253
    ufshcd-qcom 1d84000.ufs: ufshcd_query_flag_retry: query attribute, opcode 5, idn 18, failed
        with error 253 after 3 retries

The system eventually fails to boot with the warning:

    gcc_ufs_phy_axi_clk status stuck at 'off'

This issue can be worked around by adding clk_ignore_unused to the
kernel command line since the system firmware sets up this clock for us.

Let's fix this issue by updating the ref clock on ufs_mem_phy. Note
that the downstream MSM 5.4 sources list this as ref_clk_parent. With
this patch, the SA8540P is able to be booted without clk_ignore_unused.

Signed-off-by: Brian Masney <bmasney@redhat.com>
Fixes: 152d1faf1e2f3 ("arm64: dts: qcom: add SC8280XP platform")
---
v2 of this patch can be found at
https://lore.kernel.org/lkml/20220825163755.683843-1-bmasney@redhat.com/T/#u

v1 of this patch can be found at
https://lore.kernel.org/lkml/20220623142837.3140680-1-bmasney@redhat.com/T/#u

Note that there's also a similar issue with the second UFS controller
(ufs_card_hc) since it separately fails with:

    ufshcd-qcom 1da4000.ufs: Controller enable failed
    ufshcd-qcom 1da4000.ufs: link startup failed 1
    ...
    gcc_ufs_card_axi_clk status stuck at 'off'

We are currently disabling the second UFS host controller (ufs_card_hc) in
our DTS at the moment. I haven't had any luck so far tracking this one
down and it's particularly tough without docs access.

 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 49ea8b5612fc..2bdde4b8f72b 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -891,7 +891,7 @@ ufs_mem_phy: phy@1d87000 {
 			ranges;
 			clock-names = "ref",
 				      "ref_aux";
-			clocks = <&rpmhcc RPMH_CXO_CLK>,
+			clocks = <&gcc GCC_UFS_REF_CLKREF_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 
 			resets = <&ufs_mem_hc 0>;
-- 
2.37.1

