Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EEA9312EAB2
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2020 20:58:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728575AbgABT6J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jan 2020 14:58:09 -0500
Received: from mail-pl1-f193.google.com ([209.85.214.193]:44553 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728260AbgABT6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jan 2020 14:58:09 -0500
Received: by mail-pl1-f193.google.com with SMTP id az3so18190760plb.11
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2020 11:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=//zj6SbVl4l4Dy70+h80nhCy3QhRZVce+ij1LDk6fWU=;
        b=mShZz6nUhFXPyEo1K5ViUN6WbTJXV2K56ZHN7OIK01/63zdSt50PHxsOHSh4ofAHEw
         YwpZczPI8Pw8t29hmvO1YumXXRwTLV9kn6FE8iQ8BgS7pVkIsRr/kCzB7PCguX0x8AiZ
         OLJyIJOnAHIskWV0r/9znRQ45gl++mEAlIkUkCsLr2C+MTDCrr+Ct2L1IR5SiuAMVgIz
         qYU5quV0fKHK4frCf5hgRlAFImCjPFy8yJiOZ6+fgid5pWWJmJqdzvKCOOjlpdlUw7Ma
         bK6bZGlWTWauS61aM1nTnSbw6R8zPGih8yjTY56Ce5MInrB+NBrvh1g2ZbIYe1Rldw54
         /HbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=//zj6SbVl4l4Dy70+h80nhCy3QhRZVce+ij1LDk6fWU=;
        b=rEbEl83dwBFCTO9pAwD9fDGsXSLmh4KG8O1lAcE1oS20oKLEfJMO95jsRV3Rwcqk51
         Qq0BKvDJndEvlj0SqH+MXgjE5G2dbPY6n/sE7LKtIIdqmVlar1h4GMMfrMVHBb0cQzA4
         64tOjfKxavST9c1ZrJjNn1bZIUQ9HjO1LQVuqFqTW5v4JP53N+d6daFcv/GCDP2MB4Sp
         v6PuNX4nAZEwfJZw4GGLNqN+QH93Rz65y5AI1DaRZVaz/DQKuo+r2E954f6xLEhcBxBF
         +OHlfAwuEuyKOlW3afXzqa8otP1e4Xa3oCWJa48vuGa6qM606HPJgrY5tVFVOXEfnaZQ
         x0fg==
X-Gm-Message-State: APjAAAVIuY6+4ZKkLm360hjMrgJsKd0DAJAY3sZ8SgKDPdDkAQLc/agP
        bmXlNcQa29qBqycNfC39zJh9JQ==
X-Google-Smtp-Source: APXvYqwdxMXn05Qla4baD33J5OtsqHVuSY0QhHbQcUXhxugasbUiogtjvkASblvhYNf+o3NUIqXtZQ==
X-Received: by 2002:a17:90a:9bc3:: with SMTP id b3mr22055052pjw.76.1577995088582;
        Thu, 02 Jan 2020 11:58:08 -0800 (PST)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id j14sm59138415pgs.57.2020.01.02.11.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2020 11:58:07 -0800 (PST)
Date:   Thu, 2 Jan 2020 11:58:05 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Amit Kucheria <amit.kucheria@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        swboyd@chromium.org, sivaa@codeaurora.org,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 7/9] arm64: dts: sdm845: thermal: Add critical
 interrupt support
Message-ID: <20200102195805.GF988120@minitux>
References: <cover.1577976221.git.amit.kucheria@linaro.org>
 <a86be6121986d1c37b34f791532cd65ec13f1e00.1577976221.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a86be6121986d1c37b34f791532cd65ec13f1e00.1577976221.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 02 Jan 06:54 PST 2020, Amit Kucheria wrote:

> Register critical interrupts for each of the two tsens controllers
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> Link: https://lore.kernel.org/r/3686bd40c99692feb955e936b608b080e2cb1826.1568624011.git.amit.kucheria@linaro.org

I was under the impression that this series was already picked up, so I
merged the three dts patches last week (it's a nop until the driver is
updated anyways).

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index ddb1f23c936f..8986553cf2eb 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2950,8 +2950,9 @@
>  			reg = <0 0x0c263000 0 0x1ff>, /* TM */
>  			      <0 0x0c222000 0 0x1ff>; /* SROT */
>  			#qcom,sensors = <13>;
> -			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "uplow";
> +			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "uplow", "critical";
>  			#thermal-sensor-cells = <1>;
>  		};
>  
> @@ -2960,8 +2961,9 @@
>  			reg = <0 0x0c265000 0 0x1ff>, /* TM */
>  			      <0 0x0c223000 0 0x1ff>; /* SROT */
>  			#qcom,sensors = <8>;
> -			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "uplow";
> +			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 509 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "uplow", "critical";
>  			#thermal-sensor-cells = <1>;
>  		};
>  
> -- 
> 2.20.1
> 
