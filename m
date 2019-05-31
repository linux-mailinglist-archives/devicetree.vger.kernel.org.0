Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C4FC9306F4
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 05:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726548AbfEaDYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 23:24:11 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:33377 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726487AbfEaDYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 23:24:10 -0400
Received: by mail-pg1-f196.google.com with SMTP id h17so3220095pgv.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 20:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Y0WMcpWfoXbnuMiOdOcy4f4+mdeXgK7Hsp1gRkSwmjI=;
        b=shygk1EyQfcMXGh963h1m75rbQl//nbJkYNuSkZIN9eHEnqkOPNfpMxY7xEIJhi1jT
         Iu1k+ZB/8NLCHx+0bgWxMwOHQPQi7AUg3JcScD4qsPF+vRh31tZl9RgXox4mSa8paq41
         /5VBucDtOkXbg+n//LsBjLXGwBa6+CTvvgyhutw3hX/nUEdopWsZ8LEWT/1IrJyIH8Mv
         WD4YjL//KgX5SMH6i0ENRY1ZPlojG0GAN10VEx8QAGRebHQ6j873cLx6tT8N4eg6zFNd
         hrPsH3Kr4cfeh6lyRB90AoFKazWLYFegSuqatjsKwZ0EO1n8VjbQOMh2t6ctrytK+Vu7
         RTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Y0WMcpWfoXbnuMiOdOcy4f4+mdeXgK7Hsp1gRkSwmjI=;
        b=FLYuEjlvoKYKmRKg+XmS3EZ6WhC1A+j9nfPNmOh9NNVCYs9sgk6TlgB7e7r9UNYkrJ
         MGLdNh0g6w2MSCOEmYKtVBcVIuKfK6092C8MpYI6dYhJeBh3SbJqW6zYSVUW/fskNBMd
         Eq6CVTg36F5rwk8PSc2ctyh9s9RZR5iIrMXnLhIjYvyrbFPEWopXAmKnEONT/guWtq5j
         L207sOsFavCud6p+6HqtQK49OOQyB1UlC7uyDpa5Z95qd/I8fGWM4WD7C5kIpYA88AMH
         oyDFXrEBaOHSf9R3hAH96yQ5KVlPPhMY/a4ju3jR13RHtoH6XXQF1qigbGB44Y0BR4Jo
         28Wg==
X-Gm-Message-State: APjAAAVdeIC8XrVKV7DqekJnYKklpmJ2N8xNyJE8bunxPRhkI/kFgmBJ
        2hfOUQiWYlRWrwS1tN6d1GvN
X-Google-Smtp-Source: APXvYqy234vuH9P3R1wJOZtHjpQSL9DPwJjmp2FbbRFLPm8wCMxrM6uNPF1nuywg4K99t7ajF1hGdg==
X-Received: by 2002:a17:90a:62cb:: with SMTP id k11mr6556683pjs.26.1559273049926;
        Thu, 30 May 2019 20:24:09 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
        by smtp.gmail.com with ESMTPSA id s66sm3864501pgs.87.2019.05.30.20.24.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 May 2019 20:24:08 -0700 (PDT)
Date:   Fri, 31 May 2019 08:54:02 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Jianqun Xu <jay.xu@rock-chips.com>
Cc:     heiko@sntech.de, mark.rutland@arm.com, robh+dt@kernel.org,
        zhangzj@rock-chips.com, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/1] arm64: dts: rockchip: add core dtsi file for
 RK3399Pro SoCs
Message-ID: <20190531032402.GA9641@Mani-XPS-13-9360>
References: <20190529074752.19388-1-jay.xu@rock-chips.com>
 <20190530000848.28106-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190530000848.28106-1-jay.xu@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 30, 2019 at 08:08:48AM +0800, Jianqun Xu wrote:
> This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
> include rk3399.dtsi. Also enable pciei0/pcie_phy for AP to
> talk to NPU part inside SoC.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> changes since v2:
> - only enable pcie0 and pcie_phy nodes, thanks for Heiko and manivannan
> 
> changes since v1:
> - remove dfi and dmc
> 
>  arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 22 +++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> new file mode 100644
> index 000000000000..bb5ebf6608b9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> +
> +#include "rk3399.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rk3399pro";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie0 {
> +	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;

No pinctrl config for ep-gpio? Other than that, it looks good to me.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani
> +	status = "okay";
> +};
> -- 
> 2.17.1
> 
> 
> 
