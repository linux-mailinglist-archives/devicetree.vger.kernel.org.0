Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A80854E628
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 17:36:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233616AbiFPPgN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 11:36:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377809AbiFPPgL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 11:36:11 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81DF02FE5A
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 08:36:10 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id m20so3466910ejj.10
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 08:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5dVDuCM8VRK665zH/HV+gDuurZlzqRaw3AF4f+4QEQY=;
        b=YpSpNH3K+KjKkXCuVKrFBcVrP5SWlYv3RWSSUdRdHJUnj+BZbndMy/7IyaCo4ZQ5rb
         d5YerNu+HSuaHbXK9sCxIH2I4yswgUI5cbWPgvOV+jsqmpGVVOzFPK8wchjbBtnuyFNC
         yiHYfw8thWjslkqgb7sZ31mB5KIv7561wqhQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5dVDuCM8VRK665zH/HV+gDuurZlzqRaw3AF4f+4QEQY=;
        b=QKGGjKbmsrgXg6tRLqpFm4tlozD5vEXAUUih3DN0uKhfNrBc+uDqcak0UG+gsG5zl3
         URGBECB03zuIw+2fuy/FVhWdfhWoAPNvMncv8Ucu/TxxVgWRYE7pNONl49lvn/Rs4mpd
         QW4Neh7VnvmtSqFrG6NsB8MyqnhL6Y1dtKZi+WjzkHxjSIaL+yubltKvKFiaHpIk8/uZ
         yDKM5IsQSJEC2L3ESM+0UR1W7nIVuIgP/odfntQPonLOS7aJvViis9JPJPpaIvFU6s0r
         Kpz3l82enmyCcwj6+iID4MKh8nRtH+I36iLM8mkKTsVQcDWxfUPDNHBupWeERhH96fDt
         5MSA==
X-Gm-Message-State: AJIora8tPNxqECbLW4fHE8p1VTHYbLM4jDXoaRVMl0EuSf70lRXeqANT
        SWXusnWXxzaSDCZEAoAy/zC9PlOTzGNP1I0Ks6s=
X-Google-Smtp-Source: AGRyM1sZGkYGguHAYWbvyYkAvF2dBHAYIUyadntHkxFTH9colnIxqoETl8sZCUYQnWa2by1Lq0ggig==
X-Received: by 2002:a17:906:74ca:b0:712:585:751c with SMTP id z10-20020a17090674ca00b007120585751cmr4888247ejl.739.1655393768784;
        Thu, 16 Jun 2022 08:36:08 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id f17-20020a0564021e9100b0042e17781fc5sm2143560edf.49.2022.06.16.08.36.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 08:36:07 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id o8so2380920wro.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 08:36:06 -0700 (PDT)
X-Received: by 2002:a5d:68d2:0:b0:210:31cc:64a6 with SMTP id
 p18-20020a5d68d2000000b0021031cc64a6mr5183133wrw.679.1655393766098; Thu, 16
 Jun 2022 08:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220425210643.2420919-1-dianders@chromium.org> <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
In-Reply-To: <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 Jun 2022 08:35:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wbi=CXhPpOUJj=1PdgB8i6Lf1Sfr=T7wrQsgBx790S_w@mail.gmail.com>
Message-ID: <CAD=FV=Wbi=CXhPpOUJj=1PdgB8i6Lf1Sfr=T7wrQsgBx790S_w@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: List supplies for qcom,edp-phy
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 25, 2022 at 2:07 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> We're supposed to list the supplies in the dt bindings but there are
> none in the eDP PHY bindings.
>
> Looking at the driver in Linux, I can see that there seem to be two
> relevant supplies: "vdda-phy" and "vdda-pll". Let's add those to the
> bindings.
>
> NOTE: from looking at the Qualcomm datasheet for sc7280, it's not
> immediately clear how to figure out how to fill in these supplies. The
> only two eDP related supplies are simply described as "power for eDP
> 0.9V circuits" and "power for eDP 1.2V circuits". From guessing and
> from comparing how a similar PHY is hooked up on other similar
> Qualcomm boards, I'll make the educated guess that the 1.2V supply
> goes to "vdda-phy" and the 0.9V supply goes to "vdda-pll" and I'll use
> that in the example here.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Even though patch #1 in this series should be dropped, this patch
(patch #2) is still valid. Vinod: I assume this would land in your
tree along with the first two patches in Kuogee's series [1], which
are related. Please let me know if you need me to re-send or anything.
Thanks!

[1] https://lore.kernel.org/r/1653507433-22585-1-git-send-email-quic_khsieh@quicinc.com/

-Doug
