Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C30981CC9B
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 18:12:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726369AbfENQMK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 12:12:10 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:40657 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726565AbfENQMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 12:12:09 -0400
Received: by mail-lf1-f66.google.com with SMTP id h13so12327662lfc.7
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 09:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VRKGNL66M8j2AT9OiC1RlB4Es7/aJxkPRPt5O6vOtlg=;
        b=o6TS8yuApidzZ1bwkfSsXAB8SImlM5dAqBfylG5r4IVgEN32YgUgXZuQzQcuuTKZs6
         TavnBAT80oXExKaiXzFBVraWFIKMcfrtitoSQoiW9vqz/wCsXPsvLel3Ch9RaWEOp325
         /HtxfULraDJE75+nzFbf1DjJ5pZukdokBQLryWT7oh5QZ7lFP4pnzNo5ha5KAZNB+8Zp
         Z2zRVEvPke4pZo3CGLum35nA1ADeCbs51eSjh79t2/6157H1+72UiKSoN7IT6A9GiKex
         hAt51YGp57pss9izxE77ix8BQzPthfzhDvBzni+QncGpk73jooBsWE9uVd5U7WEm1ENm
         gM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VRKGNL66M8j2AT9OiC1RlB4Es7/aJxkPRPt5O6vOtlg=;
        b=n9BzLcCI4nNVAAdJRJNva3XdYSuQKv5EEyieliZ4OilmKjv/08IHB0I6svOdhwgIe5
         /mf5KhMbSaKrlXPfn3XE8mtU63dSe3hvckDQrQ+C8MkPeYLiVZX0S/kkVfuevDJGBKd8
         Mqn+KMOF4qZfTwBTf5gD/im8irRHF5PCj8ygFNiXvP3Cthp8DWAwcS5L+H2oK8qs1C9G
         D13PBq77SGwuB6LMuHM0h5xtVXJEg8cplUiX7rjD6bQa6WRcr9rYOaSr9W4HRSl8Vg8s
         EGNXNiagMfcMWdcM9abHxfOZ0i5JvS9qKxBK9lNEhzAOLtnPQylrg4ttoQ9xgwDioIKs
         o+SQ==
X-Gm-Message-State: APjAAAUWG/dwKeb0ITaz/LtGutUqF0HBWPWyTylOFbJR3+Ku6z5OIGiN
        hmVApjy498tuDJ0/+trgfcbUvw==
X-Google-Smtp-Source: APXvYqzbzp/EKEubtyb6iA3fc5DzuCJJpbX9oN2BwofSsWt8j+ekiji6hDa+6+io1nwe586CPdO0lQ==
X-Received: by 2002:ac2:55b5:: with SMTP id y21mr17621298lfg.84.1557850328057;
        Tue, 14 May 2019 09:12:08 -0700 (PDT)
Received: from centauri.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id r11sm2917170ljd.91.2019.05.14.09.12.06
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 14 May 2019 09:12:07 -0700 (PDT)
Date:   Tue, 14 May 2019 18:12:05 +0200
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Amit Kucheria <amit.kucheria@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, andy.gross@linaro.org,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCHv1 3/8] arm64: dts: qcom: msm8916: Add entry-method
 property for the idle-states node
Message-ID: <20190514161205.GB1824@centauri.ideon.se>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
 <030b5d9c6dc2e872466b7132e4fd65c473f9883f.1557486950.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <030b5d9c6dc2e872466b7132e4fd65c473f9883f.1557486950.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 10, 2019 at 04:59:41PM +0530, Amit Kucheria wrote:
> The idle-states binding documentation[1] mentions that the
> 'entry-method' property is required on 64-bit platforms and must be set
> to "psci".
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 0803ca8c02da..ded1052e5693 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -158,6 +158,8 @@
>  		};
>  
>  		idle-states {
> +			entry-method="psci";
> +

Please add a space before and after "=".

With that:
Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>

>  			CPU_SPC: spc {
>  				compatible = "arm,idle-state";
>  				arm,psci-suspend-param = <0x40000002>;
> -- 
> 2.17.1
> 
