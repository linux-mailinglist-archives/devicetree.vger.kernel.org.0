Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC96402E43
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 20:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345788AbhIGSR7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 14:17:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345777AbhIGSR7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 14:17:59 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62331C0613C1
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 11:16:52 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 8so4275pga.7
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 11:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MTKC20tO9zMCWTI8piOtIK2h9ol7uIIjMhJrYZXtkYg=;
        b=JP54FaieVXwvNpDq0XuDG07BQCdr2Dtael/Sn0U3W4F72gblOSgWKOsVQPfglUQAaR
         StOI2FGY99ADuiwTdcirDT+f0z6RhL7DTRVC6isDQEcfoj3yj9RU/kovpZIum8a+La0t
         Pz7XbBeLrdLb73e0g/FBjw0cAHp/L5prC+VWE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MTKC20tO9zMCWTI8piOtIK2h9ol7uIIjMhJrYZXtkYg=;
        b=Lipswg/eDoRD2/ixszYZlyPnkUtoLv4hvIKg3MagoY4zgJoCshQ/OstzqG4U4+TQyU
         cwdjUbbuw2Qnxqz4TRT76CLvP24gYEJueE2NYVvpq8xbrulQySojh331C+jMbYmfVoXE
         sa25qT5bYh0opsO5t73Fab0m62ymc/MPutLUNjtWB71vfiMXehx3R88L4xZppqWKSynl
         Zj8rvU/YKTcKA9qaDvxA1lF1aMqzLDyYb43jp5IluiUvPO+VnLhKoOHQybCVXrYi3sMA
         QhxCarv2/Jq6cGUcJg34GKM/U6xbufF/5sJMzy8cH1KANP0WOGvjfxbgk9K1MjX0JKkC
         TEdA==
X-Gm-Message-State: AOAM530qmySCfxz+YEVw/hU6KDUXcfxSfUJ3xdraZuBqVXDKyd76E8Si
        AYBaWj8jwr7SYKwflauJYt2idw==
X-Google-Smtp-Source: ABdhPJx9jtF/JxyCIZPs2rLwflSaCsmFbpbllqX2GRRW80zYBwd0FSUQ8BPYOPQvDaCV2DUIfScgUA==
X-Received: by 2002:a65:6a4b:: with SMTP id o11mr17543541pgu.278.1631038611904;
        Tue, 07 Sep 2021 11:16:51 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c6b2:7ae:474d:36f6])
        by smtp.gmail.com with UTF8SMTPSA id h4sm3704143pjc.28.2021.09.07.11.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 11:16:51 -0700 (PDT)
Date:   Tue, 7 Sep 2021 11:16:49 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        swboyd@chromium.org, kgunda@codeaurora.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: pm8350c: Add pwm support
Message-ID: <YTeskY7kXsdmvGPp@google.com>
References: <1630924867-4663-1-git-send-email-skakit@codeaurora.org>
 <1630924867-4663-4-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1630924867-4663-4-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 06, 2021 at 04:11:07PM +0530, satya priya wrote:
> Add pwm support for PM8350C pmic.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8350c.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8350c.dtsi b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
> index e1b75ae..ecdae55 100644
> --- a/arch/arm64/boot/dts/qcom/pm8350c.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
> @@ -29,6 +29,12 @@
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		pm8350c_pwm4: pwm {

What does the '4' represent, an internal channel number? It should
probably be omitted if the PM8350 only has a single output PWM
port.

> +			compatible = "qcom,pm8350c-pwm";
> +			#pwm-cells = <2>;
> +			status = "okay";

I don't think it should be enabled by default, there may be boards with
the PM8350C that don't use the PWM.
