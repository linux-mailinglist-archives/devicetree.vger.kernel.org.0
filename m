Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D99556123D2
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 16:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230124AbiJ2OUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 10:20:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbiJ2OT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 10:19:26 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A01AD60E81
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 07:18:04 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id 3-20020a17090a0f8300b00212d5cd4e5eso12308904pjz.4
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 07:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=P9QFigTKmYtXKlmPOyJw0TGo06Tb3Vb+k5qYkdlVCW/AyKvzamq42wfKefeXNp8vTX
         t8Fy6GtKiWkdk7UQtO7yhBq/bxE8aQAnEHGRw+q7SK/Entnh4l1ai+RRLFxZgUR533wk
         mrpMQ3xuCLjTX0413gdP49H31P59t69NAS9mSIIG9gptSKBZ785R7nYiul1r4iai/cqj
         naIbeXg9xPGb8szMaLu2FlAcc679ouDlGCcBx9JBeAXT3pPKn/Xnpw+1FjoLNXmut2xB
         DRXU0blzEd4S/X6IOA29bRpOh6iDohpbxDloosWvSY1aawirkCGQAxiFk+U0/gD7WovW
         7StQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pljquG0hkdcBPdXIDtkq1v6aN8iyQB1w4S/2qg/cek=;
        b=fPukF7bgD5/aRiAr0JyCqDw+q3X4uaaW4We/5vmh+cbo6NdBOcminYzh5W4lJlw7PH
         +zFA3PX7qCSe6njiVldAgFpczQH5hlBU24g36t5fxoH8JCFuGOWTVtPPW3KMxkCMES2D
         xFZ8I2FHk+shNZSVsUrsu0KXQ6Henu8lr3WKiVcuVwsOSuvYuW81X0V5Hi5YfU2WuD9w
         NkfAbY9lVzV/kB6q3jg14h7w5zhkMIiklYv3FlB2iazA4bVUIScLvVdeBp5yRL3nFPfY
         GSZHUnifnKzDVuwX6a10+xdukzJfsMQonGLfZdUtDfAgd4WZPfdWetjbkCoX/CPBc7Px
         c1mg==
X-Gm-Message-State: ACrzQf3iVPuvupsIArJQJm+peb3yCcyaTNBSS+vwL7r3mS/6HbPIH/lx
        LrwRmanu4ypWV+TWMYhcJb0N
X-Google-Smtp-Source: AMsMyM6h+EpF5gb0tIAdqaTv7FkdeBbxEQ/ZkmRZ/8pETHgHQk0mrdRh9x5VlwJ2FSKMsETzSTQWDg==
X-Received: by 2002:a17:902:ce09:b0:178:bb78:49a5 with SMTP id k9-20020a170902ce0900b00178bb7849a5mr4674804plg.100.1667053083512;
        Sat, 29 Oct 2022 07:18:03 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:18:02 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     martin.petersen@oracle.com, jejb@linux.ibm.com,
        andersson@kernel.org, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 15/15] MAINTAINERS: Add myself as the maintainer for Qcom UFS driver
Date:   Sat, 29 Oct 2022 19:46:33 +0530
Message-Id: <20221029141633.295650-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qcom UFS driver has been left un-maintained till now. I'd like to step
up to maintain the driver and its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cf0f18502372..149fd6daf52b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21097,6 +21097,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/ufs/host/ufs-mediatek*
 
+UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-arm-msm@vger.kernel.org
+L:	linux-scsi@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	drivers/ufs/host/ufs-qcom.c
+
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
 M:	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
 L:	linux-renesas-soc@vger.kernel.org
-- 
2.25.1

