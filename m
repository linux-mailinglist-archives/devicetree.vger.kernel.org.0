Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55852564465
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232973AbiGCEAf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 00:00:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232761AbiGCD7d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:59:33 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F157B7E1
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:56 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id p6-20020a4aa846000000b0042599456d32so1241444oom.9
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=KDpUIW1h1P5u4uzcKLOiF/O8SnyIPxF8X/T+L2dc7pg=;
        b=iJny6fDq1yo8+q4aeYp7XwHWhMUIgRtR+ZrUfdno7yutF60DBKaryur10+3wXvgfIE
         0mbjfZ5bBiRGCIDzE22cNEdTLdZFoFcNd2n/FtA0BCFcI9ZNRusEWZw5VUx3WJ76p9NO
         Rt1rTxRMT3H73pWD8xB5pyhd3wpVMOVtJdNrONh1zFH7FY9WSbW1PYwbhHdwVTsYx5bp
         2ugwVicc38kenpX4JIHznM89/P9p2y7Tfon3IVslQ1jedl1+yLshz8UZWnlLRDrUQHGL
         VqVqi/bmzifc7lFYzEeVaL+EvxqsMdxDxsWgzXy6gfpJM0nvjsIVtGRYUtkgiWdK5VxI
         RGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KDpUIW1h1P5u4uzcKLOiF/O8SnyIPxF8X/T+L2dc7pg=;
        b=WDUQIB24RVF48szhh30KHNofYtvPBPM2Jh/qlutp/Y8Hss3PdP0KnGGSXj+Qk7frpo
         V2u9vQZH0+JZ6AWr2WWEiWqiWWKsLA93v+d+jqM2LtqgV2iQT6bNWtWlupKOY9KavrJh
         uWqmyh7Qpkl1fBrURAmgVnO3LToC/b6Udqwv343GBT2MN4ji9/NRIO7bBaUBaSG3a6fj
         t1t0OMLbhrkqd476aKSURDDF6L+WMIgIHtSUbh9iiKbne9Jo8U5NSxCMrZYwFIe7sOSZ
         NNiWAF9bLUKvheKsWSgfreS3+z6O+NcS+EAHnvJNoQFolVGzbngi7u7TXKrVBA627Kc8
         XRYw==
X-Gm-Message-State: AJIora89IaeoHyMltvPAUYKmDuphPZVXe3f4aIzbtJ/8Rso8KMy6w25c
        wb+7s7t3SW+GU4ZJt5IHVpJfdw==
X-Google-Smtp-Source: AGRyM1uR222g2SlVHdXivcqYaIWvify6C+9M/jhbkTBGBalEj/cOCr71OLOwOXbFpzSAdi3OZ4IoQg==
X-Received: by 2002:a4a:9011:0:b0:41b:dce2:4cfe with SMTP id i17-20020a4a9011000000b0041bdce24cfemr9424647oog.19.1656820674240;
        Sat, 02 Jul 2022 20:57:54 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:53 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        agross@kernel.org, robh+dt@kernel.org,
        Robert Marko <robimarko@gmail.com>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: ipq6018: correct QUP peripheral labels
Date:   Sat,  2 Jul 2022 22:56:47 -0500
Message-Id: <165682055970.445910.17601664788092675117.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220604153003.55172-1-robimarko@gmail.com>
References: <20220604153003.55172-1-robimarko@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 4 Jun 2022 17:30:03 +0200, Robert Marko wrote:
> Current QUP peripheral labels like spi_0 and i2c_0 dont really tell what is
> the exact QUP HW being used as there are actually 6 identical QUP HW blocks
> for UART, SPI and I2C.
> For example current i2c_0 label actually points to the QUP2 I2C HW.
> 
> This style of labeling does not follow what the rest of Qualcomm SoC-s use,
> for example IPQ8074 which has the identical QUP blocks.
> It also makes it really hard to add the missing QUP DT nodes as there are
> multiple missing.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: ipq6018: correct QUP peripheral labels
      commit: f82c48d468521cd9d1a31797c6f9e6cac6f7c1b3

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
