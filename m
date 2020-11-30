Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E50B2C7DF8
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 06:52:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725898AbgK3FwU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 00:52:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725860AbgK3FwT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 00:52:19 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B0EC0613CF
        for <devicetree@vger.kernel.org>; Sun, 29 Nov 2020 21:51:39 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id v3so1282232plz.13
        for <devicetree@vger.kernel.org>; Sun, 29 Nov 2020 21:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VF1nR4Irtua4P4B2q8Yu7gg1a2eShT2/9qXNk8KBf48=;
        b=y2Z5NrGEZ/bJ/tcy9yxkrPsfIMYSI4LugsXeuRYlFOZVO3hwFdej0yctcPwmH3xA6Y
         p+IC7/qROn7RmUGWDcpjyeJ6EzlKrAAF9ULQTmr7qfcmNHYW/OuExljb0mmuPlIJNm3O
         j+OIbe9PVAsnAn2brGiOz/ZW17Rm4sq9FEEt7cYRuxvvMj2MPWRNyh44hDELeGT/Qclf
         Wja61VzSVd2QzsaxZV8BJjaSoyUuOjzIsj2QIdCP9nqMJriUZZciALpq8HcfxJz15Asx
         zDyj1wv76kXBFX29lBBPDc8Y47Evyr9njBOzToUhFYSXH/CE94YyfELNnBCjMw7LK/61
         PS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VF1nR4Irtua4P4B2q8Yu7gg1a2eShT2/9qXNk8KBf48=;
        b=NLjlg5ZuiuW0gQxYz0uNzQN05dXUYcS5Vo/5deu7RTI76iX8eEt3/08Hn9gfMjAYve
         EYW4xD4HuSe5RMdgDgy+zDv7fwqkVgNJjziig5mniy8sx+UM2fKSOC8GBLZ5OWR28e8v
         RLYu/knMLrdZE8XbmvitzSu1+9CcSoULJ3wJtsnCo0mnAMXHtG/Ux18nYJo8zXU7EDBf
         pa0OJZ+MjygWyrkY88Uey9KaNNKGX2Qv3dYSr4+IDg9/8+6O3wEZ5RaD1FhjjGmduIN0
         9ubVVpwJiVYiEj/Gqe6C+zAd8kGL8g4gnxk9D1+GrcwMZmYcV/jEuI1dTp/IRqI8287C
         2jRA==
X-Gm-Message-State: AOAM532/Ylg2kUojIKsM/KBnR/yai4MtZgOZr5YQi5kkRycFKT5ultc5
        C5PIAbqvEBLhfOX0/0SkB5NIIw==
X-Google-Smtp-Source: ABdhPJylvX/2l5/8k0xumPDvVmfWxCjcN064m1wxUZBbH6LKPK8Vj+odc2OgPhpoMQuL0u6Rfy+hiQ==
X-Received: by 2002:a17:90a:384e:: with SMTP id l14mr25073941pjf.104.1606715498799;
        Sun, 29 Nov 2020 21:51:38 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id s15sm14645856pga.43.2020.11.29.21.51.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Nov 2020 21:51:38 -0800 (PST)
Date:   Mon, 30 Nov 2020 13:51:29 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: c630: Re-enable apps_smmu
Message-ID: <20201130055128.GA28578@dragon>
References: <20201124184414.380796-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201124184414.380796-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 24, 2020 at 12:44:14PM -0600, Bjorn Andersson wrote:
> Re-enable the apps_smmu now that the arm-smmu driver supports stream
> mapping handoff from firmware.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Acked-by: Shawn Guo <shawn.guo@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index d03ca3190746..f5b98845fa90 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -232,11 +232,6 @@ vreg_lvs2a_1p8: lvs2 {
>  	};
>  };
>  
> -&apps_smmu {
> -	/* TODO: Figure out how to survive booting with this enabled */
> -	status = "disabled";
> -};
> -
>  &cdsp_pas {
>  	firmware-name = "qcom/LENOVO/81JL/qccdsp850.mbn";
>  	status = "okay";
> -- 
> 2.29.2
> 
