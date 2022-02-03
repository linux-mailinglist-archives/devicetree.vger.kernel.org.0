Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40E1A4A9128
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 00:27:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355989AbiBCX1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 18:27:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240907AbiBCX1K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 18:27:10 -0500
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2D48C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 15:27:09 -0800 (PST)
Received: by mail-io1-xd32.google.com with SMTP id 9so5383291iou.2
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 15:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ne0ZORFuDwUgC8aqjM4wX7CGP1Jo0bJOP46NZX2Toec=;
        b=leTpdfQNd4Zn0saReF9TO/gg+VcdQoP4DjI+kekHOxiXWyfA/GeCtp0hAXnHnMUTA6
         Looo4GggkZqHbndOQYLS2Va/7moL6leCED9FQ8FGDQjgnCCSnH5ttAfSTRNgYzHKYRfP
         hSVz7icboF/YLN4P0DwkKx5c1SF7Bb8ts6YM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ne0ZORFuDwUgC8aqjM4wX7CGP1Jo0bJOP46NZX2Toec=;
        b=jqk/R8lgHHIwsBo0NKor34S3v2M9Ni4dv0Nbi/fwcXemfh+z6i6YJbLL3xOLIZCK73
         bLalh+ltB+akALhiaoRRz5suMLqWvpmmNUCB07tphCQtvg8f95ROUL77e95nwjfmEYfq
         mH6nvrE+QGkDkfy6Bj1KYObpTy7coSxx9WUbJh4gGk4QspLfxG16+0NaX3sC4DYQmjHP
         hLsZmk7+Balf/+weNOJVeqbcsEcjvqNFvD++r71lulkSCUwcRZ0P5h+6sBYfgPLADgeD
         ZN1rpPf3xqJWk1zPkQG6hy4BDqCh1xI5Br56G8dB/OVT4z8SNQhxzS9Ev1P5pWw6Bjkh
         Mcyw==
X-Gm-Message-State: AOAM5331z3DKKOara7qgVyrgo2+fWUEIF7OAcp2w4uIXKDnaEfctGCcd
        dKJ9ThgU1VaIN2Ff+auLRX5AxIRELs3hMA==
X-Google-Smtp-Source: ABdhPJx+xXofaG20yrQGH46IsX0eh/+eaYfJS+FPFo9YIfK28o/Pl9fct/pMCzFbE9EwSjA21x3NUw==
X-Received: by 2002:a6b:ef06:: with SMTP id k6mr136901ioh.70.1643930829272;
        Thu, 03 Feb 2022 15:27:09 -0800 (PST)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id 193sm89056iob.17.2022.02.03.15.27.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 15:27:07 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id y84so5410265iof.0
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 15:27:07 -0800 (PST)
X-Received: by 2002:a05:6638:168d:: with SMTP id f13mr140596jat.44.1643930826719;
 Thu, 03 Feb 2022 15:27:06 -0800 (PST)
MIME-Version: 1.0
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.12.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
In-Reply-To: <20220202132301.v3.12.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 3 Feb 2022 15:26:54 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XXFEM4u78qQZoGrdxpSTjdjWQ_01m+af_Xz1j_TNNDJw@mail.gmail.com>
Message-ID: <CAD=FV=XXFEM4u78qQZoGrdxpSTjdjWQ_01m+af_Xz1j_TNNDJw@mail.gmail.com>
Subject: Re: [PATCH v3 12/14] arm64: dts: qcom: sc7280: Add herobrine-r1
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Prasad Malisetty <pmaliset@codeaurora.org>,
        Matthias Kaehlcke <mka@chromium.org>, quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        Sibi Sankar <sibis@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Feb 2, 2022 at 1:24 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> +&pcie1_clkreq_n {
> +       bias-disable;
> +       drive-strength = <2>;
> +};

As per the discussion [1] then maybe the above should be
`bias-pull-up` instead of `bias-disable`. I'm happy to spin this, have
it fixed by the maintainer when applied, or do a follow-up patch to
fix this. Please let me know.

-Doug

[1] https://lore.kernel.org/r/CAD=FV=UKKZaHHz3-idahLg-ey3xmSZWKeTVVipzpZNQAkUVKmQ@mail.gmail.com
