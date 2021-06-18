Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A84E3AD1C3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 20:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234859AbhFRSHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 14:07:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234836AbhFRSHj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 14:07:39 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 323F4C061574
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 11:05:29 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id t40so11435191oiw.8
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 11:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Bvi78Zd6GX5YNAaG4s+yD+PlQBH4Eh2/pAFrHeVBYwE=;
        b=rwkgdvp2zu3lwuD16xmbOWHlWG0T4d4FOoL89lDC6sJFsCtulCKW7uOtAvz0dLQvm+
         Kr3VjcAgj4/M2m5vIcWvkm1KuNBvqHEbGBR6ug/PQ50U17CMmSBhMoaQZ9hoZcH1ACL7
         /LVvNjVwBsxJvMQLCOx4kwPqMzsWw2fnmWzRNCKRvW2+5ktm51i9OdlKA1WAjETnxg1i
         HJxIwfJ3r5WHmW/7JuTs5CkwwsMqT76ZXOv2EcvHxRe/e08DFY+TzTkcjj+UnD962eHA
         y3ZjUKSyhURO4m2TTmU3/cq+bT+rRLxY3nEE9kcs8luSrtMaxckLiTlynqsbSWmk/8n9
         AP1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Bvi78Zd6GX5YNAaG4s+yD+PlQBH4Eh2/pAFrHeVBYwE=;
        b=rfeg+zCPeGC2nZ2TVCJ7gWDNaP9KFoAwJ4QLCDRSKzXgZdtraCyIV31qVxCAl1BD0h
         ajjYQxMjB2qtZeMhbFJklFx+kj983fyetPRXKzWVaVJFUmE4818SrBohIwf3eAXDnyLA
         FTFBkgYGo623S9B1iCV2pEoi3h52VDDNT4rjVKxmvEOSebnI14yAh3pIs8YWRT4Hm6B3
         2kGzsUBktiOHY3KqJHhvfa66rOviy0kPiHVKm0PYhkQr74ASIYXMNVSxeND+zBkDxZOR
         JqZlLMEDr/27YPA+UKGwKvv3+izV6w5JE9Th/9VxwiHdkc5slmvYA6NJoqHbBk/nE/FE
         va4A==
X-Gm-Message-State: AOAM531ZrvoTy3A8tELuycXhG0v/UzqP8tybalMqbgutUuxjeRzqSBZJ
        wWyXXx/huDUCbJYwQZK5SsZ3Mg==
X-Google-Smtp-Source: ABdhPJx+O4Ohn0bpzaetfkCQuSnoTyUvmWksMW+IFQbMW6razIYtFu3GUhWCCyYQclDceASykllM6Q==
X-Received: by 2002:aca:c453:: with SMTP id u80mr7903458oif.93.1624039528569;
        Fri, 18 Jun 2021 11:05:28 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x2sm1936180oog.10.2021.06.18.11.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 11:05:28 -0700 (PDT)
Date:   Fri, 18 Jun 2021 13:05:26 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: regulator: qcom,rpmh-regulator: Add
 compatible for SA8155p-adp board pmic
Message-ID: <YMzgZqCdqM3Gn4c4@builder.lan>
References: <20210617051712.345372-1-bhupesh.sharma@linaro.org>
 <20210617051712.345372-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210617051712.345372-3-bhupesh.sharma@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 17 Jun 00:17 CDT 2021, Bhupesh Sharma wrote:

> Add compatible string for pmm8155au pmic found on
> the SA8155p-adp board.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Cc: Mark Brown <broonie@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> index 3546c6a966a3..34de38377aa6 100644
> --- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> @@ -62,6 +62,7 @@ properties:
>        - qcom,pm8350c-rpmh-regulators
>        - qcom,pm8998-rpmh-regulators
>        - qcom,pmi8998-rpmh-regulators
> +      - qcom,pmm8155au-rpmh-regulators
>        - qcom,pmr735a-rpmh-regulators
>        - qcom,pmx55-rpmh-regulators
>  
> -- 
> 2.31.1
> 
