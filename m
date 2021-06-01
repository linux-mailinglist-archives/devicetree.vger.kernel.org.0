Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6522397651
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:15:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234228AbhFAPRb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:17:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234275AbhFAPRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:17:30 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B46AC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:15:48 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id m18so8479085wmq.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=NHydh3/ncsVeDXTAdKoz81qBNS+Ux9OeRAZ7MP0jsJw=;
        b=PdTPy6jQNfzwzWFynDMkSAvAzEWVeKtZ47edSlenJqHlyRW7HanJO4/vy5P11qevkW
         crQKWvlquXLWDgK2ag5DFHwo4ciy0gHPt0w47UY+YXDVxxFa0SQPdoESs7a4KkG8muNK
         m2Dc1SbuPgVYUVBoG4uAXzcEre6VZ6CL1QrnpbXPv8hMlHRegb3Kn9akK6AV3IhVl+cl
         gMN9TSFKgOYK3EBJvDRcb3LKFrDlCa138qxxBV15RA+/v4t0GJTHO8dVH4K0ls1DuaH6
         B3Dybhs9WcMCFU1nTZNxRhNoi2gbeUfFYKMXH3R1GDsnF74pT8cgTxX8Jg28HdWwQuzI
         pKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=NHydh3/ncsVeDXTAdKoz81qBNS+Ux9OeRAZ7MP0jsJw=;
        b=DWbjLvs5sOKIiH+KcDwBGxiB4jcLWfvyBKdHe682aa2zrKWAh7aaYAUZcPMBHwTMib
         iFRNUOZZ3CtOid8SOaKW3C9dbIsKpzbVQHhEJBoAvZauAAH2rcBXAinedIkBLEBKCinY
         aKOM/T0OZGOqFk1ZlLrHsWQeel9Df+D2WgI4uR8VXUoRfzn6aBE2W4ePFmj0nD/S3vst
         gs+/O68NILtxcIgJTCgfSDV1uKgXof+fj1iez5kR47vD7uTJHuhV/gIiXfDCBAeaukkn
         s71/HS3i2sByt1obYgR1PD6PPUGFOA8nDKBizlKRhRtaYLcgUtmg7s53KA+UIM2os0xP
         PAsw==
X-Gm-Message-State: AOAM532Z/td/ZQ1PTxWRJKiuRAoVbHUnGYW4zEH1CPckhmteWWLEbeHB
        pMwcs9CFcveU0T1OuL5n/jtn3Q==
X-Google-Smtp-Source: ABdhPJxcZQ1D4L2hNpZsGsfckqmotsmM54FGHzV2CcZoiUggH6ogr02f/L/zJkFZL9zu6Iho0qR9zQ==
X-Received: by 2002:a7b:c006:: with SMTP id c6mr406714wmb.11.1622560546968;
        Tue, 01 Jun 2021 08:15:46 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id q3sm3467252wrz.71.2021.06.01.08.15.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:15:46 -0700 (PDT)
Date:   Tue, 1 Jun 2021 16:15:44 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Guru Das Srinagesh <gurus@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Mark Brown <broonie@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v4 2/3] dt-bindings: mfd: pm8008: Add bindings
Message-ID: <20210601151544.GR543307@dell>
References: <cover.1621965146.git.gurus@codeaurora.org>
 <ee714da21108a5183815ffd1233876dba4c253f5.1621965146.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ee714da21108a5183815ffd1233876dba4c253f5.1621965146.git.gurus@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 May 2021, Guru Das Srinagesh wrote:

> Add bindings for the Qualcomm Technologies, Inc. PM8008 MFD driver.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> ---
>  .../devicetree/bindings/mfd/qcom,pm8008.yaml       | 121 +++++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml

Fixed the *-by tag order and applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
