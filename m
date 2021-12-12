Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF92C471B6C
	for <lists+devicetree@lfdr.de>; Sun, 12 Dec 2021 16:42:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbhLLPmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Dec 2021 10:42:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbhLLPma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Dec 2021 10:42:30 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F760C061751
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 07:42:30 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d24so23249696wra.0
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 07:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Lujfg+VE7ePok80jVD7tcx9WEL0c+LbcmxkJot0elWs=;
        b=1JwTEOVZCNOU949xE9JHpGSvLn3XnhVJ3FLO7/3aha3x6t8oTxhK/TdjFNRJrEh5wi
         vwNMnjZ2um0kW5tNWt2h0FEi6T7SwJQMPrRnJoxdOji7rYpTh3LRwHibNJBJ5TxJqiRi
         BRzJqlO4DLWTWFQB+L4CC/ltaUhB5JPneJhlA5GmhbWGBL+kclO/1pBqsz/Z8KueGU6U
         M7vYgDoQ/XyvIi9nOjjwpTc/Jqwf8AruIwp8hx615htEUAYXFGKDuEtVqLPUhUZYPeyC
         YudycfqktT2sfpJgMsoPUNAQnz3xCKuqeepxpvtfzrmsfwo4so+zmZN2tKDxx0dBPXgu
         sMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Lujfg+VE7ePok80jVD7tcx9WEL0c+LbcmxkJot0elWs=;
        b=uDPtLvJ/oRURhsR4ZEjED7xQlz/eVFAkgJjyavruKc6iQr+cxS7hOK4lW196N+HzoT
         Tx4j+gmeKABdw+d4Asuz/4nE/IsaqZZ+eefCq5MxKtf5HWbI+5fs4UGZQP+jUta9a1QS
         2z4+uKYtA3SqzURfykxtBJdg3gSuSCyu/y+r7rw5ys1aIxHflwiWZesaq2/KW1RYFo6J
         5JHUWLsojyO1ubu+Mj2Nqto5rBwJhGV+vZHJGjNYdXlGdM6pwyYbdr84ACYu+zyDNu72
         7If6PT2sxi/IriF0n/V0ewJkFs5u6QUweZ6Jos1KFJUQCfqi+rrCgv4I+Hq9iPWsGBlR
         d+Xw==
X-Gm-Message-State: AOAM530oveZPmcAr8xvvFnGrDsGIS0+NXTswIazFGqNQke8tEEfVwHCH
        GGiu1phYRPyd3jfZlEjcCXMnog==
X-Google-Smtp-Source: ABdhPJxPgOn9Jf3ZC7b+JyQj+heW8Lu5oDkJAUYZE6ipH5Vvd/b3MpWg9938H1WFZBhlXsHICgmWJQ==
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr26431744wrs.207.1639323748729;
        Sun, 12 Dec 2021 07:42:28 -0800 (PST)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o9sm7918073wrs.4.2021.12.12.07.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Dec 2021 07:42:28 -0800 (PST)
Message-ID: <18f25dbf-3a8b-cda3-afad-abf7a7f42d8e@nexus-software.ie>
Date:   Sun, 12 Dec 2021 15:44:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Subject: Re: [PATCH] arm64: dts: qcom: ipq6018: Fix gpio-ranges property
Content-Language: en-US
To:     Baruch Siach <baruch@tkos.co.il>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Sricharan R <sricharan@codeaurora.org>
References: <8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2021 07:27, Baruch Siach wrote:
> There must be three parameters in gpio-ranges property. Fixes this not
> very helpful error message:
> 
>    OF: /soc/pinctrl@1000000: (null) = 3 found 3
> 
> Fixes: 1e8277854b49 ("arm64: dts: Add ipq6018 SoC and CP01 board support")
> Cc: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
> 
> The error message was improved in commit af3be70a321 ("of: Improve
> of_phandle_iterator_next() error message"), but there is evidently some
> more room for improvement. As I don't really understand the code, I
> added the commit author and the DT list to Cc.
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 6a22bb5f42f4..a717fc17523d 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -220,7 +220,7 @@ tlmm: pinctrl@1000000 {
>   			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
>   			gpio-controller;
>   			#gpio-cells = <2>;
> -			gpio-ranges = <&tlmm 0 80>;
> +			gpio-ranges = <&tlmm 0 0 80>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
>   
> 
Works for me

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
