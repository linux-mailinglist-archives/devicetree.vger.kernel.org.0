Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D45F344AF1
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 17:18:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231589AbhCVQSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 12:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231344AbhCVQRv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 12:17:51 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 869F1C061762
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 09:17:50 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id h10so20030143edt.13
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 09:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AiPl5pUPZTQr5pITP8xS+7R+vsKTJAIeUGsmJUXOUM8=;
        b=drkd7YYD8A9I08BCKjeekcKOrjrZm/kJ3mGaGwuhEGQvvp8ztRhAC7BMcavdMGzyKd
         fbH2q/+t+eWv5Mc+gs0x46at7q+r7LCSCm5KZWJUc9RYVAv2U7JEPSAmpa8mYDW75sCL
         WAvNuR5r6e5Oysv0GL20/JLVN73bKnGNAkDatePsgsEJo8zEwxKVTHd9FhpmSsmj1zlI
         T2975XrirvwrXUqPP3eXvlrjA4ZECQrRzxvpFlnGDc1YhESBqWXqR7ugISabmIMCniW4
         iatgHqbfl50lN9ZX50p9tWv+fWjydG+T9NsMDr9wTlonji8pXYBq8h1y0dxq9nzuZMfo
         iPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AiPl5pUPZTQr5pITP8xS+7R+vsKTJAIeUGsmJUXOUM8=;
        b=WmM/8HoEfp0Ek7gFpk9zb/1EKHIGNJcS0HVEYuUX2/N2arZAniqY4LZ/7u2roFSNq7
         2ihviMyZ74IUElL5WaFY3k28/tGG+ITRLZnhP8l7IuCpcUQZSKTZrx5WLaCCrtskqWbK
         11Ey1aJibDYLnlvHyDXINoH6iyIDFY14sb10yGc/sbnWqDfP/+cMYcXoM+ZnoolG+a8Z
         vo8Jsch3v7NI2Z0wbi+6lcqISGrLyAvUmY5hMV1r9Mcne2ArUoTUus1D+8aJoE8fi46s
         3eV0T/nWD1QJc8ntufzrLE5jQFiE8HV/NZ+MPrzzXcUBE453b9Hm70QzKe+NxLCsdDmt
         cq1g==
X-Gm-Message-State: AOAM5334+5xs6wT0V3PYgtvA4rp5BPT3POdB0Xvsz/pZ4OEnR3nEndz6
        kcz89VkfNvC0VG2q1wBShUu4dA==
X-Google-Smtp-Source: ABdhPJzlqIlXd2lr5b+aZ/CbSlNKvZnTLq2jAivh/8csn0KWGeT+i23ECN89apHlZcQXI4vuQQeRoQ==
X-Received: by 2002:a50:ef0a:: with SMTP id m10mr305593eds.261.1616429869194;
        Mon, 22 Mar 2021 09:17:49 -0700 (PDT)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id h2sm9995456ejk.32.2021.03.22.09.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 09:17:48 -0700 (PDT)
Date:   Mon, 22 Mar 2021 16:17:46 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: leds: backlight: qcom-wled: Add PMI8994
 compatible
Message-ID: <20210322161746.xvdrjcp3g7jijq3b@maple.lan>
References: <20210228124106.135812-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210228124106.135812-1-konrad.dybcio@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Feb 28, 2021 at 01:41:04PM +0100, Konrad Dybcio wrote:
> Document the newly added PMI8994 compatible.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

(For Lee) Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.


> ---
>  Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> index 47938e372987..d839e75d9788 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> @@ -19,6 +19,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,pm8941-wled
> +      - qcom,pmi8994-wled
>        - qcom,pmi8998-wled
>        - qcom,pm660l-wled
>        - qcom,pm8150l-wled
> -- 
> 2.30.1
