Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDC8B4A8FC9
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354851AbiBCVYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:24:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354785AbiBCVYu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:24:50 -0500
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75979C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:24:50 -0800 (PST)
Received: by mail-oo1-xc2b.google.com with SMTP id u25-20020a4ad0d9000000b002e8d4370689so2662832oor.12
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Dcg8bUvTHGFhS2m6mZBYw7q85gmv0e+i5VmVddmuGXQ=;
        b=YrqAID+Y9lZvvr5OeGBqm/qJjSGRHUOL3+JAC2odfFYyrzpsE+lOqDp1rdQegnRZYd
         LCHXebsD1SO4eNTuECqZOzeysnRKGb/XXb1INgNZqKAHb24/Q7ltLkFZhPKpPuAkOeFr
         Ow2a7rJsUlPnO1SY2UGPVFL8kdhcS/qRhd9Hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Dcg8bUvTHGFhS2m6mZBYw7q85gmv0e+i5VmVddmuGXQ=;
        b=lNAg6O1gLX7otu05BK9m5p9GxTF99Y7BvQzG/qTw5cAXqwd1BhJP6i/30hiMXQ5Dtv
         n7TyWgI6QOPyzxgdq+tbfsmWDchvPUOpN3U72XvmyclCiXXOFNEkhOmaHj2fNM0yKVuD
         cG0uy8wIYszZy+IRkDaeD8AFptiMr9oAfCNGMaj/Uh/vAXXp2wOZ8+iHoGzg3HJFcx5F
         g0GnvaxKn5MSJQwAwJCEpuVWjuJNtpl0bqf6AJPQ2L7+ftKZ5gGuTwG+ElUjlMVCDsP4
         Gb42qCX9ZkXUZ72QZro009WtpGWR3mmuPb2n4UKVl+q+BFqlGmMdLPO+z5f3oVhMwFI6
         0vcg==
X-Gm-Message-State: AOAM5314hJA31iCyycKfwsr0aA3q+CmunRxAmIbE/Suoh+1GpEp+fTZ3
        CuK9iXUi9Ghic/LBoSnPCxf3e8SRYU2ycV4NaZGOLg==
X-Google-Smtp-Source: ABdhPJyavB8osc2bVXqJup6rzEuSqmm6oZo87dNfxxZG6zo45LiWXi6Dg94QCB+5Zb7fpqjcFEDM+Fo0pllH9+05oHg=
X-Received: by 2002:a4a:e742:: with SMTP id n2mr17807942oov.1.1643923489835;
 Thu, 03 Feb 2022 13:24:49 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:24:49 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.3.I6ae594129a8ad3d18af9f5ebffd895b4f6353a0a@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.3.I6ae594129a8ad3d18af9f5ebffd895b4f6353a0a@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:24:49 +0000
Message-ID: <CAE-0n53ud9zhQVy-Ppa9zOQg39n=+s-JPPegb3=eKrnTcG938Q@mail.gmail.com>
Subject: Re: [PATCH v3 03/14] arm64: dts: qcom: sc7280: Properly sort sdc
 pinctrl lines
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-02-02 13:23:37)
> The sdc1 / sdc2 pinctrl lines were randomly stuffed in the middle of
> the qup pinctrl lines. Sort them properly. This is a no-op
> change. Just code movement.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
