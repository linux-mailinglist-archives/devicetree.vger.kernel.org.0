Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78E8469927C
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:59:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjBPK7i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:59:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjBPK7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:59:37 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65EFC30B04
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:59:29 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id n2so1019693pgb.2
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wUwtxTNrGxdg9BYsoTpYW1OupabW0YeM169NaiVjmL4=;
        b=gclcawT1st6EiwSqGAnIkgbaoTQmWUFxODnJlpPrHqBwEas8neXbswcWc4IMPZNlba
         uEPJguMOBFHlRQtqM3t9xjLbbapn5naV29bODLtWgbFFNtXijhme93FoJflfeXclEIT1
         WR+8gPiYt9xNNSpb4zF5ziZ0GP9QxnT/WBMTpBEZU5yGMYe5KgMLkJklQ3iN7rvLNgT8
         xJUZemi4pufnNBBlL8FzuAqlYEktXW7fvA+NtF8x+HvrNSkNVmqcVrKAB7YWFwIPFXjY
         9VMJrtx4JVT9GC90boj1FJLEoO8LmZnb28avOiuH99/Rop+dLqLnrHItPFeDfIIadrJp
         D3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wUwtxTNrGxdg9BYsoTpYW1OupabW0YeM169NaiVjmL4=;
        b=4parPFHwYz6sKmQet7Q+CDAsVi7vc+4PSmHCaJoFf+DVTIcA4iY/P07tsTjgbDTwKW
         1uH+slaQAnvls8PbmBG87kjGK378p+2A9nUZtrBherrdwDty+vrIAigw1oYvzt8SX/y7
         SIjN1SET23d0aC7u0tDwYhatO5EHvXH5Yfp3vqufqegfmUuiLTEqNuZW9AS4dD7AOSvT
         czoVU7ev8VtXMEmRxZsYkdrhTK5WGfXsC4gWSSR6WI7CBHHJNw5uAig7lryBvmMbZ4mP
         hzGStQgmFVgzNvyglaWocTiM0h1XoiDOEC+hHehY9w0/wDRTTwk1HUZF3VtDzdhV+ykS
         gWmw==
X-Gm-Message-State: AO0yUKVmb+1EJZa39/sKw/LrEHVHOAbMCTZhdG1rC5lotXPDwIjpEHbb
        0CvIiilvJr64jrOjRRi31OLAMYAj/LwzJkQHqXIgHA==
X-Google-Smtp-Source: AK7set9TBhxKZy2kQoKauQhNJYoNrdjcISmxAqqPLdN9X3hfahISDWjjgxuL5aVg/UEu7YkqH+r7vQqRiVvBPBZmAY4=
X-Received: by 2002:a63:3dc4:0:b0:4ce:e113:5e32 with SMTP id
 k187-20020a633dc4000000b004cee1135e32mr788869pga.10.1676545168884; Thu, 16
 Feb 2023 02:59:28 -0800 (PST)
MIME-Version: 1.0
References: <20230214161211.306462-1-robert.marko@sartura.hr>
 <20230214161211.306462-2-robert.marko@sartura.hr> <c55a17fb-3c49-6e7e-f22e-95917daf97c0@linaro.org>
In-Reply-To: <c55a17fb-3c49-6e7e-f22e-95917daf97c0@linaro.org>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Thu, 16 Feb 2023 11:59:17 +0100
Message-ID: <CA+HBbNHTGX1BBhQuOSfwo=j-+dY9KgDpYn4Ty9m0fU5aiMV-Zw@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: dts: qcom: ipq4018-ap120c-ac: align GPIO hog
 with DT schema
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 16, 2023 at 11:48 AM Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 14.02.2023 17:12, Robert Marko wrote:
> > Align USB power GPIO hog node to DT schema.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> Unless you submitted a separate patch for this, I only see
> hog being allowed in 845 TLMM.

No, cause there is a gpio-hog schema in dtschema and I did not
even look into the pinctrl bindings and dtbs_check is not throwing
a warning.

I dont really see a point further allowing it in pinctrl bindings.

Regards,
Robert
>
> Konrad
> >  arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> > index 38efd45433da5..cd2a32d0d5548 100644
> > --- a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> > +++ b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> > @@ -76,7 +76,7 @@ mux_cs {
> >               };
> >       };
> >
> > -     usb-power {
> > +     usb-power-hog {
> >               line-name = "USB-power";
> >               gpios = <1 GPIO_ACTIVE_HIGH>;
> >               gpio-hog;



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
