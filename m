Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F78455EF4A
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbiF1UWF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232245AbiF1UVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:37 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F4BAE8B
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:32 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id l81so18744807oif.9
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6FamQGB9CD5dY+rNMN2KXZg8bPEzG8hfZukPK5OM8oE=;
        b=jGGCbx4lcSAgARVpp97pLkHzge2D+PqjTUCrv31cNsYclz07jjVtXiEpCXntnip7uC
         40ezDMWAYGtDGEkojRB+byXWtSJ0ufgvimKETa3abEWsePV7dt9NT5EI5xpjPqZdO/eM
         7cQ/y/c+l8RowWG2CnNNm+pprEJHFp4TFd+ECrCih9VPi5Gt/l1AJBiJ/fIvN081E++W
         vFK/WqrU3KcKx1KGxBdjOLI1Jeb8lkxoGG5v9EXm0L5HhOgcf4iU2ayuGQitecssndv0
         sTR/YeRhSfOGsVt/7+UpNZq2VEPOgBddbFwCS+SCROiuhDLllYBzbzYjVH2HLZPd7aIF
         MbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6FamQGB9CD5dY+rNMN2KXZg8bPEzG8hfZukPK5OM8oE=;
        b=Oq2Mq8q+JouYX+Xt6Y5TdMTJfqKLkbpmd+dGgQGf2uHUlomjmXHP45FshDGgFOseVH
         6BEnFXOiTJMGbifWT7EQWG5uQaRDZqmKahGFtPGQ8KdZYuu9BbT/qZ2bn1I3gz9UKyhB
         td/LPPoQjzFMWe52kV3wyHyz5yjHANYYs9AoEhgi8vVCkmhAhgxqHERYFQE5o1R91b/w
         h62LxAPucezCZkjuUfbwpmX/JYr6LHU2VTzzqcDB2AZAQL6O9xqUifOFHeAmBU1GesuM
         Nx4Sj2MDI/hhHrYZjbsb/pgpw9sC7ZDh4L3bvtaZoQoe7ozh5jHF9P1BlApSUHRgKby8
         2aTA==
X-Gm-Message-State: AJIora8W7umZujsMtfXxoiUChkjXnVUbesw/9q+FiUl61zYrCr5vFTNU
        Dw+YUaLiFqoZLqVGHyCnIUCjLA==
X-Google-Smtp-Source: AGRyM1t5AcsdLJuztGShNHBpJ7nQWZZlZTULXOarrtiGgxRCSZpFhRuiDuQgfbGayPzjOwyPku+9TA==
X-Received: by 2002:a05:6808:1385:b0:32f:729e:4869 with SMTP id c5-20020a056808138500b0032f729e4869mr942978oiw.5.1656447571474;
        Tue, 28 Jun 2022 13:19:31 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:30 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>, David Heidelberg <david@ixit.cz>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: (subset) [PATCH 4/4] ARM: dts: qcom: add missing gpio-ranges in PMIC GPIOs
Date:   Tue, 28 Jun 2022 15:19:02 -0500
Message-Id: <165644753308.10525.5331559742461486598.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508135932.132378-5-krzysztof.kozlowski@linaro.org>
References: <20220508135932.132378-1-krzysztof.kozlowski@linaro.org> <20220508135932.132378-5-krzysztof.kozlowski@linaro.org>
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

On Sun, 8 May 2022 15:59:32 +0200, Krzysztof Kozlowski wrote:
> The new Qualcomm PMIC GPIO bindings require gpio-ranges property:
> 
>   qcom-sdx55-telit-fn980-tlb.dtb: gpio@c000: 'gpio-ranges' is a required property
> 
> 

Applied, thanks!

[4/4] ARM: dts: qcom: add missing gpio-ranges in PMIC GPIOs
      commit: eea939a0da869e00f40e41182edbcd911ee11fd4

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
