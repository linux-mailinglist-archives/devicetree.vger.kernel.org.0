Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2110E570893
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 18:54:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbiGKQyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 12:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbiGKQyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 12:54:35 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C82473247B
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:54:32 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id h23so9809063ejj.12
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CgkIi7fMPRr2AoUFqLpQX7xH/fNuy4VUkp8cy7sE2D4=;
        b=V3/+Rch1ns/j5gS9Z+XimMOBxyslbkPIkGNRpBpOz0bsiaJNcIunGHgZ3wYeuNJ5KB
         iiojbeFMZBZKTs54MZfAuQo8noiaVjkbPCw+VGJd7zq3ffX2k/PYiJbk2Lf2ec74x8vX
         oOjelTn9RDQbi834Br05L23PNacDs9h+toRZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CgkIi7fMPRr2AoUFqLpQX7xH/fNuy4VUkp8cy7sE2D4=;
        b=LRP2YwPHMSUDcJyNEdgy+0jZAWBAkA7nRNL2xN/9RprmqdVUERNaSLA0UJh9b+88V7
         c7XICJEMy7/KV4mQK3A0Z9bwdWTjin2Jg5zy28+pgDaFaNA9vtvR0kRWVS87nJxVk2ph
         r8vdVpcSedfL1Rrpi9Uk5Qv3Yxc8kojffdQ8WvOJ36B4txfLdHRhbpObVAhgs/8ZMc7g
         f8OYHferoQfgY4MNq4hwUwqho6xaVDBQvkbi1PY7GIcwYj4TGU88zxRpAAL6nDip5Pv/
         XndzWmEEDTgEbghX8eZwn8W5UciY296TJTkWSPqFN/b8fRlaBkDL0Dz21S1TXCiQ9+kI
         Ihng==
X-Gm-Message-State: AJIora/mvlFV6oCADZJ7RGoS5v6QKJkN/8AaMR6vDDcTdsWtmED+uTkt
        HPCrZayI6wjnVifP8wWrqAoDPNp03fCV+bqv/Zg=
X-Google-Smtp-Source: AGRyM1swr9NHaXGkM4LMpCQCyZMykNf9U1X+osuxS+s2xOqSRrl/a1aIiSW2LvyhWhQmA1swzc/IpA==
X-Received: by 2002:a17:907:2723:b0:72b:5a8a:f983 with SMTP id d3-20020a170907272300b0072b5a8af983mr4934251ejl.635.1657558471219;
        Mon, 11 Jul 2022 09:54:31 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id dm3-20020a05640222c300b0043acddee068sm2809021edb.83.2022.07.11.09.54.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 09:54:31 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id be14-20020a05600c1e8e00b003a04a458c54so3384235wmb.3
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:54:30 -0700 (PDT)
X-Received: by 2002:a05:600c:3d95:b0:3a2:e97b:f3ae with SMTP id
 bi21-20020a05600c3d9500b003a2e97bf3aemr3975351wmb.188.1657558069021; Mon, 11
 Jul 2022 09:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <1657556603-15024-1-git-send-email-quic_khsieh@quicinc.com>
In-Reply-To: <1657556603-15024-1-git-send-email-quic_khsieh@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 09:47:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X0Fh_p4TnA3c=SadVKCDVFaWnT9Cj1zydQWqZdYL8eSQ@mail.gmail.com>
Message-ID: <CAD=FV=X0Fh_p4TnA3c=SadVKCDVFaWnT9Cj1zydQWqZdYL8eSQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dta: qcom: sc7280: delete vdda-1p2 and vdda-0p9
 from both dp and edp
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Stephen Boyd <swboyd@chromium.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        quic_mkrishn@quicinc.com, quic_kalyant@quicinc.coml,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 11, 2022 at 9:23 AM Kuogee Hsieh <quic_khsieh@quicinc.com> wrote:
>
> Both vdda-1p2-supply and vdda-0p9-supply regulators are controlled
> by dp combo phy. Therefore remove them from dp controller.
>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 2 --
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi     | 3 ---
>  2 files changed, 5 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
