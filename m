Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A46793D1273
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 17:33:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239319AbhGUOwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 10:52:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238585AbhGUOwf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 10:52:35 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14FC4C061575
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 08:33:12 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id y66so3251943oie.7
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 08:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z+G3Vv4B1XazSc4gX4wiFgRgrHQ34F/awuea1pT1nKk=;
        b=FTb1NMduBfSAFMwVExJiFCVoQxRqCQcCQW6kpI0C7rpfB/MokLphIaTraL/H+IG1Pu
         0983bvNl5MZU6WHpzdrOGHl2rGyZf7kerto33svOS8jHphkEFisuAiUNgFyp4DwF7wCh
         r5d4XsJPVY8bkYvgYUxbmfLrVIMQNQwDYCc1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z+G3Vv4B1XazSc4gX4wiFgRgrHQ34F/awuea1pT1nKk=;
        b=F7FdV4kyAQUfjyU0eOAZLHHJ/YaC6/5hCgeoyaRfGuoI7JtDjESX8r5vRuwQo+jY/R
         K0yeoKCbOFDKaSQld8vsaFIdheRVMZPFEK56Kg98xTOY6/hcq9k5nb0MsOpi/aFbETco
         9dr1S3BuV+oNuh+Jw7UHh8CBc6nZc49gwAZmY8SB4Bff7lb0Q0ocNJEVd2EbzjAFLKLa
         Mmhyyshvse8YTJXyobWsQDZRfQKmxWFppBTaSyzFv1qdqzo12DjHxjMxyvtkTpaza+x9
         K57xb2YbqZKOoUZcBli440JURRGkySeKfXSJCQwSv8kOKLdD2Eoi/KCVel87KNGpWO5b
         kF1A==
X-Gm-Message-State: AOAM531Dukq1ckLnOSRJCVp78BiAEmzgTwyQfC1gTeZaVA8l0Ckj/apj
        Crc2B1inz1zcEbsOOdQbQa0UKJ7UBvJTgA==
X-Google-Smtp-Source: ABdhPJzp3GPcA790kGecLQ3WuIf6a7fL/iwhcoqf/7AeHJsc58lybp98AoU2QA0ELcQlS6eSVCSIyg==
X-Received: by 2002:aca:d907:: with SMTP id q7mr3025985oig.79.1626881591297;
        Wed, 21 Jul 2021 08:33:11 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com. [209.85.210.52])
        by smtp.gmail.com with ESMTPSA id p4sm4460374ooa.35.2021.07.21.08.33.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jul 2021 08:33:11 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id s2-20020a0568301e02b02904ce2c1a843eso2380247otr.13
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 08:33:11 -0700 (PDT)
X-Received: by 2002:ab0:c07:: with SMTP id a7mr37239648uak.120.1626881232268;
 Wed, 21 Jul 2021 08:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210625045010.2914289-1-judyhsiao@chromium.org>
In-Reply-To: <20210625045010.2914289-1-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 21 Jul 2021 08:27:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VXULSZXqt-wjMWC4YqehGJsoeC0G=Kuut0xPPKo9AEWQ@mail.gmail.com>
Message-ID: <CAD=FV=VXULSZXqt-wjMWC4YqehGJsoeC0G=Kuut0xPPKo9AEWQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: trogdor: Update audio codec to Max98360A
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Dylan Reid <dgreid@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Judy Hsiao <judyhsiao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Thu, Jun 24, 2021 at 9:50 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Use max98360a dts node to correctly describe the hardware.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

I noticed that you landed several dts changes recently (thanks!) but I
didn't see this one. Was there a problem with it, or did it just slip
through the cracks?

Thanks!

-Doug
