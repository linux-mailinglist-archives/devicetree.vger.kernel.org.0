Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC1FB501F77
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 02:10:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348017AbiDOANJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 20:13:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235851AbiDOAMe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 20:12:34 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F754275E3
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 17:10:05 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id w127so7075578oig.10
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 17:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=6sga8ftndk8vtvx+W3R7gg8jxRC7DJXugsbes7nhBXQ=;
        b=l/OJaJEMJuIxkKbI41XC1yk4B5atKv9xuBaVDrSQnmUa6ApdnPZGbgsFNWWtl0Y32t
         2uhDHpzRAob1wqAGSp0LCZssCCEFpOJe5c2b7fe27oHplkIrQRJWfLIj7ZEUrS8Sq5p9
         sTOcFmiBXl5Y+uJx2arJt+cZEZAUuELFanK1o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=6sga8ftndk8vtvx+W3R7gg8jxRC7DJXugsbes7nhBXQ=;
        b=KT7mrU5NGdKuc3zncE3X83DS+hkPY9eVCiV/imY1J/tW4bflAJhYGqppk9GWQ2xcV5
         abQXjJMqRwr6dnhvK04uQ7QDyg0p9ScFQ9jmNbqGELb3X0NQGRv8QiG3+kffluxYU4vQ
         bDICjZqKsWS109qmLwz644+7aHjomtnaMaZhAVsfsD3f8AvRKe1056yjHfHfpCI0Pwmy
         dOFUrjSNJZhNSHg0Tdoz9Q5qDwYf2leYfp0WhP71VTV/mTiZVrN45xxxLN1Gi0unb6HJ
         WI/2BAdE7wOuSBry56BRJmUzfiDJyCiw6Qhgucx2CZxOeXVBF+j6z4Jo70uB9U9geWso
         LCiw==
X-Gm-Message-State: AOAM533qP5l1Jsth4kZs6IGEw0OrUt1zRBWKeaaSzqAC9we/L4bpoMew
        wlDegsdCkyAG1KPNhgby5aX1M1JOtnBg4VqBwDivqw==
X-Google-Smtp-Source: ABdhPJymbaf6NLHP66wW8lvpB5W/WVW2uTuj/EQkoXXOwQgytb/AicoR9wghg6OFqgUtOg1YyKgB2vugeV27/mYgqVE=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr515213oif.63.1649981404878; Thu, 14 Apr
 2022 17:10:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 14 Apr 2022 17:10:04 -0700
MIME-Version: 1.0
In-Reply-To: <1649939418-19861-5-git-send-email-quic_c_skakit@quicinc.com>
References: <1649939418-19861-1-git-send-email-quic_c_skakit@quicinc.com> <1649939418-19861-5-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 14 Apr 2022 17:10:04 -0700
Message-ID: <CAE-0n50HR6w-v3ub8HR_K2PsqqTTrVAaQa0pZ7QjY39WmkDyQQ@mail.gmail.com>
Subject: Re: [PATCH V10 4/9] mfd: pm8008: Add reset-gpios
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-04-14 05:30:13)
> diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
> index c472d7f..97a72da 100644
> --- a/drivers/mfd/qcom-pm8008.c
> +++ b/drivers/mfd/qcom-pm8008.c
> @@ -239,6 +241,13 @@ static int pm8008_probe(struct i2c_client *client)
>                         dev_err(chip->dev, "Failed to probe irq periphs: %d\n", rc);
>         }
>
> +       chip->reset_gpio = devm_gpiod_get(chip->dev, "reset", GPIOD_OUT_HIGH);
> +       if (IS_ERR(chip->reset_gpio)) {
> +               dev_err(chip->dev, "failed to acquire reset gpio\n");

The API looks to print debug messages. This print doesn't look required.

> +               return PTR_ERR(chip->reset_gpio);
> +       }
> +       gpiod_set_value(chip->reset_gpio, 1);

Does this do anything? Does this work just as well?

	reset_gpio = devm_gpiod_get(chip->dev, "reset", GPIOD_OUT_LOW);
	if (IS_ERR(reset_gpio))
		return PTR_ERR(reset_gpio);

Note that there's no point to store the reset gpio in the structure if
it won't be used outside of probe. This should work fine? I used
GPIOD_OUT_LOW to indicate that the reset should be returned to this
function deasserted, i.e. taking the PMIC out of reset.

> +
>         return devm_of_platform_populate(chip->dev);
