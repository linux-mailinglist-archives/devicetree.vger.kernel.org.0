Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9A2853429E
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 20:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243604AbiEYSAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 14:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343665AbiEYSAO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 14:00:14 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FEC36D4DB
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 11:00:11 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id v15so5308356pgk.11
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 11:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pCOJwAVhHqabf7q+ofFTKhfH08ncrowINh8zKJmKO8o=;
        b=fH5vloMgnO8q0+QKAIm8czJR7NH9BJmMdne5Ag+L/GDQCO0gBO5HLcleZSz3O+/WrY
         Jov0PppgY6/ita+gQd8tm5Ri0XYd1n6NlOefOktjw+IPnLkpFgwbbp+iDrgqP9Emrwva
         xOU3+QDLodh1nWYbHoJAVL+ToVbcVfbPiIGjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pCOJwAVhHqabf7q+ofFTKhfH08ncrowINh8zKJmKO8o=;
        b=JSqfM+U3b5MbJG9Pm0Jnr1dSaQxf6/oe4TfUaXkNlDWFS/gpJR1fTalrFrmcBmNTOR
         uzi2Gw/8W37SmYrljyR4coHWm1niAL1dkV4jgBqAh2uScGeBzqQARqDRQelKVAh8BpEr
         H+zAIAJAOLZlyTZeV0LxIJTcRjnND/iSEZy6TxYczgqsd65XtdIGWh1urGIKbd44ciL6
         PeK+k8wc/ybFW4PFQ4e8p/VLnVPnr1nE9xz6l77ICJd9FbmSUoL+I1j5EHI/k2Xf3jgA
         8JlvJWfwPspbhRW0qe37CEUvxwupK6Qw77raeDtWMXnwI4+dQa5xBj2+qnr4L2iyK5+1
         COPw==
X-Gm-Message-State: AOAM533FFPqbImWc9Z0ToVOIBLVHGFLvJmecCEHUGAtjulAfYOmQHEo1
        if3OxNGVumBDgmTBsQrdsNh4JlYIz8F4B7g19Yk=
X-Google-Smtp-Source: ABdhPJzdfX5URnl9v8lkc/REOm752G2r2g3/oBLCSsNTj9DN2iMYPuX2LeQuTEv9Hk3TRP9fC5Bs3Q==
X-Received: by 2002:a05:6a00:1992:b0:518:da6a:df03 with SMTP id d18-20020a056a00199200b00518da6adf03mr7156686pfl.20.1653501610415;
        Wed, 25 May 2022 11:00:10 -0700 (PDT)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com. [209.85.215.182])
        by smtp.gmail.com with ESMTPSA id gw11-20020a17090b0a4b00b001ded0506655sm1912663pjb.51.2022.05.25.11.00.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 11:00:10 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id x12so19485992pgj.7
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 11:00:10 -0700 (PDT)
X-Received: by 2002:a6b:6b10:0:b0:660:d279:31bb with SMTP id
 g16-20020a6b6b10000000b00660d27931bbmr10484568ioc.47.1653501144197; Wed, 25
 May 2022 10:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220525014308.1853576-1-judyhsiao@chromium.org> <20220525014308.1853576-4-judyhsiao@chromium.org>
In-Reply-To: <20220525014308.1853576-4-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 25 May 2022 10:52:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UfT_TuAS9DaKQ4D3dE_cY=rqPHvSuvkD7SS1egVuFKbA@mail.gmail.com>
Message-ID: <CAD=FV=UfT_TuAS9DaKQ4D3dE_cY=rqPHvSuvkD7SS1egVuFKbA@mail.gmail.com>
Subject: Re: [v3 3/3] arm64: dts: qcom: sc7280: include sc7280-herobrine-audio-rt5682.dtsi
 in villager and herobrine-r1
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 24, 2022 at 6:43 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Include sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1 as
> these boards use rt5682 codec.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts | 1 +
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts  | 1 +
>  2 files changed, 2 insertions(+)

Should have carried my review from v2:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
