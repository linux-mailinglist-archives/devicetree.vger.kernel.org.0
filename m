Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1754386D22
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 00:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239660AbhEQWpi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 18:45:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344047AbhEQWpi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 18:45:38 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1989C061756
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 15:44:20 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id v19-20020a0568301413b0290304f00e3d88so6991591otp.4
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 15:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=wCRHhc5CNBJgeMhaZjv6HXKmZODtshURpIj1KAaY5Ec=;
        b=g+E0FkptmLlSmUHEwmiG+oo+73R0KoVQ6ZYrO2YZY87UWOeSK7NCOGonMgu7YbkF5K
         tpc6Epp38Yfcsqk62OCFS6pO2apPoNwzSeKtkIUk62afQ7eReEJdZkBOmkQJ//8Ejbwv
         vMGRKEdlrjRvy6emPj6ymTRudWOjIuEX3cQZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=wCRHhc5CNBJgeMhaZjv6HXKmZODtshURpIj1KAaY5Ec=;
        b=iEjPAE3EvpyHV3Jyina8IwhSfKrvdCeYwxjx/1qocpwXjj4qapzTyu7IIKJEo0ypO4
         uOjc9FQQXCk+3fRecg7Mfzw/TUNNVD1/Jn5qE8Px4rQdkEWpB3YNaN/bOeekNFilnp5B
         T6N+UVGt25iD2lbqsVlU8YnWA0LOxYLoGb9lrOpNrzK2qCAswPeJhuKx2EIGVka3ydpF
         JyZykkeffyHhZ+Q4F8WKNHoOnfD4cyqWHdmYvCmCgr2hhy+D6Ck5IAP14Eh7tzqJp0V0
         gyYRDh6pDi8Fi/T8npFzm2vHD3c6rTgGIGUY6qPDFNMiT3tw+0HieMJTWEkXERds46EF
         eAnw==
X-Gm-Message-State: AOAM530Dqvc/QaFjTCigqTBus8TkbYNLk8VO2nxd0tzU6hyt5SaaINjE
        X74al6/otjjJFf963sw728s4iONn8sAQTOrax3cg5g==
X-Google-Smtp-Source: ABdhPJwYgIM7DXk4ykEISh2uQ5fNb2X4gzr+wMSjIK74xoOhgRVS2GV4QGZspwoG0xgsXil5WszACVf7E8Gczjs1ZpM=
X-Received: by 2002:a05:6830:1556:: with SMTP id l22mr1581018otp.34.1621291460212;
 Mon, 17 May 2021 15:44:20 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 17 May 2021 15:44:19 -0700
MIME-Version: 1.0
In-Reply-To: <20210513122429.25295-1-srivasam@codeaurora.org>
References: <20210513122429.25295-1-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 17 May 2021 15:44:19 -0700
Message-ID: <CAE-0n51jjHWSFiip-utVKjAQbaJuj+oKq0GPLgw2q2mG_9B=eg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add wakeup delay for adau codec
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-05-13 05:24:29)
> Add wakeup delay for fixing PoP noise during capture begin.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> index 4c6e433c8226..3eb8550da1fc 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> @@ -23,6 +23,7 @@ / {
>         adau7002: audio-codec-1 {
>                 compatible = "adi,adau7002";
>                 IOVDD-supply = <&pp1800_l15a>;
> +               wakeup-delay-ms = <15>;

Is this part of the binding?
