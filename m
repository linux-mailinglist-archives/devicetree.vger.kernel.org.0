Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37BBA390AC5
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 22:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233420AbhEYUzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 16:55:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233401AbhEYUzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 16:55:07 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 811D3C061756
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 13:53:37 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso2432825pjx.1
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 13:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tIAv9q4qLMF9mMN+ph7ydFzOpO0QgW0WRe87Hw6QYDQ=;
        b=hkAlWTTJk4/FJ/yKAHYsGNz0qU64nirtMh9NWBLf0lT0/dc+l6icLZoNqPDeYodsqf
         8y/GvAm4J6WytmJay2Tq/QUGw4FBlUjt3LAjbF4u+rUxsz0ZwN8xLPIgsrfDjTgzE/Gs
         Map/nJp8UibwrjhII2/vp73zt0TklL9KYX+V4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tIAv9q4qLMF9mMN+ph7ydFzOpO0QgW0WRe87Hw6QYDQ=;
        b=mxc0CLDoIOor7wro+/1cenaLlE5n1Slh0gwVRmBuxTqgU8hCAE2t5k1etpcoofZpOK
         u82GGWNcn1a3Ir6jMYfOEPEgV8OoIRNuuUpbvvmnYFJbFUWM1uHTb6jzeF0CfaVDPwJ7
         2CknQeGCKuIBtBuIbHNdGUMIEzw5GZkiAViwm4AIDYYObhS/JyUuaeZBE68u+U7sARNv
         5K4Z+J4/vdPffpHoqGz7MnBGHt7UcJmjBJxIG25qvPk01uD/Q05grpYgEDaa7TrMf235
         +90w7xh8zyFT/OLL3fGTR/srCFp5fCbS3mJucEhxyBl+B+vOfQpG9Uf7me0Kg6Uur1mf
         1IIw==
X-Gm-Message-State: AOAM5318B4c7qCFIT6i2snH0M3ARU+pk7pcGx2gDyC2WL6bO+N6DoOuf
        iH7ilJdf6oPsAdNqkadZnBVPAA==
X-Google-Smtp-Source: ABdhPJxa3klkCfxmqKIpzVxFM+qftyX2CphZ0FS1Hzri9Xnq0gJD9IThjTpIMEkzc6oYQZzgO3ARYA==
X-Received: by 2002:a17:90b:19c2:: with SMTP id nm2mr258043pjb.18.1621976017018;
        Tue, 25 May 2021 13:53:37 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:ab0:bbc9:a71:2916])
        by smtp.gmail.com with UTF8SMTPSA id p19sm11980116pgi.59.2021.05.25.13.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 13:53:36 -0700 (PDT)
Date:   Tue, 25 May 2021 13:53:35 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V5 04/11] arm64: dts: qcom: pm8350c: Correct the GPIO node
Message-ID: <YK1jz+h39OIZRH5F@google.com>
References: <1621937466-1502-1-git-send-email-skakit@codeaurora.org>
 <1621937466-1502-5-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1621937466-1502-5-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 25, 2021 at 03:40:59PM +0530, satya priya wrote:
> Add gpio ranges and correct the compatible to add
> "qcom,spmi-gpio" as this pmic is on spmi bus.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
> Changes in V5:
>  - This is split from patch [3/11] and added newly in V5.

isn't the split from patch [4/8]?

https://patchwork.kernel.org/project/linux-arm-msm/patch/1621318822-29332-5-git-send-email-skakit@codeaurora.org/

>  arch/arm64/boot/dts/qcom/pm8350c.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8350c.dtsi b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
> index f926508..e1b75ae 100644
> --- a/arch/arm64/boot/dts/qcom/pm8350c.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
> @@ -21,9 +21,10 @@
>  		};
>  
>  		pm8350c_gpios: gpio@8800 {
> -			compatible = "qcom,pm8350c-gpio";
> +			compatible = "qcom,pm8350c-gpio", "qcom,spmi-gpio";
>  			reg = <0x8800>;
>  			gpio-controller;
> +			gpio-ranges = <&pm8350c_gpios 0 0 9>;
>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
