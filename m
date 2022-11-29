Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0FE163BF41
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 12:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232294AbiK2LlL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 06:41:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232346AbiK2LlB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 06:41:01 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECAB81CB2A
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 03:40:59 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id l127so14852763oia.8
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 03:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wRBJVGXEEydPy15o9BfUymcFFCTYtN6bX+VkTxDz6DA=;
        b=ZtzSaQbySs/pAjxZTutitahbTVDtd/jS038Oi6XjEvEzQgHt48K6+yaAuf83eyBXxJ
         LiOy8xw9VP/8fDPR4qRstuKfwi+pYrwkH1SMocqhVNH6UFJgs54SyzyUGd4KkkF691XF
         zzljPnXM2pJqiTxr6mhupGPx6BLogN2E1c35N4YIb22PkPDg6/3xdwQnl1JCH9poAB8d
         ZwiXK60rX2aMNFQbQc4IyjTcGjqnSbeUuuB4etFh0EkDBI5C7DtHplo1n2lgMR0KbXmT
         1V20M8WfCSB2pVHt3JDvTgv6LavkNPIycIeIu/+8wqw/5lNHl3UpO4PhR2IdSiIyWkYR
         54ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wRBJVGXEEydPy15o9BfUymcFFCTYtN6bX+VkTxDz6DA=;
        b=1jti0vX8U7aEITBIjEP1yr/rAI0U6AlqyHqMLAyV5wM5tHFyXNZWvOAh7wcreyB1T2
         nl/lwxWZ44gIk+5kJyopxTTF8OyrbdnhhobhRZ1pgsgRW82WtmeN3d+3ksI7UyZFRpUZ
         O15UO0BUq0j0S1kvZXgFIT0LzhQL4uPODczB0XyvishoGNyM/BQEc/gEJ4Nvpqtgtbex
         DDnHVE/UTjdsGlfx0e7z67r4TIh1FBibCy2EHo03L+xMTt02BCcS4yi2pUNFM66+auYr
         Kklq76Okf37Xnp+OkW4GyxAqi+bnp4+dDo7m38V4WljCdRi+r35rNPwoy64pzIDP+Lye
         xkng==
X-Gm-Message-State: ANoB5pmT4YIlb5T38es3vv8OWSkRY5oACugWx6s+pmiuPlNmdaUHFx3B
        Y/N+xQjhZnSW/kqy3aHci4YFFldQOS/QBWeQ5VhQMA==
X-Google-Smtp-Source: AA0mqf6cqugvAspHK6FlIB5f+xXbkfgkMm7ZkSjFBfy0VNWdRbl5zp+JxkqN8gTblWm5oqpPBTrQCLq3ApK/fVjF0kQ=
X-Received: by 2002:aca:5bc4:0:b0:35a:7056:4f9c with SMTP id
 p187-20020aca5bc4000000b0035a70564f9cmr30907203oib.72.1669722059192; Tue, 29
 Nov 2022 03:40:59 -0800 (PST)
MIME-Version: 1.0
References: <20221115133105.980877-1-robert.foss@linaro.org>
 <20221115133105.980877-7-robert.foss@linaro.org> <fed78af8-015b-e57d-76c7-68c8ba317952@linaro.org>
In-Reply-To: <fed78af8-015b-e57d-76c7-68c8ba317952@linaro.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 29 Nov 2022 12:40:48 +0100
Message-ID: <CAG3jFysNPr70duSwmagS-d2Fs=61iSVgcCMVKuLAKiUtsUZMfA@mail.gmail.com>
Subject: Re: [PATCH v2 06/12] drm/msm: Add support for SM8350
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        bjorn.andersson@linaro.org, quic_kalyant@quicinc.com,
        swboyd@chromium.org, angelogioacchino.delregno@somainline.org,
        loic.poulain@linaro.org, quic_khsieh@quicinc.com,
        quic_vpolimer@quicinc.com, vkoul@kernel.org, dianders@chromium.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
        vinod.koul@linaro.org, quic_jesszhan@quicinc.com,
        andersson@kernel.org
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

On Tue, 15 Nov 2022 at 14:42, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 15/11/2022 14:30, Robert Foss wrote:
> > Add compatibles string, "qcom,sm8350-mdss", for the multimedia display
> > subsystem unit used on Qualcomm SM8350 platform.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >   drivers/gpu/drm/msm/msm_mdss.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> > index a2264fb517a1..39746b972cdd 100644
> > --- a/drivers/gpu/drm/msm/msm_mdss.c
> > +++ b/drivers/gpu/drm/msm/msm_mdss.c
> > @@ -293,6 +293,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
> >               /* UBWC_2_0 */
> >               msm_mdss_setup_ubwc_dec_20(msm_mdss, 0x1e);
> >               break;
> > +     case DPU_HW_VER_700:
> > +             msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_4_0, 6, 1, 1, 1);
> > +             break;
> Shouldn't the second-last argument be 2 or 3 depending on DDR type?

Dmitry, can I get your input on this? I'm a little bit unsure of which
dts properties some of these
values are derived from.

>
> Konrad
> >       case DPU_HW_VER_720:
> >               msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_3_0, 6, 1, 1, 1);
> >               break;
> > @@ -530,6 +533,7 @@ static const struct of_device_id mdss_dt_match[] = {
> >       { .compatible = "qcom,sc8180x-mdss" },
> >       { .compatible = "qcom,sm8150-mdss" },
> >       { .compatible = "qcom,sm8250-mdss" },
> > +     { .compatible = "qcom,sm8350-mdss" },
> >       { .compatible = "qcom,sm8450-mdss" },
> >       {}
> >   };
