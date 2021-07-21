Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58A2C3D13F2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 18:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233471AbhGUPkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 11:40:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233643AbhGUPkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 11:40:00 -0400
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16975C061757
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 09:20:37 -0700 (PDT)
Received: by mail-ua1-x92e.google.com with SMTP id e22so1024095uaa.8
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 09:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=051mTyyqTLe5bNxs3xMEB9dCJVVcLYp1lomu2/ziKcg=;
        b=mBZuY8y7e8p9bUY1ojzWBevvvMvTeIrdLx4L5N2hrw76MKt+CQ8zR8aQd0r0l8+0Ri
         UCcpj15XA0v3mA5O0DkBjetFm+wvkqr4V/U1eKIkv6x4bTyJ9A2lF5WYQiOSi/1MmEkt
         ojmFv7HtVf14t2mJ8bjQNIEC+NcaNKyl8ybHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=051mTyyqTLe5bNxs3xMEB9dCJVVcLYp1lomu2/ziKcg=;
        b=gmRqOvxOod+CNn3RUn7IkOipMBOC0fMQ5z1LIOKHfa5KYoTQFFrixDKLfXWYmvOAn1
         7n+Q7X+Pz8UcXuQfMWviSBvdoup3ugGZPcN9dWHKMCrPwoPMDhJhfp4RBzM1AHg28zLR
         Nrb7xuqlWeO46sS/c1nRHJTg9RNh4ydbNGKl9rvtSEa5vBAa3d+unw+1kI40j8L62Gjf
         p0Xe7N7I1gGBpeF5AIGxJB/PQae/aJVLzYWTS434eeisyA5F4RVsy0kUpIZX7FeK2W7n
         MIo+1ijWOSUQFEb3mZATb2TawTfT++mKJhl012/ju8N61gSZrlDC07jOzJ1mLKFGOrNn
         Mx+w==
X-Gm-Message-State: AOAM531JRTGsPZTD3fIycdGOzJzvxq3T1DB52arV+4wL+YCELZfUhn9h
        vHOf8oj0X+6HENRApOoB/DZiPK6u9YI//w==
X-Google-Smtp-Source: ABdhPJwdxbHbpeyvBYnVaHcpXyetmclRRxrrVusKafrXH+dCFvNBl5ly1BgNrXzxUxPK4YjUVRAwfw==
X-Received: by 2002:a9f:31a9:: with SMTP id v38mr38257412uad.137.1626884435740;
        Wed, 21 Jul 2021 09:20:35 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id w2sm2857605uao.1.2021.07.21.09.20.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jul 2021 09:20:35 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id j8so1766001vsd.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 09:20:34 -0700 (PDT)
X-Received: by 2002:a05:6102:144:: with SMTP id a4mr34855801vsr.29.1626884434569;
 Wed, 21 Jul 2021 09:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210721084126.14035-1-srivasam@codeaurora.org> <20210721084126.14035-3-srivasam@codeaurora.org>
In-Reply-To: <20210721084126.14035-3-srivasam@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 21 Jul 2021 09:20:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W3X8W90vPdrDAymzTKj-J7QPyn4ukaLSOhEkCme3+r_Q@mail.gmail.com>
Message-ID: <CAD=FV=W3X8W90vPdrDAymzTKj-J7QPyn4ukaLSOhEkCme3+r_Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sc7180-trogdor: Add lpass dai
 link for HDMI
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 21, 2021 at 1:42 AM Srinivasa Rao Mandadapu
<srivasam@codeaurora.org> wrote:
>
> From: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
>
> Add dai link in sc7180-trogdor.dtsi for supporting audio over DP
>
> Signed-off-by: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index 31bf7c698b8f..a4cb9ee567ff 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -288,6 +288,7 @@ sound: sound {
>                         "Headphone Jack", "HPOL",
>                         "Headphone Jack", "HPOR";
>
> +               #sound-dai-cells = <0>;

The `#sound-dai-cells` is not in the bindings. The bindings also say
`additionalProperties: false`. So either your patch is wrong for
including this or the bindings are wrong for omitting it. Which is it?
I notice that downstream we don't have this.


> @@ -314,6 +315,18 @@ sound_multimedia1_codec: codec {
>                                 sound-dai = <&max98357a>;

Ideally you'll want to rebase to make context clean since the above
got changed from `max98357a` to `max98360a`.


>                         };
>                 };
> +
> +               dai-link@2 {
> +                       link-name = "MultiMedia2";
> +                       reg = <2>;

I am certainly not an expert, but I notice that downstream we have reg
as <LPASS_DP_RX>, which makes the node name dai-link@5 instead of @2.
Does that matter?


> @@ -768,6 +781,10 @@ secondary_mi2s: mi2s@1 {
>                 reg = <MI2S_SECONDARY>;
>                 qcom,playback-sd-lines = <0>;
>         };
> +
> +       hdmi-primary@0 {
> +               reg = <LPASS_DP_RX>;

Your node name and `reg` don't match. `LPASS_DP_RX` is 5 so the node
name should include @5, not @0. I also notice that downstream the node
name is called `hdmi`, not `hdmi-primary`. The downstream `hdmi` seems
more parallel to the sibling nodes, like `mi2s@0` and `mi2s@1`.
