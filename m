Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28C6D247B78
	for <lists+devicetree@lfdr.de>; Tue, 18 Aug 2020 02:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726834AbgHRAYo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Aug 2020 20:24:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726457AbgHRAYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Aug 2020 20:24:37 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A9EC061343
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 17:24:37 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id f5so8366158plr.9
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 17:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=fIzNe6kBLkkiD888cP6x/Hi2iQ+s1AZsPih0Qi4fjZc=;
        b=IA5/pMtMp5vroeKoC6E1UoM88UwlNdVHVR28k5xmCUvR+oKpm7Qf27cSaXhCse3vky
         Cjwd30Twk5TQNDX0tLBWQO1YIxZGch6pxTP0WGflQiEKqUk9VikrGPipVoOXhQNU9uGC
         c6f0invxLMEpoZ/uvU+OO1lVPwA5CH4mgGASA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=fIzNe6kBLkkiD888cP6x/Hi2iQ+s1AZsPih0Qi4fjZc=;
        b=uVu6+LLOJtPozJ7x2vHT2Ucstb4gx7gl3l2McVxCk1F438qcDyLdo1qo6KV0Mdph7W
         +jRrZKCGQteJuyhYToTmvH1uyqpPmHb8wNGbEl26x2q2uOvCsqpiYFh1uo33+O8xCvPK
         ZIMe3DXuA41NmRVa0B6dx0KJ1Kib8ObE/bzwE75yroZ98GwdS/BTNVUl8oQlDVBLo+gf
         gTPqWVFG7cp8SnApxa/7VIXtj0ZUEfBUvBPe+Cw9kpDeBkNo2KGHJH0z3xOc2UFeFdyY
         MG4qvqzaV1RXtI3HMt6cwVt5FM4NMJzwL30eCSUCsSEVgxGJt8TC2bP9DLexJ1LEMxHF
         ZpGw==
X-Gm-Message-State: AOAM531UMtUY6gslR2n89rDSgiGwV0rIC5WlkBvtDzCFxVzgkQ1TNsaI
        KGz6M5ZHbKzzLlLt9sY4C9gkT7iuXOrzAA==
X-Google-Smtp-Source: ABdhPJySOSK83lgv0VrVvSo5NN8HgXozKW5Xwsrc4v9hYedTPLRrqRuviKh2CudX25Tf3teS8OfmDw==
X-Received: by 2002:a17:90b:150:: with SMTP id em16mr15073789pjb.86.1597710276290;
        Mon, 17 Aug 2020 17:24:36 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id l22sm18949038pjy.31.2020.08.17.17.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 17:24:35 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200817225300.2209-1-tanmay@codeaurora.org>
References: <20200817225300.2209-1-tanmay@codeaurora.org>
Subject: Re: [PATCH v6] arm64: dts: qcom: sc7180: Add Display Port dt node
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, seanpaul@chromium.org,
        robdclark@gmail.com, daniel@ffwll.ch, airlied@linux.ie,
        aravindh@codeaurora.org, abhinavk@codeaurora.org,
        khsieh@codeaurora.org, Tanmay Shah <tanmay@codeaurora.org>
To:     Tanmay Shah <tanmay@codeaurora.org>
Date:   Mon, 17 Aug 2020 17:24:34 -0700
Message-ID: <159771027430.2423498.17739000479526174339@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Tanmay Shah (2020-08-17 15:53:00)
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/q=
com/sc7180.dtsi
> index 31b9217bb5bf..bf2f2bb1aa79 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -2440,6 +2447,71 @@ dsi_phy: dsi-phy@ae94400 {
> =20
>                                 status =3D "disabled";
>                         };
> +
> +                       msm_dp: displayport-controller@ae90000 {

This should come before dsi-phy and dsi node. It should be sorted by the
address (0xae90000).

> +                               status =3D "disabled";
> +                               compatible =3D "qcom,sc7180-dp";
> +
> +                               reg =3D <0 0x0ae90000 0 0x1400>;
> +
> +                               interrupt-parent =3D <&mdss>;
> +                               interrupts =3D <12>;
> +
[...]
>                 };
> =20
>                 dispcc: clock-controller@af00000 {
> @@ -2449,8 +2521,8 @@ dispcc: clock-controller@af00000 {
>                                  <&gcc GCC_DISP_GPLL0_CLK_SRC>,
>                                  <&dsi_phy 0>,
>                                  <&dsi_phy 1>,
> -                                <0>,
> -                                <0>;
> +                                <&msm_dp 0>,
> +                                <&msm_dp 1>;

Don't think we should apply this still because the binding will change
when the phy is split out to qmp node. Maybe just leave this part off
for now?
