Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57D8C5EF12C
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 11:02:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234729AbiI2JCi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 05:02:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbiI2JCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 05:02:37 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1509B139BE0
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:02:35 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 65so764015ybp.6
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yKPB55kqrYfeN1gOA599C3nAwB2kg/l4ZAUq+bshASA=;
        b=eiuwK3T0g179jNPxt3DC04h7S5HSU+dYiVOlj8DYf1hxjgAkcEkGf4yYbFUbmCgvY6
         RkwGR6unYdoX/DvCR2zdf/M8V/3dqeXA5Zh9CawoNLLNoBO1Qc+e1rTK6SL5JZiHJ7zO
         tmt6CvE+5ZpzxEKodj/tmoOwpRZVc1fXWTxGMc77ylNKC/aZ/zlS47etImuGiYwclMvr
         U2Y28+Fjckwf/N13JazRvxbBkMfj41Bm6nyf+WYrC5DiGEe6bt7jutlCve0+6gU7twh3
         EdP3yxzLb4Tsp0l0ZE4v0F0+C+e2nUx7kerl9d06tYDXLiChRg6OoRYKaoG7XojV9e9y
         NHZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yKPB55kqrYfeN1gOA599C3nAwB2kg/l4ZAUq+bshASA=;
        b=iTSsl3+lLAxAM09OVray/0LGj7EI0dbc3tGqZQ3Mr2IEBY3iOHt7IfBS+Obn+15sfC
         JowuXQ5UCRFnZtPDGivCAi/+t0mkEddZBON/ZWr2AudgJV4can6iaQPBS/r+g2Qav9V5
         QgFHYEPR0OPJeyGqU848KFdpen8uQdnzHbziP8TsDYzaAdZa+p7gi26caMnjnrO0x2fF
         7DiwBpQKmzexNWi1MyaIL94mcx//5EPeOYGtGp5yGPeXES958MQ+n4hQdc91UrsYjQpC
         IvIj1inDKKNd9SQJtM3gubU0iGkHw5Vj47N1vzq4ja/rla53bZuVfGQYPzE/+GygsZqR
         LhsQ==
X-Gm-Message-State: ACrzQf3MEhKiczufyscpo4gYUE/qli38THIm2Xv6/2yXru6fpYWOuFQx
        e9lof46dw31e/LbAH5eH6QZV6MZcJ/p4NCkWQH3xlA==
X-Google-Smtp-Source: AMsMyM7fcwdsOzxi4Y/A4abn1a2Rw6OsEt4ShseX5ARSzqORDdAnULDTqq+5gcxWyE2gQIQjHNZR2gXdAR3KGdesMWY=
X-Received: by 2002:a25:3f86:0:b0:6bc:998:873e with SMTP id
 m128-20020a253f86000000b006bc0998873emr2255866yba.152.1664442155175; Thu, 29
 Sep 2022 02:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <1664435628-4011-1-git-send-email-quic_kriskura@quicinc.com>
 <CAA8EJpr9pcN-SG-yQNUGEoHCmv74prChprj4f42PKpSAzGzVKQ@mail.gmail.com> <0cc382cb-b76e-a5a5-3480-47a451bdc958@quicinc.com>
In-Reply-To: <0cc382cb-b76e-a5a5-3480-47a451bdc958@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 29 Sep 2022 12:02:24 +0300
Message-ID: <CAA8EJprvHSFKS2ZOLyeYgUpj4Fzec01RhQ7=nUh=qDpYBe0hrA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280
To:     Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 29 Sept 2022 at 11:54, Krishna Kurapati PSSNV
<quic_kriskura@quicinc.com> wrote:
>
>
> On 9/29/2022 1:29 PM, Dmitry Baryshkov wrote:
> > On Thu, 29 Sept 2022 at 10:14, Krishna Kurapati
> > <quic_kriskura@quicinc.com> wrote:
> >>
> >> Override the SNPS Phy tuning parameters for SC7280 devices. These
> >> values are common for both trogdor and herobrine variants.
> >
> > They are common for trogdor and herobrine, but should these parameters
> > be a default? In other words, a random new device based on sc7280
> > would more likely use these overrides or the hardware defaults?
> >
> Hi Dmitry,
>
>    Currently there are only two platforms, so I made these changes on
> common dtsi. If a new platform comes (mostly it won't) we can override
> them in platform specific file is what I thought.

This is not how it usually works. The 'sc7280.dtsi' is not a 'common
dtsi' for trogdor and herobrine. It describes the SoC.
Thus in my opinion if these overrides should be a default to all
sc7280 platforms, this patch is fine. If these overrides are
applicable only to the two mentioned platforms, they should go to
respective platform-specific DT files.

>
> Regards,
> Krishna,
> >>
> >> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 7 +++++++
> >>   1 file changed, 7 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> index 2125803..ae2c23e 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> @@ -3310,6 +3310,13 @@
> >>                          clock-names = "ref";
> >>
> >>                          resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
> >> +
> >> +                       qcom,hs-rise-fall-time-bp = <0>;
> >> +                       qcom,squelch-detector-bp = <(-2090)>;
> >> +                       qcom,hs-disconnect-bp = <1743>;
> >> +                       qcom,hs-amplitude-bp = <1780>;
> >> +                       qcom,hs-crossover-voltage-microvolt = <(-31000)>;
> >> +                       qcom,hs-output-impedance-micro-ohms = <2600000>;
> >>                  };
> >>
> >>                  usb_1_qmpphy: phy-wrapper@88e9000 {
> >> --
> >> 2.7.4
> >>
> >
> >



-- 
With best wishes
Dmitry
