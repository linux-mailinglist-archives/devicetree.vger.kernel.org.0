Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27CC04B6CD7
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 13:59:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238025AbiBOM7x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 07:59:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238026AbiBOM7w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 07:59:52 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 735D380200
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 04:59:39 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id v12so32028623wrv.2
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 04:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=vgVdr55qs8iiMY1rMIglKTHpx/WkJBbTswO6JXL5f0E=;
        b=AL2Ijt1akTuY2Axq7/U0a8JApwjaCQMOc14gM49BL5Ohi1z1nupgWzMpSHAnyAsDaP
         VZ+rAVFRsPblaoCFTJzs92dXsMVR49gG2kbXC84FSAEOo5q/vWQVyIg70/0T8y65GRTx
         iN3/WQY9sc8LQNDxrJf3FzVEODqYumTSo1ff2xKSJ42Cq7WR9ueZnLoCthZgAmpND4iG
         rrlLPe9IA4VFgDXXQQ7UdauR2tdReHaWNY4MDhrqsRSoscm3sEwbqC3cjw9p0M0YYKO9
         QdD8+3eFrJA32eNmf07UoihsqpEUr/oXFLKwyug0ys8h3gP1fqvO7i9JMkxtOiDbJmnL
         fhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=vgVdr55qs8iiMY1rMIglKTHpx/WkJBbTswO6JXL5f0E=;
        b=s4FcZSSD9kbY/lN7bFOoRl656OLjywKnaFgMEXJY9hTiEw1VgSq//dy3GFLIMuyk7e
         V3qTee3z8DBhQETc2oTt1i4EsvCFTc0R4+67DOAIiqWZZlezSlDdgvru1JG3bMka3REX
         oqqqOsuLUmNE82vd3jjy/TgbVkFsOqsCheKvmXHABv023mi9MUv2cFsjZF1zl/khdm8k
         zM15NJqRc9YZH5ZA9hElHX95twedBIVuVcTENuZSnCVETIG3cqUgiP32bu7pijLCZP2+
         nxMjlzByXcgzGwVYopQNVkbSUPlCzTT7pvoqx0vByXeTMCEO+R83RNWT3VhbtxWh1DDx
         hyvQ==
X-Gm-Message-State: AOAM5306lfJa7+kGRvb9utouJsaUdkYumTCovRse910FJxYiyu164XIS
        szXk1n+qOhB9/IlVtmg0A9BQFA==
X-Google-Smtp-Source: ABdhPJz2N14OPH+RuT8qy2PgXqqyA9+52lT1MuLV3QbvF/pUZLCpW+TA6k6z+rkdC2Lx8SeboTlj9A==
X-Received: by 2002:adf:f241:: with SMTP id b1mr3109444wrp.444.1644929978059;
        Tue, 15 Feb 2022 04:59:38 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id s7sm3538160wro.104.2022.02.15.04.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 04:59:37 -0800 (PST)
Date:   Tue, 15 Feb 2022 12:59:35 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/15] mfd: qcom-spmi-pmic: Add pm8953 compatible
Message-ID: <Ygujt64b4PBBeBm1@google.com>
References: <20220112194118.178026-1-luca@z3ntu.xyz>
 <20220112194118.178026-5-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220112194118.178026-5-luca@z3ntu.xyz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jan 2022, Luca Weiss wrote:

> Document the compatible for pm8953 as found in msm8953.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
