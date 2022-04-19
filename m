Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8E9507057
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 16:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353283AbiDSObI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 10:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351014AbiDSObI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 10:31:08 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B50A931342
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:28:25 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id k23so33309996ejd.3
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5snmPtDHGIGoFLwIYFGnYkPTgTDRFy3yrXSk8RuXhBw=;
        b=RyaK5z0senBGYKHrGTylo+K2ugRhGTPqMnF4qLnrgyVkDI+tdjmEz5eOzR0Y1AW6QU
         y1zPZmrNqRLvm0vTSqh+xmmubISocvwjC4qL1JKLlSIvglE/JhI/7doQ6ENEmXj3Clrj
         zYxT/lkQ+Dzv5Oo+hLcoDdnTp0p5Kfr/Kplng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5snmPtDHGIGoFLwIYFGnYkPTgTDRFy3yrXSk8RuXhBw=;
        b=T4unC9A/tGkZukYsoc3o3hpJ0O6Y0jdUetY6IVi83fpxw+WXwQybP1UZfkaoghpsqt
         P6LyTF+2EUBMqw9GPsLNQnIOr2+3tzTF4+sznecq3Pw0tGZ/mRprEvSJKd5WGgBknDXg
         49mDQw0HMR0P9YxlTYHyRODd4gtmuNuKewy8wnp4/r8ixCL0ZciFpH4HbNvOLkyY5f16
         +2xxhlW38nWFBfRprBbmWdeBl6hz8vlmqFsNhSBYyX0gjQj2rUwT9qc+JRUIogxhGMED
         HyWmL0i5HmOBSsGhqZKNsm8LzX4IL6Ilv59lvQ5bgySqDkK2ugBei44iQWtVmeLOGj7J
         O45Q==
X-Gm-Message-State: AOAM533/0/fhNKVjWWJtVTNqMglLu9qG4WiYAqaYjQT6dUDbg+v8ZFcO
        w8fO8w49SZirB3bD/krXyyqO5KaGf+symcvB
X-Google-Smtp-Source: ABdhPJyl8Cq5bfNT8TjVMJPrXK5ZGdmkskkmpeJkkHMxnedVTqlS8EgPXGay4jPEa/4QPZYbqv3J2Q==
X-Received: by 2002:a17:907:33cc:b0:6e8:81ca:f9e8 with SMTP id zk12-20020a17090733cc00b006e881caf9e8mr14008119ejb.51.1650378504000;
        Tue, 19 Apr 2022 07:28:24 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id q7-20020aa7cc07000000b00423ded189aesm3807136edt.13.2022.04.19.07.28.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 07:28:22 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id m15-20020a7bca4f000000b0038fdc1394b1so1694938wml.2
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:28:22 -0700 (PDT)
X-Received: by 2002:a05:600c:210b:b0:38e:c62a:398b with SMTP id
 u11-20020a05600c210b00b0038ec62a398bmr20157535wml.118.1650378502020; Tue, 19
 Apr 2022 07:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <1650349697-13540-1-git-send-email-quic_vnivarth@quicinc.com> <1650349697-13540-2-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1650349697-13540-2-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 19 Apr 2022 07:28:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XYduCsrzKYRUR18y+OfJCrjdbDErSPEtz0bYF_VXbMPA@mail.gmail.com>
Message-ID: <CAD=FV=XYduCsrzKYRUR18y+OfJCrjdbDErSPEtz0bYF_VXbMPA@mail.gmail.com>
Subject: Re: [V4 1/2] arch: arm64: dts: qcom: sc7280-idp: Configure cts
 pinctrl to bias-bus-hold
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_msavaliy@quicinc.com
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

On Mon, Apr 18, 2022 at 11:28 PM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> WLAN rail was leaking power during RBSC/sleep even after turning BT off.
> Change sleep pinctrl configuration to handle same.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
> v4: modify subject of patch to indicate file it is applying to
> v3: apply same change to active state and other sc7280*.dts* as well
> v2: used bias-bus-hold as per review comments
> v1: intial patch used bias-disable for sleep pinctrl in sc7280-idp only
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

You should have carried my tag forward. In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
