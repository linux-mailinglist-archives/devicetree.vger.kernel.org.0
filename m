Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA006A0C2E
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 15:49:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234909AbjBWOtG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 09:49:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234724AbjBWOs5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 09:48:57 -0500
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5527B7ED6
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 06:48:48 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-536be69eadfso192053387b3.1
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 06:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4pa8WhVoMTas4nD3mKBiwC/IIvOKuMqZMgApILYBrlg=;
        b=sq2yEKIzAfYxhUjTGZscUcBKjbRg/XDm6/OwDMuFPcEmkYSC5SZuAHJTff953rBxec
         LXLsNugN1pCBzThSfJuKLff6xwek+18mho5HTV7Faj9nXCmrf6il/5KmHnZsEES5UNBt
         eTmKrtOonZITSNMLxOnPamdZEaODB4Xww/33QpFmi0aWhtDuS7c1gn6NQd3laKkB6FGe
         rM8cIi09jTeip4eoTTIIOa/qTQO10Q2eNX6IY7E1S4Lff6byWPaH/8qwSu7FCUE6kj2a
         hy4hlom66L8I40nNa9KzkVoJDtSzNybkpPR3SQ+ncXT6v3HMCM4M0JA8RWfKX9cRHBHp
         BtXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4pa8WhVoMTas4nD3mKBiwC/IIvOKuMqZMgApILYBrlg=;
        b=2EtI5z8aZG+aG/hP9EPNP6PCnbmJcuXwwVi+7ViVzbcBy1ZpWUtYzljAluj4x3O+O2
         7ZCFsawdZFqg0DCO5PmRFvyMQbgLc2ny7r4IYrBRfoV4hvcu9J1O9MyhGCdDbVwMmSwn
         P4+JTZ3oWtEnOHWbmHql+35jkqvgN0URFUbOnKoWyZ2O56HbOZL8n7k7FfZh0rNknqFz
         Yh53X9G8cObVDh+ujwzNB/50+W9KE1ADDCrpPulKTP7TugQAxMKskRcLzRd61XwKiFTs
         386WSk1q3BxKf4BGZ/1TQ8Hoq3j8XTSrzy3VNfXoMkcNIOgRzTzGTW0GxVT3NeKL+FhD
         KZfQ==
X-Gm-Message-State: AO0yUKXxYLSNS3Cs3ZDO8lBoB7xRqGAwWGQaqKsRSBC9+Ntg64tw89eB
        mhoJcfvsNb323Tq7g7QyJGESE+6eluokZumAZayv4LC9wz3LjQ==
X-Google-Smtp-Source: AK7set9VUZNRZCaLDXrLLy8mHGx5HocaLmAlWGX8los92wGIp1ZTneOSgYrN2Af2BE5NJykwArXcAFeSMswQ6RhmvHI=
X-Received: by 2002:a25:9bc2:0:b0:9fe:195a:ce0d with SMTP id
 w2-20020a259bc2000000b009fe195ace0dmr1724279ybo.10.1677163727331; Thu, 23 Feb
 2023 06:48:47 -0800 (PST)
MIME-Version: 1.0
References: <20230223-topic-gmuwrapper-v3-0-5be55a336819@linaro.org>
 <20230223-topic-gmuwrapper-v3-10-5be55a336819@linaro.org> <CAA8EJppi45K0hQ=1fZvf+Mps+4uEkXmLFeqdmyk-yk31CNvUsw@mail.gmail.com>
 <761e0aba-9364-557a-e6e5-e21494597dbc@linaro.org>
In-Reply-To: <761e0aba-9364-557a-e6e5-e21494597dbc@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 23 Feb 2023 16:48:36 +0200
Message-ID: <CAA8EJppvmojWnvwB1aKJ1M7CcoFHk9BLFR0U7CQGR9GexQckdw@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] drm/msm/a6xx: Fix A680 highest bank bit value
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 Feb 2023 at 15:49, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 23.02.2023 14:06, Dmitry Baryshkov wrote:
> > On Thu, 23 Feb 2023 at 14:07, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> According to the vendor sources, it's equal to 16, which makes hbb_lo
> >> equal to 3.
> >
> > I think we might be stricken with the ddr kind difference here, but I
> > would not bet on it.
> It totally is, but it also seems to be SoC-dependent..
> I think all 8180x devices shipped with LPDDR4X FWIW

I think so too. However sdmshrike dts uses LPDDR5.

>
> Konrad
> >
> >>
> >> Fixes: 840d10b64dad ("drm: msm: Add 680 gpu to the adreno gpu list")
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >> ---
> >>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 8 +++++++-
> >>  1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> index b5017c56fa1b..2c4afecdd213 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> >> @@ -885,12 +885,18 @@ static void a6xx_set_ubwc_config(struct msm_gpu *gpu)
> >>                 hbb_lo = 2;
> >>         }
> >>
> >> -       if (adreno_is_a640_family(adreno_gpu)) {
> >> +       if (adreno_is_a640(adreno_gpu)) {
> >>                 amsbc = 1;
> >>                 /* HBB = 15 */
> >>                 hbb_lo = 2;
> >>         }
> >>
> >> +       if (adreno_is_a680(adreno_gpu)) {
> >> +               amsbc = 1;
> >> +               /* HBB = 16 */
> >> +               hbb_lo = 3;
> >> +       }
> >> +
> >>         if (adreno_is_a650(adreno_gpu) || adreno_is_a660(adreno_gpu)) {
> >>                 amsbc = 1;
> >>                 /* TODO: get ddr type from bootloader and use 2 for LPDDR4 */
> >>
> >> --
> >> 2.39.2
> >>
> >
> >



-- 
With best wishes
Dmitry
