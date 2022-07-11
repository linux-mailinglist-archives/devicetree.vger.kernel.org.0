Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88797566859
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:42:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232713AbiGEKmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232615AbiGEKlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:41:53 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBBDA15A1E
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:41:49 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t19so19193558lfl.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AlhmPeGdzSl4VmftPqKbphxaSgO+vD9XZg93/dH9aT0=;
        b=QUhPAn/uu+1VvzYO3fW/0EFXJxhrR2cvHxpuDXxgwYELJugQIN1foDzn+yiJVN1+0e
         rT8ANvlXLrKyojp0E8dj4nWQJ8boit8s6cheb16btkfnDnZ1YxkekkNdlwpDd+SlptKR
         mvyqD+pKTD3jtBzeCLXmCnwJXVSPkDcG3kC6svaVyzpKVlNq1VAw1IHL6vhjdNzW7glB
         ebtIqHXeCjVbmClDuj1RiC+UBFY3ixTmon7gzGwq/ws6y4pMVzR8I49Iayjnmk0gTLkp
         XOh247Bbbh8Cb4QsOTLjCDG0vmoDOIRvaRHpKeVDiUSxoc4aDYr7dxpFDS0MRnvPs9am
         Mi4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AlhmPeGdzSl4VmftPqKbphxaSgO+vD9XZg93/dH9aT0=;
        b=ij3yPSNX1wd20IXiID4GgfeD+SgdOMf1i5oTy8UPEWT7YzOFu7aeXXR/jPwonPX91t
         97C3wOA3ZHA/XfQlUNeY675FlfZO6OGuappDviMlJwhz+t4YYsh4IoshfkqcVQn92UhY
         6RFJvc1pQDgNsbP0AIQJ9VHYJ5xRXcCHUhVzARW7XrIUnl2nHedXO5YAS98xnQU1//iJ
         6F0fysz2RgGF0ZnyWPIvVnTUhzQT9IjCd8LCfwH+Mkh+L7LcoUli2nsNhwFzjMcGs4Ey
         OmTXZv9jUOqPhV9ImV1l64Ar0EXiWwiPJEjYOHOLG+Fq0KTu5y9nSlVOIPFGqCuiLSsq
         6m3w==
X-Gm-Message-State: AJIora8GlTJeSf2dUSfC6zmLVNrNRKAGd2lYLc7dqubJS/O9yri+2S9K
        SLpTa0sWI29sXc/Du+DmPJyS/A==
X-Google-Smtp-Source: AGRyM1vjptCyMsRK+r5nQ88atcmuTZzVwHzYBPlZ5LOI0pPBwgX9pQfW0YqZywwiLMPLC19yT7Ul9A==
X-Received: by 2002:ac2:4214:0:b0:481:6399:eaae with SMTP id y20-20020ac24214000000b004816399eaaemr13527825lfh.634.1657017709261;
        Tue, 05 Jul 2022 03:41:49 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id q24-20020a056512211800b0047f615b5cbfsm5619814lfr.211.2022.07.05.03.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 03:41:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     robh+dt@kernel.org, chanho61.park@samsung.com,
        krzysztof.kozlowski+dt@linaro.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        jaewon02.kim@samsung.com, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com,
        semen.protsenko@linaro.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 5/5] arm64: dts: exynosautov9: add usi device tree nodes
Date:   Tue,  5 Jul 2022 12:41:40 +0200
Message-Id: <165701769258.78614.12814330323247269626.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220701015226.32781-6-chanho61.park@samsung.com>
References: <20220701015226.32781-1-chanho61.park@samsung.com> <CGME20220701015451epcas2p48a8bb3d084368cb7e31f7fafdf1bf157@epcas2p4.samsung.com> <20220701015226.32781-6-chanho61.park@samsung.com>
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

On Fri, 1 Jul 2022 10:52:26 +0900, Chanho Park wrote:
> Universal Serial Interface (USI) supports three types of serial interface
> such as Universal Asynchronous Receiver and Transmitter (UART), Serial
> Peripheral Interface (SPI), and Inter-Integrated Circuit (I2C).
> Each protocols can be working independently and configured as one of
> those using external configuration inputs.
> Exynos Auto v9 SoC support 12 USIs. When a USI uses two pins such as i2c
> and 3 wire uarts(RX/TX only), we can use remain two pins as i2c mode.
> So, we can define one USI node that includes serial/spi and hsi2c.
> usi_i2c nodes can be used only for i2c mode.
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: exynosautov9: add usi device tree nodes
      https://git.kernel.org/krzk/linux/c/1ba1fd7d775dbccf43951671a7331c561408e72b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
