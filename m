Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 668DB6A885E
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 19:13:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229700AbjCBSND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 13:13:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229966AbjCBSNC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 13:13:02 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02BFA144B9
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 10:12:59 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id t4so4417546ybg.11
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 10:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=my5Rp2ScgeNAadltfdN1BBBN3oTSxseZtW+z/F++nfw=;
        b=oyabO+gAFW3VSmK38stdm+0a/WuznOZ3QoMc07Ytap1Z8P3K4GsOtvxxNK53xjYzql
         AQh+82sTAKf62LArk+871wi0XFteu7SDfWBe1chBCPfGU5aCXR4WQ25FfOyYC+ZZymFX
         9fKbQilu2Y0TN2V9Td8jYa/+UKOYMpT2l/U96NRY2AIa7t7TtiD5v6YV4xGbypYE2m1z
         6LQhEoniFs7QLVpRoNoloJ+dnJ99IWpUd9NnXLclurIiP4kgRWbmzOv5NU6p3mran05C
         VhRHJlDYjkc+NNTNQD9JWO7Htts/q35K1byzbDkjaFdD9bKsuU1Jl5Fl4EoE01MRPAf4
         gEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=my5Rp2ScgeNAadltfdN1BBBN3oTSxseZtW+z/F++nfw=;
        b=6BQ1NfaKme07qv3FYhvJi8ErQZwwRH+Tsi7u2P1QBYzvOtxpZuVxoXEOGnGuECfP3C
         5cN9ULsPr4aDGVmfo/15WYhreIYx5JjlzXcZtShfVhzdPQqwP2oXCX0soCr46dB8Tkmb
         YkvRi76SMeMs0+i1KpVDKBAyTdlu1xCNDSq+2wPmbtl9RIoC8Ua3WgorlmGeD87/+QOf
         CtfKVCUTt5aikyZKls5RcN5zaggMeptJVETr2huTSbZVMiUqxfvtC7u47gzsWmFPoAqr
         bcghk3GYccQndGn+zWSRIr/RaEr1wNlbZSmH2V8Y5tuiflUhrIA1NkBvertKlPeYb9XS
         84Xw==
X-Gm-Message-State: AO0yUKXVzNe3es73EDoxO3BOE/gTNRsjOrOSvPf3CnQZUf6Du0782Yxd
        BjuPWCxaEcrtOyXXQqlIFPlPzhpYn1yUhtSgi78qOg==
X-Google-Smtp-Source: AK7set9nQV1O5yVi7gd4+EWG/co5nR98/s6dYA+kHt1Tx4bt5HqOC6zDFtpHkRsep+/3835WmvCnOzmf6EZ7+K/TEx0=
X-Received: by 2002:a05:6902:50b:b0:8e2:6b58:5fe8 with SMTP id
 x11-20020a056902050b00b008e26b585fe8mr6212716ybs.10.1677780778998; Thu, 02
 Mar 2023 10:12:58 -0800 (PST)
MIME-Version: 1.0
References: <20230302123051.12440-1-a39.skl@gmail.com> <20230302123051.12440-2-a39.skl@gmail.com>
 <CAA8EJpoxtKQfmdbX+CGmri6RUf3YauxNUc1z62Xn1TczcsWhDw@mail.gmail.com>
In-Reply-To: <CAA8EJpoxtKQfmdbX+CGmri6RUf3YauxNUc1z62Xn1TczcsWhDw@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 2 Mar 2023 20:12:48 +0200
Message-ID: <CAA8EJpquXEq=ppd_RahhguPHH0yMf1QoCOjxFxNTcma8qt8tbg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8956-loire: Provide rate for
 xo_board clock
To:     Adam Skladowski <a39.skl@gmail.com>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Thu, 2 Mar 2023 at 18:38, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 2 Mar 2023 at 14:31, Adam Skladowski <a39.skl@gmail.com> wrote:
> >
> > As xo_board is part of board not soc we define rates per device tree,
> > assign common 19.2Mhz rate to make consumers happy.
> >
> > Fixes: ff7f6d34ca07 ("arm64: dts: qcom: Add support for SONY Xperia X/X Compact")
> > Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi b/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi
> > index 67baced639c9..085d79542e1b 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi
> > @@ -280,3 +280,7 @@ &usb_hs_phy {
> >         vdda3p3-supply = <&pm8950_l13>;
> >         status = "okay";
> >  };
> > +
> > +&xo_board {
> > +       clock-frequency = <19200000>;
>
> This doesn't seem to be board-specific. Please move it to msm8976.dtsi.

Adam pointed out the clock frequency is now thought to be a
board-specific thing.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
