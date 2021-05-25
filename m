Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D56A390ACB
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 22:56:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233327AbhEYU5w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 16:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232173AbhEYU5v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 16:57:51 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27DF2C061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 13:56:20 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id b15-20020a17090a550fb029015dad75163dso13904655pji.0
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 13:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=91aOLjLOV4EvSQjlx7WDHxBtcvj99jQ/NNVeSBz/LR8=;
        b=SD6SE/S44SruFRZLV/S/Bz9AlF/4DqqOZ6559WXOx8wJNzifYZ6vFNIT8eK5kSUyJI
         9HM6eFv0RxXbU63236c+idQuQsQU0l2JfXnrmfpvNoDvC+zaK27O8WZ2BC+E8+1fiXX5
         f6dLjJsW3VS9pkr0LZ/UIW2poRMA7f+QxDuh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=91aOLjLOV4EvSQjlx7WDHxBtcvj99jQ/NNVeSBz/LR8=;
        b=rULZdJSZWZ1k3AyviWbShQFqbNCAP1dtQlKpAFQmLn+VcPZEqVQm7lstCc8yvUDH9V
         FdvGQrPQvmeMIqm7c+9dV4kGodemHm5zwpZPYqJFAgmnkLmrCJm4j8zWOH3I8nyjYa0D
         CnCLu63gUL1+SmJZioq6KYVkePXDIGEs9oGB29GnhzhuLbGljTEuJd9HT5M0DOPcVt8j
         ivI32mzlLCe1Os7wdu24JIWyyHgsiWre7Khvg79nOePC8rN0k37gvrrt3FaWsi13RcKG
         heZplL3NzUa0FWU8F9RwPfBK2u3+lDNcU4btGjhLXFlJ/x260rXgcTS5UG6Ir9Z64P5w
         fhkw==
X-Gm-Message-State: AOAM533yBiPasgw2Iz1xUtOnPnU6OCjkznJ6r9H39aYDNmKCihCjU72Y
        Gm5N/Y3IQpsnLcVrecs6eO3gIQ==
X-Google-Smtp-Source: ABdhPJxfZZ00b35rksF0AdJnfrSx7yvhNI3vqnFAhoUBVlmc6AM5IYHREtdk/eqhBudxNVGsLhduJA==
X-Received: by 2002:a17:902:edc6:b029:ef:8d62:db4e with SMTP id q6-20020a170902edc6b02900ef8d62db4emr32176561plk.7.1621976179728;
        Tue, 25 May 2021 13:56:19 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:ab0:bbc9:a71:2916])
        by smtp.gmail.com with UTF8SMTPSA id g15sm13618771pfv.127.2021.05.25.13.56.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 13:56:19 -0700 (PDT)
Date:   Tue, 25 May 2021 13:56:17 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V5 06/11] arm64: dts: qcom: pmr735a: Correct the GPIO node
Message-ID: <YK1kcVj9iyekNnrj@google.com>
References: <1621937466-1502-1-git-send-email-skakit@codeaurora.org>
 <1621937466-1502-7-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1621937466-1502-7-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 25, 2021 at 03:41:01PM +0530, satya priya wrote:
> Add gpio ranges and correct the compatible to add
> "qcom,spmi-gpio" as this pmic is on spmi bus.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
> Changes in V5:
>  - This is split from patch [5/11] and added newly in V5.

actually it's a split from patch [5/8], right?

https://patchwork.kernel.org/project/linux-arm-msm/patch/1621318822-29332-6-git-send-email-skakit@codeaurora.org/

>  arch/arm64/boot/dts/qcom/pmr735a.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmr735a.dtsi b/arch/arm64/boot/dts/qcom/pmr735a.dtsi
> index b0a7cd6c0..b4b6ba24 100644
> --- a/arch/arm64/boot/dts/qcom/pmr735a.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmr735a.dtsi
> @@ -21,9 +21,10 @@
>  		};
>  
>  		pmr735a_gpios: gpio@8800 {
> -			compatible = "qcom,pmr735a-gpio";
> +			compatible = "qcom,pmr735a-gpio", "qcom,spmi-gpio";
>  			reg = <0x8800>;
>  			gpio-controller;
> +			gpio-ranges = <&pmr735a_gpios 0 0 4>;
>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
