Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7A284E7DA8
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:23:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231983AbiCYUBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 16:01:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231938AbiCYUAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 16:00:55 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7A5F182AE4
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:51:08 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id r8so9289191oib.5
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=eUek1jmX1h1x8PcNcflTTCV7rdiqXP/FImxouF9eXrk=;
        b=MuYU2U53+0XditHV3+xMmufekP83Q86clHPRUFiYJI5c83MMgqsqZU6OE0iD7uqI1D
         bq5BpO0h+DDnBW2dzr+T0KLiCp0GgYfvXmXPzjeUTmIwglTcDMjx2JTa8I15roXjfJQr
         QDYKF7wfPMDa6WIjm4l4EenX4il5h6oLp4L78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=eUek1jmX1h1x8PcNcflTTCV7rdiqXP/FImxouF9eXrk=;
        b=ofsbhUgY7LO17/1ta8WPxXjhCKrhu88ka6TEYhse+FNGGfI9M6WwhsyUKHpKhQh9oI
         p4rvsy8kGn8EH6vuKVYrXCFGVgGwLhWB/SLfnZumistSTzIGT/su2MXz9wBMkGb6j3F/
         V8uTkDphOsAedlL+Si7dinYooRip9VRsKGaQWLd4uhWRvv1KOE3UsQdLBT/F/wjiyxG6
         o8Iz/9sKzb5Pqhk1gnV+OzArrAwKlOwUPPagc/XwqjjaFYNiCg6ICxlvqik6S5ahOKbS
         kI3Jvv6UmhFXik1WpR3/yV4k7lJ2mFJeNhcOkf8w0cL5/NXEXTpo30S+AVkQCt3Nh0Pk
         yoYQ==
X-Gm-Message-State: AOAM532pNob+SCbgJGeAFqwPnvj6eYpbCFg9W74RZogN654q6FATFDkX
        u8pyv9TfTAUBERs+UkQm2cW4qKKt4N5M+U8kAqlKIg==
X-Google-Smtp-Source: ABdhPJxjJgDkwaOL+igFbYKoHRlPcGxtCqcdt2HqSpDefQv8NNUO1BG5eOIgAhxWNNRmCDuEqZtRbL5DhxFUglZ6hXs=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr5910648oie.193.1648237866373; Fri, 25
 Mar 2022 12:51:06 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 14:51:05 -0500
MIME-Version: 1.0
In-Reply-To: <MW4PR02MB718635E7712D44094E6E91F3E11A9@MW4PR02MB7186.namprd02.prod.outlook.com>
References: <1647452154-16361-1-git-send-email-quic_sbillaka@quicinc.com>
 <1647452154-16361-3-git-send-email-quic_sbillaka@quicinc.com>
 <CAE-0n52Uzo47N5QzoKOwny3XTrArA4nM-KPqAVxAPewSAyNOWw@mail.gmail.com> <MW4PR02MB718635E7712D44094E6E91F3E11A9@MW4PR02MB7186.namprd02.prod.outlook.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 14:51:05 -0500
Message-ID: <CAE-0n500xV_SA_-KQ4Sh-8PV=rfaXxrMBAh5tnVpjCMD+VEyqg@mail.gmail.com>
Subject: RE: [PATCH v5 2/9] arm64: dts: qcom: sc7280: Add support for eDP
 panel on CRD
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     "robdclark@gmail.com" <robdclark@gmail.com>,
        "seanpaul@chromium.org" <seanpaul@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "dianders@chromium.org" <dianders@chromium.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        "agross@kernel.org" <agross@kernel.org>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "sean@poorly.run" <sean@poorly.run>,
        "airlied@linux.ie" <airlied@linux.ie>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        "sam@ravnborg.org" <sam@ravnborg.org>,
        "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sankeerth Billakanti (QUIC) (2022-03-25 06:30:58)
>
>
> > > +       vdda-1p2-supply = <&vreg_l6b_1p2>;
> > > +       vdda-0p9-supply = <&vreg_l10c_0p8>;
> > > +
> > > +       aux-bus {
> >
> > Can this move to sc7280.dtsi and get a phandle?
> >
>
> Okay, I will move this to sc7280.dtsi like below.
> Shall I define the required properties under &mdss_edp_panel node in the sc7280-crd3.dts?

The below patch looks good.

>
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3283,6 +3283,18 @@
>
>                                 status = "disabled";
