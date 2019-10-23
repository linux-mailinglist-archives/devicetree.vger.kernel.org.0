Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84E2DE13D9
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2019 10:16:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390125AbfJWIQe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Oct 2019 04:16:34 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43122 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727574AbfJWIQe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Oct 2019 04:16:34 -0400
Received: by mail-wr1-f65.google.com with SMTP id c2so15748128wrr.10
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2019 01:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=WbxBtm15ehJ1RZCxqVQYmBoMODjzafh8sNAh0IrYMnM=;
        b=tMnxwFWOP+DcVkZ22BE7ijTUOqeQbAgS6s+w5MlY6cZt8IAg9346u14e+jpLXjfVoe
         nNV63+Mh1qSmiAemdLhj8f0NEj609/L9TyAGrHwSOuYs5EDiYOvxGmkfQ9N6jDM6CZTQ
         SmegHcsD4u1fUJq+6qYBIz2kRHFS80ufhexZYqJNXHSYRzKJqbn8I8sGb/ay52cVJni0
         dqLJINFUzFyfYiB/oWumJWK71rIDkuZ2owLwJZxbVygLMESk6Z+e4CHWID3cPgM/NQ4z
         kuTUsPhwyeiQnu1TGP36i6puPLJmPEiQbF11QZQpGsEDlUX6JQSNV6LIdy4tfP8Gv5kC
         JzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WbxBtm15ehJ1RZCxqVQYmBoMODjzafh8sNAh0IrYMnM=;
        b=qlhvH9QrO3ihgx6w2Q+za1q7xfeqKgeLQhGSoHYj2xiqrrH427N3k8jWZuOsO3ow+f
         IBcRpWMzDSznCjRbn9+km8/8I86oYLDVwN6XbC080Tp4vSzo4eRBttY81Zey4X1fCce0
         2vWZDU6InuslcgFkRb/JxRRNi5+xWrncVk6bsZye1fFzN+5fnTkdTuzBgZrEKZ4Y5Ilc
         TLC+M+lQ8+Byt+o7dEgug5lcU90dK15TOA5Hbu4p+OPxU94l08PU1JnrxzgsiAS9ybE7
         IrMulY5m8d0BLivO82SXNLNkM5s/0x6LsEzpCPdCW2ns6MYIstsZ7JyB4t0SI7VeHaZj
         GHiQ==
X-Gm-Message-State: APjAAAWme/DGGq0E6UoBf7UKe3TMrLU1F8agnaJ2ZQLUt/zkMjOHDiJX
        lTnGai9wGlFuvwahUe+2/P5ZgA==
X-Google-Smtp-Source: APXvYqyQLKTf56oSSBJJdMYaRgF+bUBUWCWlNytDptiBX3zCwn3VT/a7qS1uX2Zpp1qwQ1dd66prZQ==
X-Received: by 2002:a5d:4612:: with SMTP id t18mr6798024wrq.255.1571818592047;
        Wed, 23 Oct 2019 01:16:32 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
        by smtp.googlemail.com with ESMTPSA id 37sm32673981wrc.96.2019.10.23.01.16.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:16:31 -0700 (PDT)
Subject: Re: [PATCH 2/5] ARM: qcom_defconfig: add msm8974 interconnect support
To:     Brian Masney <masneyb@onstation.org>, agross@kernel.org,
        bjorn.andersson@linaro.org
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-3-masneyb@onstation.org>
From:   Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <0ec2aaa4-bd71-5e69-f8f0-6acbb032e7cb@linaro.org>
Date:   Wed, 23 Oct 2019 11:16:30 +0300
MIME-Version: 1.0
In-Reply-To: <20191013080804.10231-3-masneyb@onstation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Brian,

Thank you for working on this!

On 13.10.19 г. 11:08 ч., Brian Masney wrote:
> Add interconnect support for msm8974-based SoCs in order to support the
> GPU on this platform.
> 
> Signed-off-by: Brian Masney <masneyb@onstation.org>
> ---
>  arch/arm/configs/qcom_defconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
> index b6faf6f2ddb4..32fc8a24e5c7 100644
> --- a/arch/arm/configs/qcom_defconfig
> +++ b/arch/arm/configs/qcom_defconfig
> @@ -252,6 +252,9 @@ CONFIG_PHY_QCOM_IPQ806X_SATA=y
>  CONFIG_PHY_QCOM_USB_HS=y
>  CONFIG_PHY_QCOM_USB_HSIC=y
>  CONFIG_QCOM_QFPROM=y
> +CONFIG_INTERCONNECT=m

We want to change it from tristate to bool [1].

> +CONFIG_INTERCONNECT_QCOM=y
> +CONFIG_INTERCONNECT_QCOM_MSM8974=m
>  CONFIG_EXT2_FS=y
>  CONFIG_EXT2_FS_XATTR=y
>  CONFIG_EXT3_FS=y
> 

Otherwise looks good to me.

Thanks,
Georgi

[1]
https://lore.kernel.org/r/b789cce388dd1f2906492f307dea6780c398bc6a.1567065991.git.viresh.kumar@linaro.org
