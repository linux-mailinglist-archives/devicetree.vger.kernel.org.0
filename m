Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7F142B751A
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 04:58:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725792AbgKRD5y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 22:57:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726989AbgKRD5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 22:57:54 -0500
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A1ECC061A4F
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 19:57:52 -0800 (PST)
Received: by mail-oi1-x242.google.com with SMTP id m13so717193oih.8
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 19:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hkDeDVPm8z3EEtXMYErIWAIVmmPC1Ustb1AIjufsLc0=;
        b=wFoI1MdRD5qXEw9klmnXnEr5A5oE1AZidmWSZsCcbu6NDwrIUF8mwmItUnRy/YtLz/
         VmKl2Ez3rutkqcvMMEK+kHmeRoAzZmQBlLnCyZAM/NvcR3tYpTNA27xmDQ+kc4+RUmf+
         nujIzRvHKDk4ruhDUWPkxJ724BuUfFBTiQv5iMWdr1DFIKXBJLPXJZwww6fAu5tIau0v
         wLxq7ceE2NdGb5tIKMt1kr8wJQJNzp1h+eed3qF9QXvjFnfILguS7pFo/pkN1T9J3R8H
         +zwUUNX6tCHnJj1hUKBl/SFYNZ9Hw1bPTNhGOwpmYeLjuj44CO+ck0mTaxoklucJnxhn
         tgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hkDeDVPm8z3EEtXMYErIWAIVmmPC1Ustb1AIjufsLc0=;
        b=Lledqi8REIkNJ2sEHVUU34wPT7X0QD4fUD8Q1eRDgqgGPaW7WUWwZsl02Po6Tjd97h
         UKMXr5vt6MUiXkqMAjS09t12cXHDmw14RRaubP1QxmsIaze7Lz40gRKW2A6LywY8p12F
         n50iP5yH0WUb5qx9Zi7hma8IOxiM5lIHFpTcVRiT+8dFUkIYjDpdnH3Vvautx/SwzK3x
         2CwzrXs+oX06vwLbCnSiN26jQZ12AkUQBuRDu+Nuqn3uQOPskRFSSOMFecoM7+3QCW2B
         DGdj4V1J/4jwcCQ2v9koS4Mt+5saXKX/Q6cuGj1yvP6pyaHrwOGtB3Qji9GOkOqD2FGM
         GAqw==
X-Gm-Message-State: AOAM530OBOywSArgiXMh525hO03tr8MDkfPkqrlrcKTRY7saO8sQC+U4
        Y2hlW0hnX0m0rtJT7p3dmiYC82RABBpfiA==
X-Google-Smtp-Source: ABdhPJwLmLk02pk40nH7Brt4vanivaBwUWCxNW1iVUgWOy150NbSyLeuVbLBhM4ywuL4y+NA1uewew==
X-Received: by 2002:aca:4a0d:: with SMTP id x13mr1595258oia.155.1605671871907;
        Tue, 17 Nov 2020 19:57:51 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w6sm6868012otj.12.2020.11.17.19.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 19:57:51 -0800 (PST)
Date:   Tue, 17 Nov 2020 21:57:49 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Thara Gopinath <thara.gopinath@linaro.org>
Cc:     agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, robh+dt@kernel.org, sboyd@kernel.org,
        mturquette@baylibre.com, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-binding:clock: Add entry for crypto engine RPMH
 clock resource
Message-ID: <20201118035749.GA8532@builder.lan>
References: <20201117134714.3456446-1-thara.gopinath@linaro.org>
 <20201117134714.3456446-2-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201117134714.3456446-2-thara.gopinath@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 17 Nov 07:47 CST 2020, Thara Gopinath wrote:

> Add clock id forc CE clock resource which is required to bring up the
> crypto engine on sdm845.
> 
> Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>

$subject should have bindings in plural to match other changes and a
space after the ':'

Apart from that, things looks good.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  include/dt-bindings/clock/qcom,rpmh.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/clock/qcom,rpmh.h b/include/dt-bindings/clock/qcom,rpmh.h
> index 2e6c54e65455..30111c8f7fe9 100644
> --- a/include/dt-bindings/clock/qcom,rpmh.h
> +++ b/include/dt-bindings/clock/qcom,rpmh.h
> @@ -21,5 +21,6 @@
>  #define RPMH_IPA_CLK				12
>  #define RPMH_LN_BB_CLK1				13
>  #define RPMH_LN_BB_CLK1_A			14
> +#define RPMH_CE_CLK				15
>  
>  #endif
> -- 
> 2.25.1
> 
