Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A3E344F49D
	for <lists+devicetree@lfdr.de>; Sat, 13 Nov 2021 19:42:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235958AbhKMSpZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Nov 2021 13:45:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233656AbhKMSpZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Nov 2021 13:45:25 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6076C061200
        for <devicetree@vger.kernel.org>; Sat, 13 Nov 2021 10:42:32 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id o4so25001014oia.10
        for <devicetree@vger.kernel.org>; Sat, 13 Nov 2021 10:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QkrpAypr0OTjJ7opmeUn4VhkKZWdSv1cB+fyJgMkf5w=;
        b=WCPMm+i8ULb0yHdbEqnrVYTYM4jz2riuNptnwQ2+Xl3531POFp2CnU0ca4B3arM9Q3
         eUcF9I/HArOom66D2Mw27q03VzyNoZsAzf7KmSOBjE3EepLzPVwpX+XyC8v+kKAWoKC3
         5yEqIxsFU0eOIqIWicuCME8JTmq6AFAzRa8kKKN90dwGyMSy8AcGtUhYH4K1bB1XsClN
         gydBC/IjajX/AOZwj6CovpXp1OxAKZLPMBi3fzoldD/jteDoyUQ0+m+yQ04z+JQyKP/P
         R8Mv5CTL2SOkKBwLA9spoUppXncFcGwArs/KDuzTy5pbo+3hvs1PiX7EGUYFSi16nPyW
         PEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QkrpAypr0OTjJ7opmeUn4VhkKZWdSv1cB+fyJgMkf5w=;
        b=CZzCOSTvlotyIV760ZF2wOW4QcbHXKiaa+PBJLWtoBrLxJcGVHXeBdNg5x9TshWVJM
         JSB3JzBpGf3J4GmsuZ06Md+flPG8kPc9DnBdhCq4wtm4u2ZEUdpR2Xs6DXej0SCw6nZd
         kPMH7UtOX21OOqpBA9ohfn7KXLZpKVvr38EtBq2goD7+RkvYrcL/Am4uUkdGK4eaPnxt
         0Mp4GE6DnIZ1/ITRvdC2Pi5s2dThIEsvOxG/ddrVlL+lKGka/FuRQqe72cyfU4e88UBu
         d406AjyIg4WK2a4qyTMbRUxH5hemLNZJNdZ2KbwpMoEeS6TH6eBL3KDEJpnnE2OAgid6
         xYRQ==
X-Gm-Message-State: AOAM531awPELaBcybAxFEB6KzsRJ4w2/EoJkwoc2pvhz5LVoBv2Hri7p
        p6N84WL73RE0o4cQnrlzalI0HQ==
X-Google-Smtp-Source: ABdhPJyMjHWSTAouFYB0Z4fwvsZdxvGR6yb6S9JvA6wYXvmlgN6wcOykJ9AGGJoNqtWoIxIiCsk+cQ==
X-Received: by 2002:a05:6808:14c3:: with SMTP id f3mr15685920oiw.51.1636828952074;
        Sat, 13 Nov 2021 10:42:32 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id bn41sm1550547oib.18.2021.11.13.10.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Nov 2021 10:42:31 -0800 (PST)
Date:   Sat, 13 Nov 2021 12:42:26 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom,pmic-gpio: Add
 compatible for PM8019
Message-ID: <YZAHEhV8U5m1O6B1@builder.lan>
References: <20211112115342.17100-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211112115342.17100-1-konrad.dybcio@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 12 Nov 05:53 CST 2021, Konrad Dybcio wrote:

> Add pmic-gpio compatible string for pm8019 pmic.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
> Changes since v1:
> - Rebase, txt was converted into yaml in meantime
> 
>  Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> index 8952b4cc1262..55a46dec56b6 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> @@ -26,6 +26,7 @@ properties:
>            - qcom,pm8005-gpio
>            - qcom,pm8008-gpio
>            - qcom,pm8018-gpio
> +          - qcom,pm8019-gpio
>            - qcom,pm8038-gpio
>            - qcom,pm8058-gpio
>            - qcom,pm8150-gpio
> -- 
> 2.33.1
> 
