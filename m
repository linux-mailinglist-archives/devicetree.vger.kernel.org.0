Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44D0E432940
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 23:46:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231938AbhJRVsT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 17:48:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhJRVsS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 17:48:18 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFB6BC06161C
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 14:46:06 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id n12so11095978qvk.3
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 14:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O/q48JXWMaZxMGZNH2ea25Eia5Gi+Z231/aB9DP8nAI=;
        b=AbXn4vfjK9uLMmUsYmIaTqwvikm7krHCabUvqkEkxYmZL4MTWIDdXvuwL/kEFBrfV9
         zPZVrkLmzyzBwxI3K9nd5Y9rwOTOs/nGzLsbeLLEqvGNBfAJXfKiX4RnD5QlFghufypZ
         so3BpGgJaADzX4z+/Uijjwuvn10GiEf/V+rJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O/q48JXWMaZxMGZNH2ea25Eia5Gi+Z231/aB9DP8nAI=;
        b=W1lQmWY3GnUjCvzHUp20w8Wccwgxy/a735IwjM9w0t34f6QuSXN1yMBFxHqfoGwPo8
         weW7XC/tlPZRXhEEUNchsj+8eImEkIAlDB7O1rCjsGoTsx7tgCWy/JgvudYRuj50YYYF
         ioY+zT/cheNP+JEuD49EYqFuvP84e+Zsq6pRrjqR0FBirhmhObx9glV/7C+eBDsdWbeM
         1qF++M4CPfBhkfgLEWuR40IEzY3Bv7tWaV2ceREhRRsUfhQka94S25Z7scedx0hSvnhL
         vBEYumJMs37QKJw/xnzCK/jDmcMsiHp+AasRSH0mdqAvYzgwNMdkjJ9azGwBwlzeupER
         uVIw==
X-Gm-Message-State: AOAM530BPbITPCT8YMvJExFQaFRAqTK4HMNd5Hu+4+e9LlR1urGwm9oE
        hEFA5uSh1Ik/njF4llrR640GtOzdlgy/GA==
X-Google-Smtp-Source: ABdhPJwjpPqUF+2mHHH8gVOHWLiUfonFwGNmIQU0zRQcf2YUYdfnWh6qgrVBAmZBON1K9IUWrAjjCA==
X-Received: by 2002:a05:6214:2a45:: with SMTP id jf5mr27332710qvb.25.1634593565810;
        Mon, 18 Oct 2021 14:46:05 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id i13sm6655660qtp.87.2021.10.18.14.46.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 14:46:05 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id t127so5453859ybf.13
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 14:46:04 -0700 (PDT)
X-Received: by 2002:a5b:102:: with SMTP id 2mr30963560ybx.101.1634593564543;
 Mon, 18 Oct 2021 14:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <1632892123-11006-1-git-send-email-rajpat@codeaurora.org> <CAE-0n51Vnb1YKZKtg-2iSK7r+50RrbURW5TN6Wyvc+9b21jZNA@mail.gmail.com>
In-Reply-To: <CAE-0n51Vnb1YKZKtg-2iSK7r+50RrbURW5TN6Wyvc+9b21jZNA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 18 Oct 2021 14:45:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UJQ1J3_Kmz+8tArUQfjmSMBMOs2K=yhMVDaLjusnW+SA@mail.gmail.com>
Message-ID: <CAD=FV=UJQ1J3_Kmz+8tArUQfjmSMBMOs2K=yhMVDaLjusnW+SA@mail.gmail.com>
Subject: Re: [PATCH V1] arm64: dts: qcom: sc7280: Add 200MHz in qspi_opp_table
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        msavaliy@qti.qualcomm.com, satya priya <skakit@codeaurora.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Wed, Sep 29, 2021 at 10:31 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Rajesh Patil (2021-09-28 22:08:43)
> > Add 200MHz OPP in qspi_opp_table
> >
> > Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> > ---
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>

If you're still accepting patches for 5.16, it'd be keen if you'd
consider taking this one. Thanks!

-Doug
