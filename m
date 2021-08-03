Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E135E3DF881
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 01:30:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233670AbhHCXaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 19:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232171AbhHCXaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 19:30:52 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B996BC061764
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 16:30:40 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id e13-20020a056830200db02904f06fa2790cso82639otp.1
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 16:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZYjWA4Yy8yni7nAey7btenmGHZpQImUmJ+PCgx2CI6c=;
        b=bVYqJBCLY4efufEFB2E8p9Y6SUVjXZJaUScEShKt71dFXvF7/GZLLCOoh1YUZ2k2P+
         2RWIgKAzqdxMQsihrYyt+2QmR8q5Ui+rwuLSYU2wraL6QlAngaIsgnmwaXYgeOCarDRZ
         ouC6nTYVuegkgQOV1yZypVmuVQOTNAYAgMA2B/91Gy+u+M82wNqKtiGVrSrszDm3IpVE
         +InjYjyz7H7gwpvngvFN0PCQV3Yh0Xl4p7l7GkDx95PeH//fwHd6s09MFiLD6l4Hh4re
         4WikR9UJukc/dH3luRoatBtut+jwCPdWb0pCANiGsQRph00h+rUNmY6Tt/TByXuUAp5b
         TIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZYjWA4Yy8yni7nAey7btenmGHZpQImUmJ+PCgx2CI6c=;
        b=qNXyNJq7Pri38VYTQAkhp0wRri47mUOYiYfM0Z3XDGYENYJG7Hqb71xjcLO3y18tQr
         aa8MrggooEO9O7qG9Yz60sjDe3GkEcPXtVPibK9S6aO7rQfrKVleHju0ds4iFYNnaYqH
         wFOCF6MLlkX4R4aZMp3dMXGi14Ut6+nrJMY0jAa+CnYIk/wdOMOYHVApZOfBhV36Jn+3
         iN4C5X1YNG0nXZi+x3TBjnJy12eqfcNvyewKUln5sVgMAATKeoz7DPZifNDvORMNL61d
         8Gk6lDZKo7XQBvhHFGbElLfIkTp0d8RpoSNamh/n0oo54uuv6iOW8e1Dne75uqvL7dIz
         4q4w==
X-Gm-Message-State: AOAM530gvYZZLU280iANVtFsgTG1+NiD9tDUoVH6DZ3IKiXUJ1iGlIjC
        eaA9QPJ3cj81CbhDIfLpFK29NBjo8O7EfQ==
X-Google-Smtp-Source: ABdhPJwMSHS5ss5KuHh+AzQJx+Ub//W7Wr3UaFgd7uxnMp+T0mzLzx/6ihujqjc0PYHJaQOfW46LHw==
X-Received: by 2002:a05:6830:150e:: with SMTP id k14mr17217030otp.351.1628033440036;
        Tue, 03 Aug 2021 16:30:40 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id n1sm102746otk.34.2021.08.03.16.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 16:30:39 -0700 (PDT)
Date:   Tue, 3 Aug 2021 18:30:37 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pinctrl: pmic-mpp: Add missing dt-bindings mpp
 function defs
Message-ID: <YQnRnUsrRfNh+WbB@builder.lan>
References: <20210225213605.117201-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210225213605.117201-1-konrad.dybcio@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 25 Feb 15:36 CST 2021, Konrad Dybcio wrote:

> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> 
> The pinctrl-spmi-mpp driver supports setting more mpp functions
> than the ones defined in the dt-bindings header, specifically,
> digital, analog and sink.
> 
> To follow the current way of specifying the function config
> in Device-Tree, add the missing three definitions in the
> appropriate dt-bindings header as:
> GPIO_MPP_FUNC_{DIGITAL,ANALOG,SINK}.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

I noticed that this has not been picked up yet.

As changes to these files typically goes through the respective
maintainer's tree I think it would be good if you pick up the acks and
resend them.

Also patch 1 and 2 has no real relationship, and per above request would
be picked by two different maintainers, so please post them separately
instead.

PS. I merged the Tone dts using the strings instead of the defines
(which I still prefer over using these defines).

Regards,
Bjorn

> ---
>  include/dt-bindings/pinctrl/qcom,pmic-mpp.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/dt-bindings/pinctrl/qcom,pmic-mpp.h b/include/dt-bindings/pinctrl/qcom,pmic-mpp.h
> index 32e66ee7e830..3cdca7ee1b3f 100644
> --- a/include/dt-bindings/pinctrl/qcom,pmic-mpp.h
> +++ b/include/dt-bindings/pinctrl/qcom,pmic-mpp.h
> @@ -98,6 +98,9 @@
>  /* To be used with "function" */
>  #define PMIC_MPP_FUNC_NORMAL		"normal"
>  #define PMIC_MPP_FUNC_PAIRED		"paired"
> +#define PMIC_MPP_FUNC_DIGITAL		"digital"
> +#define PMIC_MPP_FUNC_ANALOG		"analog"
> +#define PMIC_MPP_FUNC_SINK		"sink"
>  #define PMIC_MPP_FUNC_DTEST1		"dtest1"
>  #define PMIC_MPP_FUNC_DTEST2		"dtest2"
>  #define PMIC_MPP_FUNC_DTEST3		"dtest3"
> -- 
> 2.30.1
> 
