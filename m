Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8917461A57
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 15:52:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241962AbhK2Ozv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 09:55:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245541AbhK2Oxv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 09:53:51 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA0EEC07E5C4
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 05:16:08 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id i8-20020a7bc948000000b0030db7b70b6bso16784775wml.1
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 05:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0E4fZVuvqOikcFLzjvJAIfmKIxDojH9AFXp6ET25+Bc=;
        b=fLfQ6tlxHG44dJsiockWybpP+XOqZy4RmScKii6/kKomjagt5ki5TuSx9Am7uS48JQ
         OJUAZ1CsFq7UPdF+W2o7z+GDKGV4R/6NTZFUKXG0GR5wMWUSMcWXcnJ4PecN3okNceA6
         6VSuqMGlf2/fCt5aIpp9A9Gp74RCjyYSxA0d7mzgd3cs2Arpt7DdnsQSbsJRfAS+EEyj
         uNALoZSjkgZpdZCmnbPUBZHpqKr53ishqCjttwI3KKRgnOZsYCbAfzyemQhxMna0q5el
         rvsuaGDFxp+4VomQazknympD2sKrx8/jyvBENgQhq/SIRQKCdp8sVuTi5d2NfNtc0P6B
         /FLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0E4fZVuvqOikcFLzjvJAIfmKIxDojH9AFXp6ET25+Bc=;
        b=CXvI0PEIp7PtfmuaTGSTUTUx0QDHpDvShYArgqJfXM9m+IMo6JNJBbMfijTWQ0XRlY
         eVuh1+HZX2wIt4oC7mcG2L5R4LwoP2ZTQRAE5zD7WppET4QhzrlK50WldgSzJp3pglnY
         D8F3eF2HpqMtzxpMcb/Tzka8r9D/lJ4m6XGIUcil+/vC19Kfi6gIF9ql7YHDXM7Fl8Y6
         U1uwj4UB5ZNldoMfd9GjlkceEChwJXSRoR9BWX5/uIrIbF0R+LuCL2gZubWkpRxLXAoj
         oiNEvZ2f9e20vjnfM0RG0U93KAPnm6qiXqKxms6Kf3aLLMxHNNXENhBgycFk4tKyGXa/
         PXBw==
X-Gm-Message-State: AOAM532rTyr8uO2ItazGFVM6/JR73HSF86AAQ24mDQqUm71U+pAZcO+S
        8w+nlQQjuUB4ZPkI/YZX0GozpQ==
X-Google-Smtp-Source: ABdhPJxQ98qCvaxlgCJ7tUcHkmFHkrHSq1X+nkV0tpFFhi10eCMnWBetnDGZrdKIJs6XWoYzDXcyKQ==
X-Received: by 2002:a05:600c:358a:: with SMTP id p10mr35615274wmq.180.1638191767208;
        Mon, 29 Nov 2021 05:16:07 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id w4sm14447200wrs.88.2021.11.29.05.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 05:16:06 -0800 (PST)
Date:   Mon, 29 Nov 2021 13:16:05 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: mfd: maxim,max77686: convert to
 dtschema
Message-ID: <YaTSlTCBL0dAFT3H@google.com>
References: <20211125074826.7947-1-krzysztof.kozlowski@canonical.com>
 <20211125074826.7947-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211125074826.7947-3-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Nov 2021, Krzysztof Kozlowski wrote:

> Convert the MFD part of Maxim MAX77686 PMIC to DT schema format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Rebased.
> 
> Changes since v1:
> 1. Add Rob's tag.
> 2. Correct title prefix.
> 3. Extend example with LDO22.
> ---
>  .../devicetree/bindings/mfd/max77686.txt      |  26 ----
>  .../bindings/mfd/maxim,max77686.yaml          | 132 ++++++++++++++++++
>  MAINTAINERS                                   |   1 -
>  3 files changed, 132 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max77686.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77686.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
