Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF1B55F6A13
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:55:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbiJFOzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:55:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbiJFOzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:55:48 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD16967178
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1665068145;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=hvu927jcP5VOBqnit88bPG8K5LsmKJyGG9EvVu5KyBM=;
        b=EWDw9RINeGaMnwK84NZggkYd/IWCRNp2FKNBpWtN/1GHMxJqQ8Rdz0lWVV4g8gS30AzsHF
        oXZ1uKmlARxPCrtU2yTNBYMd/87vXCZcHEXMgIvWJ1vxZLi1qvSvL7dRC4EQZfg63H1pm2
        gJBnKe4dxU+WV11mZgk6dzUs+VKtQCA=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-193-qzitDfB7OuCrUUKTfqbwGw-1; Thu, 06 Oct 2022 10:55:44 -0400
X-MC-Unique: qzitDfB7OuCrUUKTfqbwGw-1
Received: by mail-io1-f72.google.com with SMTP id j20-20020a6b3114000000b006a3211a0ff0so1266330ioa.7
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:55:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hvu927jcP5VOBqnit88bPG8K5LsmKJyGG9EvVu5KyBM=;
        b=h8qJUcn/ByuFItKrWyiNiNurJzjQ6++h/RYSyNCXOUTugZq4ydYZEDXBfm6APU4ZoH
         XjHZh+3eLMlpC9j/qEVE4YMd/fGxc832jsw2mFLSYJA75axofAPrsAZnP60cscE795t9
         3ttxA7LTzz8ZmK4U3dslEjDsx8nqXM8CBfavoV6Ms8hT1NVonuVr9NdmvbI0EMbmREAN
         4S5QWSRGXKEG8taNWeN4pT5E165A0rzlEruMMTDg4cdpEIdPNjYzSicoTDSCPOkVcV9V
         Pp938kM0BNVirpNTk/6YSV8fYcfvEA9/RkxYSSqGg51re+1PiVdlfUgCfxdC9svRsKFg
         eXug==
X-Gm-Message-State: ACrzQf1G6Of/hY/UWOzZKM3kbQ+G8xwb9bY0qSSYup7To/nZn3LmBv3Z
        7Kc0TYdcFOwJ2B1fdFdj9HHpKpL3m8PjMl33WMyrXYxKDoCWgRRzN2JOeJDNaWP2lDegXWVa6GB
        309EjK7XDqpX/okLfMDFfhQ==
X-Received: by 2002:a05:6638:248f:b0:363:73fc:cc17 with SMTP id x15-20020a056638248f00b0036373fccc17mr40638jat.257.1665068143922;
        Thu, 06 Oct 2022 07:55:43 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6lCbCh+MPmTjfqYkLRJfeMy/CGiv6Cjxm/4a1eaZr5AusJ2YLiO8ihXN7k4fKIotEsuCwJjw==
X-Received: by 2002:a05:6638:248f:b0:363:73fc:cc17 with SMTP id x15-20020a056638248f00b0036373fccc17mr40624jat.257.1665068143639;
        Thu, 06 Oct 2022 07:55:43 -0700 (PDT)
Received: from x1.. (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id z2-20020a05660229c200b006884b050a0asm7848669ioq.18.2022.10.06.07.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:55:43 -0700 (PDT)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org
Cc:     agross@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.com, johan+linaro@kernel.org
Subject: [PATCH v4] arm64: dts: qcom: sc8280xp: correct ref clock for ufs_mem_phy
Date:   Thu,  6 Oct 2022 10:55:29 -0400
Message-Id: <20221006145529.755521-1-bmasney@redhat.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
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
Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Tested-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---
Changes since v3:
- Renamed ref_aux to ref in patch subject. Added Johan's R-b and T-b.

v3 of this patch can be found at
https://lore.kernel.org/lkml/20220830180120.2082734-1-bmasney@redhat.com/

v2 of this patch can be found at
https://lore.kernel.org/lkml/20220825163755.683843-1-bmasney@redhat.com/T/#u

v1 of this patch can be found at
https://lore.kernel.org/lkml/20220623142837.3140680-1-bmasney@redhat.com/T/#u

 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index c32bcded2aef..006b9a13bc2f 100644
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
2.37.3

