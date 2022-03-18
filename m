Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33F194DDFBF
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 18:21:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239568AbiCRRW1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 13:22:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239552AbiCRRW1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 13:22:27 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B48719BE4B
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 10:21:08 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a8so18305921ejc.8
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 10:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PCoJVU7mrdRYYKIeNxpHu40jIUtYCc2ytq8sJtJQeGU=;
        b=G/3LRJiL3DqJDP4WBNy8s7yyrZw6nESOCNsC2Nwpxwkyj67SgiTW1sew1I9mDZ9rmq
         5LXuoS1QxtJ748Oyjmt7XCguWrg/XLVqNtIkCzWgSXsqWI6/amBXVbX/UMrghLTYUU7X
         trR4fIkpdHtHmSusLVFyY7k9PVKpBF1ayFw4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PCoJVU7mrdRYYKIeNxpHu40jIUtYCc2ytq8sJtJQeGU=;
        b=vZuA61RMc3Rq1FfVQAZ7/rj37FNqnAGM0uijuTaO7Pw/DSiS9QDvE9dwyXYhVai6pu
         4BVDJGENK37u4LwxtwAlk8Qg8ZG+3wtFhTkDdW10puvOLqdW6onWWIly4+twxz+17tEu
         03lGEOPq0LADmhmjGHgWakwJwoW3GemttEsl0dcB8rRo+mk5oleHMYupIzaWSfBmwrfP
         PZsiR8U8Tqw3x9NPqL3c1DTReYm/H8a7uf3nWzj3ui92KzIBTdTyZ5G4j2TvtPioKceH
         1+AvVrY6KG4Hh4PmTNJXGuUIdPE+C9GiZ7EAduvW8eBQgkjiU6iqEjGrLFZ2s1NbECuY
         QB+w==
X-Gm-Message-State: AOAM533Cgw18HcVEkETkhTTsbCZ7pR2XA5fSWRUQnF7urjZ+ADQ/Db0i
        606Gv18jIr6dFlu4ReOz0kHBUexFf+GnJLBnxBE=
X-Google-Smtp-Source: ABdhPJzlQ45jCMCmyr6AqI0Iz4ex7EjlSTRjaCtQKX1419Gfgk/okgT3nmnlCriGHbaT5kcH+YXM+g==
X-Received: by 2002:a17:906:be1:b0:6ce:c3c8:b4b6 with SMTP id z1-20020a1709060be100b006cec3c8b4b6mr9806489ejg.617.1647624066408;
        Fri, 18 Mar 2022 10:21:06 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com. [209.85.221.44])
        by smtp.gmail.com with ESMTPSA id u5-20020aa7d985000000b004024027e7dasm4217121eds.28.2022.03.18.10.21.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Mar 2022 10:21:05 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id j18so2979364wrd.6
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 10:21:05 -0700 (PDT)
X-Received: by 2002:adf:fc47:0:b0:203:dda1:4311 with SMTP id
 e7-20020adffc47000000b00203dda14311mr9062480wrs.301.1647624064675; Fri, 18
 Mar 2022 10:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <1647452154-16361-1-git-send-email-quic_sbillaka@quicinc.com> <1647452154-16361-3-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1647452154-16361-3-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 18 Mar 2022 10:20:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XM1njMY63SCC3yNoA9Uvu+_3xLGkC5OWoLjR-0KnmhWg@mail.gmail.com>
Message-ID: <CAD=FV=XM1njMY63SCC3yNoA9Uvu+_3xLGkC5OWoLjR-0KnmhWg@mail.gmail.com>
Subject: Re: [PATCH v5 2/9] arm64: dts: qcom: sc7280: Add support for eDP
 panel on CRD
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        quic_abhinavk@quicinc.com, quic_khsieh@quicinc.com,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, krzk+dt@kernel.org,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 16, 2022 at 10:36 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> Enable support for eDP interface via aux_bus on CRD platform.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> ---
>
> Changes in v5:
>   - Change the order of patches
>   - Remove the backlight nodes
>   - Remove the bias setting
>   - Fix compilation issue
>   - Model VREG_EDP_BP for backlight power
>
> Changes in v4:
>   - Create new patch for name changes
>   - Remove output-low
>
> Changes in v3:
>   - Sort the nodes alphabetically
>   - Use - instead of _ as node names
>   - Place the backlight and panel nodes under root
>   - Change the name of edp_out to mdss_edp_out
>   - Change the names of regulator nodes
>   - Delete unused properties in the board file
>
>
> Changes in v2:
>   - Sort node references alphabetically
>   - Improve readability
>   - Move the pwm pinctrl to pwm node
>   - Move the regulators to root
>   - Define backlight power
>   - Remove dummy regulator node
>   - Cleanup pinctrl definitions
>
>  arch/arm64/boot/dts/qcom/sc7280-crd.dts | 93 +++++++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)

At a high level, I'd expect your patch to be based upon Matthias's
series, AKA the 4 patches from:

https://lore.kernel.org/r/20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid/

I'll leave it up to you about whether you care to support eDP on the
old CRD1/2 or just on CRD3. Personally I'd think CRD3 would be enough.

Then, I'd expect your patch to mostly incorporate
<https://crrev.com/c/3379844>, though that patch was written before
aux-bus support so the panel would need to go in a different place.

Stephen already gave some comments and basing on Matthias's patches
will be a pretty big change, so I probably won't comment lots more.


> +&mdss_edp {
> +       status = "okay";
> +
> +       data-lanes = <0 1 2 3>;
> +       vdda-1p2-supply = <&vreg_l6b_1p2>;
> +       vdda-0p9-supply = <&vreg_l10c_0p8>;
> +
> +       aux-bus {
> +               edp_panel: edp-panel {

As Stephen pointed out, it should be called "panel".
