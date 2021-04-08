Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CB25357ACB
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 05:36:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbhDHDhD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 23:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhDHDhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 23:37:02 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45247C061761
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 20:36:52 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso915285ott.13
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 20:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yJTU/Z+PnDbgFFgVF4fAJhLxH5fhoQOgRYvwhpbWDz8=;
        b=FpR+17gjUdKS48jBejq4SHMH6FQUevScnkk1bgg+cgE07hnE8WL50sdoJs45sZQF8F
         m77qZaqqM53Zm6CYCIYUhl6nZbKgWGkm3ClOx4xAtTzUROPwdvhiAdNqiamTDxB/E6b/
         G2MTvfgvvQKbX8GQnRO1jlykuNWyTcn1R8RWxKuHEKq9I5CKVNo+R1ciJ+OoH6toMt5A
         j96WPVOzqKLLYahcO3MZOxH526oeQuEimAdhkFnerKfEJtV8m750sozpLaJRtlJLn1Mg
         MmPXJnnXqSsUeNrfhnd0Z64s3XF8vJzLR/0M8/r5rRoLOLx3sa/b8ISo/osT5SXHpqsQ
         E7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yJTU/Z+PnDbgFFgVF4fAJhLxH5fhoQOgRYvwhpbWDz8=;
        b=A5emXlOB2mZqQB6aerZ8rT30b1NEgTa70ARNDLHr7cM8fqrME9kygnv+zDuoxQraUZ
         CJrfUuo3pljQt4EQTdRdoNJD+BXoBuaHlTJFpPG6xZY8rqnHGkElPFHvBG3Ua3ESytxA
         ALr3SOL7U34dHiZqFh308Eh9nD/212nZ5nTQZYhRPNvhQ87pFY1nbMSvlvkobHLfR/jI
         QXvFW0+6OVKhazB9nIb336BGsKJaMnXq0uVAS8Xp6wJDw0Grh63dcqTypDtu064EWC6t
         KYCRbLhLzU2mcRiLMhNtT0DhIhF5sUW1ZXUhOzjzQZKPdYSaMFjvgv403P5IoyRrRb51
         2AZQ==
X-Gm-Message-State: AOAM530Vb6Ivi8GYG/wQRMwOWEQHD1IrINL8KpzcO+fGzCh/J3qsrawi
        kb76ptEGb4wm1u1U8THwVuGq3A==
X-Google-Smtp-Source: ABdhPJwyUdHWr7zVWnsoiDRmGgeCsLG6MjPuXi9sktFOA2A7IFPidzUINuEyqGRIaNsukzSo2ykf3Q==
X-Received: by 2002:a9d:458e:: with SMTP id x14mr5937154ote.231.1617853011513;
        Wed, 07 Apr 2021 20:36:51 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id g9sm5362575otk.6.2021.04.07.20.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 20:36:51 -0700 (PDT)
Date:   Wed, 7 Apr 2021 22:36:49 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Guru Das Srinagesh <gurus@codeaurora.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom-pmic-gpio: Add pm8008
 support
Message-ID: <20210408033649.GN904837@yoga>
References: <1568107824b071265b5fc3a195a1d91089ad617a.1617834404.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1568107824b071265b5fc3a195a1d91089ad617a.1617834404.git.gurus@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 07 Apr 17:34 CDT 2021, Guru Das Srinagesh wrote:

> Add support for the PM8008 GPIO support to the Qualcomm PMIC GPIO
> binding.
> 
> Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt
> index 70e119b..1818481 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt
> @@ -36,6 +36,7 @@ PMIC's from Qualcomm.
>  		    "qcom,pm6150-gpio"
>  		    "qcom,pm6150l-gpio"
>  		    "qcom,pmx55-gpio"
> +		    "qcom,pm8008-gpio"

Please keep these sorted alphabetically (i.e. '8' < 'x')

With that

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

>  
>  		    And must contain either "qcom,spmi-gpio" or "qcom,ssbi-gpio"
>  		    if the device is on an spmi bus or an ssbi bus respectively
> @@ -125,6 +126,7 @@ to specify in a pin configuration subnode:
>  		    gpio1-gpio12 for pm6150l
>  		    gpio1-gpio11 for pmx55 (holes on gpio3, gpio7, gpio10
>  					    and gpio11)
> +		    gpio1-gpio2 for pm8008
>  
>  - function:
>  	Usage: required
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
