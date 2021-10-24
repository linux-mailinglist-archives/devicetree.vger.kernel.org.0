Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1787A438AE6
	for <lists+devicetree@lfdr.de>; Sun, 24 Oct 2021 19:18:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbhJXRU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 13:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbhJXRUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 13:20:50 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 089E3C061764
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 10:18:29 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id z5-20020a9d4685000000b005537cbe6e5aso4884944ote.1
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 10:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=txYKi9sgwISGvkox90OFDx/dPf5o5p1m4EHLibrC6+k=;
        b=ZDCjyQlmH0bbjBg7qQi8eYVRacNzNE0nhdwwXmQI9nlfP5gkvUud0QBvF6hJNZQAmk
         rTH5aeE/zHNnW6BSorJstcL70XqNZJk5YPvkOpbTC3wIstcE6YJc2ql7fRfV4Qn5JFfn
         CHlpQ+f3ZRA/Q3+up7i2KAt5kzTS1G5fL+fMXbxYj86+Po7VULRXuC1iYrkqrbfeHhEI
         5uUjjDVMzPA/IyPcxe0onwBA1KCAWxGMrRSMaG9Rk45Kf9LiUphExyLkA8Y9CM4RAU4T
         h1i9SQME97rejf6s5ZqFBQ5PmQU6LF8SnIt3wxXM1ZjwgMEgccXjIFy+sxZEwASrsKlq
         CsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=txYKi9sgwISGvkox90OFDx/dPf5o5p1m4EHLibrC6+k=;
        b=UQF84EllVleYCYCLDHm6efr8pg8rU2mKdXGXbAMSgScZZzoFcIc5e9E7rdJaHCVGmb
         iNxkA+DpATKia7JGv6dSYFfMcGlu/NVyj8XFChH4WLwsI/LRKcPmjhalueYUI19iMPPI
         nN6CfkgTPrdk7eRMmNgCApEGw1zyRYi9pbiNpsElaOElg2a91/LJdweLsB9iW5GC94qr
         gWy9Ti/q56sQNZVX6Vt/f7vZmcfWqdMOWjXS7Vp6Il0RZbGZcQLymtTWrIcxheWPysv/
         KvB+TstljgBVRwljgNmczSHCiTw/rPx06sCpfA7cVI6LL1B8adi/To+qjcoD1q4fCecX
         jMnw==
X-Gm-Message-State: AOAM532J6x3+qtGHC5jq7bctCikTB6dZ7J2aiIUKq1xePs5SNV1fJhcF
        59El4wkfhZr07geDZdGTQni5wQ==
X-Google-Smtp-Source: ABdhPJyKfIy2F8ho6YM7INUo13hIYxiGaLLiSVqWfYHIs/FsTe87/gJYANKESAyc4MeOG4J5JQSxRg==
X-Received: by 2002:a05:6830:2a8c:: with SMTP id s12mr9977544otu.322.1635095908314;
        Sun, 24 Oct 2021 10:18:28 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x18sm2513000oov.13.2021.10.24.10.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Oct 2021 10:18:27 -0700 (PDT)
Date:   Sun, 24 Oct 2021 12:18:25 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        herbert@gondor.apana.org.au, davem@davemloft.net,
        Thara Gopinath <thara.gopinath@linaro.org>
Subject: Re: [PATCH 1/2] crypto: qce: Add 'sm8150-qce' compatible string check
Message-ID: <YXWVYZlCpkSRb7xv@builder.lan>
References: <20211013165823.88123-1-bhupesh.sharma@linaro.org>
 <20211013165823.88123-2-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211013165823.88123-2-bhupesh.sharma@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 13 Oct 11:58 CDT 2021, Bhupesh Sharma wrote:

> Add 'sm8150-qce' compatible string check in qce crypto
> driver as we add support for sm8150 crypto device in the
> device-tree in the subsequent patch.
> 
> Cc: Thara Gopinath <thara.gopinath@linaro.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  drivers/crypto/qce/core.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
> index 4c55eceb4e7f..ecbe9f7c6c0a 100644
> --- a/drivers/crypto/qce/core.c
> +++ b/drivers/crypto/qce/core.c
> @@ -306,6 +306,7 @@ static int qce_crypto_remove(struct platform_device *pdev)
>  static const struct of_device_id qce_crypto_of_match[] = {
>  	{ .compatible = "qcom,ipq6018-qce", },
>  	{ .compatible = "qcom,sdm845-qce", },
> +	{ .compatible = "qcom,sm8150-qce", },
>  	{ .compatible = "qcom,sm8250-qce", },

When I look at linux-next I see qce_crypto_of_match defined as:

static const struct of_device_id qce_crypto_of_match[] = {
	{ .compatible = "qcom,crypto-v5.1", },
	{ .compatible = "qcom,crypto-v5.4", },
	{}
};

Can you please help me understand what I'm doing wrong?

Thanks,
Bjorn
