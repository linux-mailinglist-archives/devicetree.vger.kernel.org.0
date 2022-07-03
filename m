Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 945DB56443C
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232327AbiGCEAi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 00:00:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232563AbiGCD7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:59:41 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DE1EDEDC
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:58 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-101ec2d6087so8855198fac.3
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+cgJKCVi/2V6eyFeQPzpk+mpnAU8HPC3GWJwFDC+vfo=;
        b=a4SYQ4IUc+a//TQo+CTZWse4sF8lyrwCIrRNU2iDpmebDAM4y6KfFdCSi6y0FtPlKQ
         9TEago3b/gluuUPBw0AOeI2TRCCkR5UY4mWlsYSDq6leJy6rRGPH0KBedKTPOmB3iOg5
         Q1A1ZJpAHI8kmC/iqs6TV2vW+I2fKyunVp4Sv7pHFVtacZCWXONFZdtRBwdwdaC2qOF3
         sOSQZgqjNOPsNSASx+TON0IEIYWCoGIKHIyNHu3lL15Zw92xQKOT/h1uyRnHbWNOZ7jP
         yukvBpmuuiWf11pLv9vgO4TwbLQURx5lDunfj/hMugMVnUpL4xKZ/qxKva7ybb0XcvoB
         mIuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+cgJKCVi/2V6eyFeQPzpk+mpnAU8HPC3GWJwFDC+vfo=;
        b=gnzt8LxzRsAZVurdkFO7VXEN8zfCN2fG2QfED9WgkVHB0Igs/FsJwtNGD8fxdGPSYS
         fIFbcaQ2Hetdc9IhZuF6YBb7h4MnUDHl6VBPBWBo1cGF4nU+/9IW7l29vdtxGDcifMyY
         a5+Yp9rqrD9yRm770BkimlY+ThqZj3UbUq6w95ue4c7yAtsZRESw5/WT/g8IRVoSJtHd
         gfUepPNh2QeXlOM1VgdMCqxe461xrbxyRk/3tGwSJVZPoo4q/bf8VdyrVSCcmp7P9jFT
         N4NJQdASELeczOiWsH6fBl6XDPTht2sESKRFvYiJcL9tpf8LXWJnYKzrd+s02BpQw30U
         OEPA==
X-Gm-Message-State: AJIora/JreKulgdhpquLIV5O/SkBt1zFeicS+p+xZ4kzjDfGL5//p4nk
        f7XKd19jLhWTOr/h8d++9d23ddKbXgOIvA==
X-Google-Smtp-Source: AGRyM1vFlk/n/OswdQIhCfHk0k7gq96bHLiamaLq7rhP6el3dczg6dSkn0/+kTjJTqCSfbsvBGktLg==
X-Received: by 2002:a05:6870:d79f:b0:f3:4962:7abc with SMTP id bd31-20020a056870d79f00b000f349627abcmr14321784oab.152.1656820677385;
        Sat, 02 Jul 2022 20:57:57 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:56 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        Sireesh Kodali <sireeshkodali1@gmail.com>,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 0/2] remoteproc: qcom: Fix handling of WCNSS IRQs
Date:   Sat,  2 Jul 2022 22:56:50 -0500
Message-Id: <165682055970.445910.10191741648290635149.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220526141740.15834-1-sireeshkodali1@gmail.com>
References: <20220526141740.15834-1-sireeshkodali1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 May 2022 19:47:38 +0530, Sireesh Kodali wrote:
> Due to a bug in the code that fetches the IRQs from the device tree, the
> optional "stop-ack" IRQ was never used, even if it was defined in the
> device tree. This also allowed a typo in the MSM8916 SoC device tree,
> where the "stop-ack" irq was instead labeled "stop".
> 
> The attached patches fix the handling of IRQs in the code, and fix the
> typo in the MSM8916 device tree.
> 
> [...]

Applied, thanks!

[1/2] remoteproc: qcom: wcnss: Fix handling of IRQs
      (no commit info)
[2/2] arm64: dts: qcom: msm8916: Fix typo in pronto remoteproc node
      commit: 5458d6f2827cd30218570f266b8d238417461f2f

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
