Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92121262726
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 08:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726036AbgIIG3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 02:29:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725772AbgIIG3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 02:29:49 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE585C061573
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 23:29:48 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k18so1123792wmj.5
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 23:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=kTpw1wGO0FeGTusMwEJcgWxaFgxhMz0VC4CueeQTfjk=;
        b=AsUm+/dSzTrufZhXxmra4vzPb2Ak1BIZ4acU5842n2b4hDwuAgeBgKCrC1BM6gabru
         FEW+lPCjeUUkaZIrJSo1uKg9vawUQm5saMTXE0rVgOtG0gwlj9m3EYP9t1fEACPjXlgW
         CHFaQnLEUcb9jehh4KeKoKUOcefeJ4CNCPdBKMA4nTyauRN5DkBr/+ockXcvYNPgtdZZ
         V1vlLYWeZLkYdCF0M3vY6CWy0/7jJmzLNbBr/T8e4W1YpDgdGuMWg0s/qcS4ob5FJ8VB
         1Xvu0/dPw+HU89pLgZYTcrIQ+2dchSqq9BmxjyfP8X5pKKFuTh52b0PFABALDjOHEIgF
         4+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=kTpw1wGO0FeGTusMwEJcgWxaFgxhMz0VC4CueeQTfjk=;
        b=Np4auiYdNPOKpd8v9yqtQNB0ETxGBYt1xKLLPBTrssyPGDur3HbIy24hY6WnTUBTc5
         80WQnOaIrVrK71gls/kHc2y6PlAtslD93JXypr3DyPr3GoDuZZ6Y2KyxF3/7yqJ0lpLy
         Jkjc3Nk3X+ckd1tgiLwclHCI4i+4rOp6dRmfVLacZ/N7hAEmYdDe+QjBx7lME+QK43iL
         1XmWU3Ce3c8UGw4xj0KsCRBGByLHDlvo5ohmY6QaJUrIa9ZItNURiJ3t39loy6vu7tZT
         p/IA+DQMpJzbhH28vWVCTpYSvoKS6X/9AKRlis8j/o4wN7NtTUOFRFlSAuX4/L/scl0s
         jz6w==
X-Gm-Message-State: AOAM532embxHOJyrEoNg/ipAik446bGvlMAjJ/kouS3RBIBae/9foWay
        CRiKpEUXMhG75TClB8U0aQJE7w==
X-Google-Smtp-Source: ABdhPJxLhLAkdeSgZh2QIb6smIB1NhPOqFxd67AifJ8AzzH55lf7vSa91vXGOHqmkS1J9dbPHj+cmQ==
X-Received: by 2002:a1c:7918:: with SMTP id l24mr2019308wme.46.1599632987325;
        Tue, 08 Sep 2020 23:29:47 -0700 (PDT)
Received: from dell ([91.110.221.179])
        by smtp.gmail.com with ESMTPSA id v9sm2758984wrv.35.2020.09.08.23.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 23:29:46 -0700 (PDT)
Date:   Wed, 9 Sep 2020 07:29:45 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>,
        Robert Jones <rjones@gateworks.com>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com
Subject: Re: [PATCH] dt-bindings: mfd: Correct interrupt flags in examples
Message-ID: <20200909062945.GY4400@dell>
References: <20200908145900.4423-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200908145900.4423-1-krzk@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Sep 2020, Krzysztof Kozlowski wrote:

> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags, assuming the author of the code wanted some
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW => IRQ_TYPE_LEVEL_LOW
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/mfd/act8945a.txt          | 2 +-
>  Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml    | 3 ++-
>  Documentation/devicetree/bindings/mfd/rohm,bd70528-pmic.txt | 2 +-
>  3 files changed, 4 insertions(+), 3 deletions(-)

Looks good, but I'd like the author to review.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
