Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBDAC51759F
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 19:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386622AbiEBRVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 13:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386637AbiEBRVV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 13:21:21 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFA4A1B4
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 10:17:50 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id i19so28921168eja.11
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5e/P3oCGEzzkwU7JvpMT6jdvjjKGHwDIEd56ZHarYG8=;
        b=LRJmQXlGVU2DXOpRaxkWINyGq8im14P66sIAc+s5stQ6gWHu3ieT0hyw9ypui62TL/
         0HCNbJb78UhLPPcP7Ys6YMx+plMmvVyOV+dmgS4Xq9ldBPtLIhKx9EA+OME3u5GsimO6
         VrZS8x+d3mWw1OZ1V0rFOEn2qc5IdDiE1Xsxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5e/P3oCGEzzkwU7JvpMT6jdvjjKGHwDIEd56ZHarYG8=;
        b=arsxkXBsjADMQZOJxpOjOKFzg+VKulisOOIi+TDOMvkli+iYSqWu0+GEgpKoW37nGw
         c0Z2/bkRO3Jt+ZD3cwGYawoleChwF3N7rzvfgQ3LH4VSQWjITy81LvoSE6zuFV3H8Kl3
         ZrOEzE2YEVij07duKF40L6k/4ezrAIDQBEI3UVh3OcbFoqZaerm03uaYXYFZxBdkfsW3
         f/Kog/KM2lZBEeB2V35NhLlqSR1nqrSBDzokg4JNHALuututMnbQ24ecFcfzX+QoxBFv
         GgVjhEIMoyvo9zT8NXvjYgasXiAZhFT/alIR133wfSBS9opFGhaa/mkOUO+j6WCjiALU
         Q51w==
X-Gm-Message-State: AOAM531qyvyeoZWdqCmghDOI6jJJdTwYOzHL3cEd5AgU4Ov5y6LnGU0H
        09OVI1G9EsGrDrlmJMA6PTG/wuBF7zy6n07h
X-Google-Smtp-Source: ABdhPJwgA7J5sqynn53/vXgJDXrjEhI7/XWsKvPwU3abflAzhMlerfLsep5hRxkugPNWEi1W+ouf1w==
X-Received: by 2002:a17:906:99c5:b0:6df:8215:4ccd with SMTP id s5-20020a17090699c500b006df82154ccdmr12093156ejn.684.1651511868995;
        Mon, 02 May 2022 10:17:48 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id qr48-20020a1709068cb000b006f3ef214e0bsm3823867ejc.113.2022.05.02.10.17.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 May 2022 10:17:48 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id j15so20408277wrb.2
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:17:47 -0700 (PDT)
X-Received: by 2002:adf:f50d:0:b0:20a:e096:ef with SMTP id q13-20020adff50d000000b0020ae09600efmr10002004wro.679.1651511867348;
 Mon, 02 May 2022 10:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220430011402.1.If7c3471db53bea55213f7bcf17e9043084d3ac0c@changeid>
 <20220430011402.4.Ifba00241fe6e70b59dc3c07eb234da3146e11a03@changeid>
In-Reply-To: <20220430011402.4.Ifba00241fe6e70b59dc3c07eb234da3146e11a03@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 2 May 2022 10:17:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XxPimB8uyboWtUcuCJW3NkVB-nKzaw=dE9xqCtpNj2rg@mail.gmail.com>
Message-ID: <CAD=FV=XxPimB8uyboWtUcuCJW3NkVB-nKzaw=dE9xqCtpNj2rg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sc7180: Add pazquel dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
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

On Sat, Apr 30, 2022 at 1:18 AM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Pazquel is a trogdor-based board. These dts files are copies from
> the downstream Chrome OS 5.4 kernel, but with downstream bits removed.

Actually, in pazquel's case no downstream bits are removed.


> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../sc7180-trogdor-pazquel-lte-parade.dts     |  22 ++
>  .../qcom/sc7180-trogdor-pazquel-lte-ti.dts    |  22 ++
>  .../qcom/sc7180-trogdor-pazquel-parade.dts    |  17 ++
>  .../dts/qcom/sc7180-trogdor-pazquel-ti.dts    |  17 ++
>  .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 221 ++++++++++++++++++
>  6 files changed, 303 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
