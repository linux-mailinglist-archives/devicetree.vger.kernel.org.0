Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 704124CF7D6
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 10:51:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234169AbiCGJvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 04:51:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239643AbiCGJuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 04:50:00 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B00AB70F7D
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 01:43:35 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r10so22243477wrp.3
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 01:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ugg4XGWVUXpbeAl2y1u2+LRB3knUhhhT929Udmcfnxw=;
        b=exKdO2J+hIZRUdYN7OrGtFmqY+dgHS3xWv51ANASwLF8TJTAMnj8jWVw4qgA5v59/1
         zNCirwKKJCmHzZBZWDraq096zx3q40zAilZAK7rDItkZwjePeBZcEBPboCBfhfeQW6Xx
         e0Z90SvPJ1z+KxpqTs/ftmb1+0D0MkFhmvmRvpGitu6vvaDc5nd+Gs34qjE/kkNmbn0W
         su0Rd0u3ETvPQ9iutbin2uJHIJvFmXABc32o6XDtEEtiG4WU85DZcGKDxi4GvAN8YPGx
         UXxfgS+TJjH6g6M+JiZLxZz8yN7WAlIAEiF5hgMdZirOxpbOWwezp1WhfdFMPIS6Rspe
         dxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ugg4XGWVUXpbeAl2y1u2+LRB3knUhhhT929Udmcfnxw=;
        b=tMFVOe8ehJnxnrrzzz9I21mAmcKOgyZ9ORBC13N/qjDcc/nsNrUZ2pqMS3P1AF+iNl
         q2qv/3N+3lZfVjqtJ3rFyEVqI+7W4OK9a3MejqeiNRTcJc8DceM2Tmtt3n4txLG32Yzs
         +zD8Fd/tbO05aF32P1BeHJtgPcectn1B+gsuLbMJLRINPz4RGbzRZilRWuPNU1f724jx
         ox0CPKzMzqDoWYWtX9gPF/okGQum4ey01QnHt0ONyR1DV2N5KmkMBdVLfBjVYOF2VNrv
         w5ye3KZsGAtzxA9JcRUdZFcRq81dSNPMTWVwuTYcyfb58snzonps/pHyDDFscditn6hv
         u14Q==
X-Gm-Message-State: AOAM530C8bPDQCY17Vg9fLVZjtbTegEdYe+wSJnG2Ep8jlw+w+0QVpHK
        NTk/bXKkWFeEa1LerZYJveJV0w==
X-Google-Smtp-Source: ABdhPJxpSSMI9U5vy143F1/C37KcqeEO0zVmayvf+I6JKymMnOxargGVQm1psOEOhIGu3cuIa6qEHw==
X-Received: by 2002:a05:6000:18a4:b0:1f0:5f19:152c with SMTP id b4-20020a05600018a400b001f05f19152cmr7649534wri.414.1646646212304;
        Mon, 07 Mar 2022 01:43:32 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id s8-20020adfc548000000b001f07639a704sm8087577wrf.7.2022.03.07.01.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:43:31 -0800 (PST)
Date:   Mon, 7 Mar 2022 09:43:29 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: mfd: maxim,max77802: convert to
 dtschema
Message-ID: <YiXTwfxILy+V4OVI@google.com>
References: <20220215075344.31421-1-krzysztof.kozlowski@canonical.com>
 <20220215075344.31421-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215075344.31421-3-krzysztof.kozlowski@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Feb 2022, Krzysztof Kozlowski wrote:

> Convert the MFD part of Maxim MAX77802 PMIC to DT schema format.  The
> example DTS was copied from existing DTS (exynos5800-peach-pi.dts), so
> keep the license as GPL-2.0-only.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
>  .../devicetree/bindings/mfd/max77802.txt      |  25 ---
>  .../bindings/mfd/maxim,max77802.yaml          | 194 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 195 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max77802.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77802.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
