Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA2BC3548FE
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 00:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233158AbhDEWwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 18:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbhDEWwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 18:52:32 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A92EAC061756
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 15:52:25 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so12820085ote.6
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 15:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=k5GMqhkUGovABW/6dLiczI0yDUQVdhGyMGEk3hXdqkk=;
        b=R8wU+6ucoSTOj00LOlpy2CLoMcmwoNKe6I5pY4T3QpClT4arSyT4c9J/2fQv8DZCYS
         RbWxahXX9VVPsJt9/1Knnc9YrGR16U8IInaY9vk+MCmyBc8/WllxqaMXJ33VoZK4Og0G
         tJZEWyaalpjGVXoNLeX4DNCVWFqQmsYE/M2IFdPaauFA1t4YoqeSj5xhrKjMGy+N1bcQ
         XkFZPZgIWWrkCP2UYXQDv4Z8rmi2a5VqN+BQ8JekLgi5QDJV7Fh8OuR6BNpONy9ceRa7
         siwU4v522PHOiXVlDAUCl90jzWfuiN4La4xvOZfWvdKch6nr/KdffEwermEHpxa+OMZo
         DIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=k5GMqhkUGovABW/6dLiczI0yDUQVdhGyMGEk3hXdqkk=;
        b=KY8hAZuon/FkdqGmHQLoHY8AeiOGqm48VF48dpqtRN+dv1BRwSeRCWcMM6SlKUtLFQ
         V/ycqhi34FTvgyYnlDLmOIAgRgTaRIV5+Tn1JyaXiWYddrP5ycQcI371DPQE8mtw/pDO
         uvxnjz4ZAfE7RsuKwf4RD/2AgQ1dQAaKbN6dM6MGj+BSt6gwoAGIaKre71jdSzRLoF3O
         9wWYTY1x7MmrZ1p51xWF+42kNMbMM+zu9LcEI9GDxrn0xTzhpcDejUUF42+ty9w9tiE/
         5XuZprAnVToszbe/GcgTxytXxJapHWh0iJ7RkrN+AFrFf8UmJx5IgBw773DlQmUwer12
         yWjw==
X-Gm-Message-State: AOAM530zm4MnFNsEoOgCcxl1fkNYHkwvr6G1fL5Ljd/wAk/ec3j6Ali3
        /UG5nTcxp0t5p4nfA5hfc0KfL6ri/kX3lQ==
X-Google-Smtp-Source: ABdhPJw6GcbXUZaKVe2HBQSQJU7vnMkj3H9OR8XCdVx7cDpd8YbrSKNTmm0K1io0+sgwhCkfJ3pg+w==
X-Received: by 2002:a05:6830:204e:: with SMTP id f14mr24755972otp.38.1617663144987;
        Mon, 05 Apr 2021 15:52:24 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 24sm3312099oij.58.2021.04.05.15.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 15:52:24 -0700 (PDT)
Date:   Mon, 5 Apr 2021 17:52:22 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Petr Vorel <petr.vorel@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ricardo Ribalda <ribalda@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8994: Reserve gpio ranges
Message-ID: <20210405225222.GD904837@yoga>
References: <20210405200259.23525-1-petr.vorel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210405200259.23525-1-petr.vorel@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 05 Apr 15:02 CDT 2021, Petr Vorel wrote:

> Reserve pins 0-3 and 85-88 as these aren't meant to be accessible
> from the application CPUs. Fix similar to 9134586715e3.
> 
> Fixes: 3edfb7bd76bd ("gpiolib: Show correct direction from the beginning")
> 
> Signed-off-by: Petr Vorel <petr.vorel@gmail.com>
> ---
> Hi,
> 
> tested on latest qcom/for-next.
> 
> Simple testing with /sys/class/gpio/export showed that 85-88.
> 3 disables UART. I expect 0-2 are also reserved as on other msm8998.
> 

Are you saying that once you export these gpios the uart stops working?

We use gpio-reserved-ranges to denote GPIOs that are owned by TZ, so
touching their registers causes the device to reboot. And per the
gpiolib patch you reference, this would happen as we register the
gpiochip.

It sounds instead like what you want is to make sure that these pins are
considered busy, muxing in the uart (i.e define a state for uart).

Regards,
Bjorn

> for i in $(seq 0 146); do echo $i > /sys/class/gpio/export; done
> 
> I expect it's just angler specific, thus I haven't added it to msm8994.dtsi
> (otherwise Konrad would have fixed it).
> 
> Kind regards,
> Petr
> 
>  arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts b/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts
> index baa55643b40f..0dc94101d5de 100644
> --- a/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /* Copyright (c) 2015, Huawei Inc. All rights reserved.
>   * Copyright (c) 2016, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2021 Petr Vorel <petr.vorel@gmail.com>
>   */
>  
>  /dts-v1/;
> @@ -32,3 +33,7 @@ serial@f991e000 {
>  		};
>  	};
>  };
> +
> +&tlmm {
> +	gpio-reserved-ranges = <0 4>, <85 4>;
> +};
> -- 
> 2.30.2
> 
