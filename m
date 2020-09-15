Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D92C26B2AA
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 00:51:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727224AbgIOWvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 18:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727290AbgIOPms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 11:42:48 -0400
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com [IPv6:2607:f8b0:4864:20::842])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78A25C061352
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 08:42:48 -0700 (PDT)
Received: by mail-qt1-x842.google.com with SMTP id c18so3504256qtw.5
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 08:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=B380Z7V1FE6cx7vYcZtAXyvKSK96OREmnb+GB7mPuqM=;
        b=rW3EWBhi9YvwLfjRJaOZoKNHufKiIBcvv4ygy4GigzbJ7g9kNDs244+sVt6NvwKE6d
         NsTPWBaFuINGA9pbRATEKVa4dPIm0qUNigkuib1MWNDMeR/WHE2+SH9SRhkg5aEZZP7k
         2lPCXS2o1IK3qOQ6jEZe5cNx+7O7IwhGaGhb2yfW46FLfHA66qUd7uPHuFA/7ST1Vq1m
         dxeuiN7gA7eFUcZSw9iOCVVC23t20c0NiRpcQDP2ob2SzSfOLE6yxKsUhXoTvIH9Nk4D
         oKjoAmlPpVGlEsV1kitu5sCb39lEQnBADo302x+vIvVWvBCQZEpQHvEfvrAJjMw+1tiV
         GBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B380Z7V1FE6cx7vYcZtAXyvKSK96OREmnb+GB7mPuqM=;
        b=XI7KJdf/OhlCl5TyJNYgnvStQitie7FKA4IK3IVV57JxaSQwfXCHo9O3Dugv6p0Wvp
         LB2j7wQSydzK4LEr+8o60f4Z8z7ZQAM8JhJ8QmS/9W23lZ0R3zNlgnTENgEGh8Gen/He
         2BRwgIC2Dc00ZJCWGM8i3DY154KzOuupNYICjjOUKTxPxBapPi1ug/wxscc4h0XAjF+R
         A/tf9kHQoWHL3sAfeA+N2AGJQh0oWd1AJHUOt18GsRMtWRFvklZa6KKTanBBkKUjuk63
         gSErwadULwL0ElBNkg9GnLC4JHe3+i4pCH+DQPmpmjcQR7ZDmMJa88ucZXC0DjiYvBuv
         bS6A==
X-Gm-Message-State: AOAM530BWWN006/7MFAadn9qxauZ++6pu7Zq5PRG6xjhRj/7lYL9W0Jv
        oQyt9W1m7jXbt8dlBcT6IN6t7Q==
X-Google-Smtp-Source: ABdhPJwDkWoTEk6q9d47XDpH702OOYetIjiWFsmlAezKbxWWazRMRrVJavPgTTsb7IhxxdKtMo59cA==
X-Received: by 2002:ac8:5341:: with SMTP id d1mr18926278qto.176.1600184567615;
        Tue, 15 Sep 2020 08:42:47 -0700 (PDT)
Received: from uller (ec2-34-197-84-77.compute-1.amazonaws.com. [34.197.84.77])
        by smtp.gmail.com with ESMTPSA id s18sm16463194qks.44.2020.09.15.08.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 08:42:47 -0700 (PDT)
Date:   Tue, 15 Sep 2020 15:42:45 +0000
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Amit Kucheria <amit.kucheria@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 00/14] Cleanup & sort msm8916.dtsi, various minor fixes
Message-ID: <20200915154245.GF478@uller>
References: <20200915071221.72895-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200915071221.72895-1-stephan@gerhold.net>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 15 Sep 07:12 UTC 2020, Stephan Gerhold wrote:

> After cleaning up the MSM8916 board device tree files [1], this patch series
> focuses on various cleanup and minor fixes within the common msm8916.dtsi:
> 
>   1. One more conversion to use labels to configure board DSI ports
>      (I missed that in the last patch series)
>   2. A few non-critical fixes just to make the device tree more correct
>   3. A few style fixes (e.g. replacing spaces with tabs)
>   4. Sort nodes in msm8916.dtsi/pm8916.dtsi and the Makefile
> 
> This brings MSM8916 close to the conventions used for newer SoCs,
> and will make it easier to add new device nodes (e.g. CPR) to it later.
> 

Good stuff, I like it! Series applied.

Thanks,
Bjorn

> [1]: https://lore.kernel.org/linux-arm-msm/20200720085406.6716-1-stephan@gerhold.net/
> 
> Stephan Gerhold (14):
>   arm64: dts: qcom: msm8916: Configure DSI port with labels
>   arm64: dts: qcom: msm8916: Remove one more thermal trip point unit
>     name
>   arm64: dts: qcom: pm8916: Remove invalid reg size from wcd_codec
>   arm64: dts: qcom: msm8916: Fix MDP/DSI interrupts
>   arm64: dts: qcom: msm8916: Use IRQ defines, add IRQ types
>   arm64: dts: qcom: msm8916: Drop qcom,tcsr-mutex syscon
>   arm64: dts: qcom: msm8916: Minor style fixes
>   arm64: dts: qcom: msm8916: Add MSM8916-specific compatibles to SCM/MSS
>   arm64: dts: qcom: msm8916: Use more generic node names
>   arm64: dts: qcom: msm8916: Rename "x-smp2p" to "smp2p-x"
>   arm64: dts: qcom: msm8916: Pad addresses
>   arm64: dts: qcom: msm8916: Sort nodes
>   arm64: dts: qcom: pm8916: Sort nodes
>   arm64: dts: qcom: Makefile: Sort lines
> 
>  arch/arm64/boot/dts/qcom/Makefile             |   10 +-
>  arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi     |   12 +-
>  .../qcom/msm8916-samsung-a2015-common.dtsi    |    2 +-
>  .../boot/dts/qcom/msm8916-samsung-a3u-eur.dts |   12 +-
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         | 2571 ++++++++---------
>  arch/arm64/boot/dts/qcom/pm8916.dtsi          |   84 +-
>  6 files changed, 1339 insertions(+), 1352 deletions(-)
> 
> --
> 2.28.0
