Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6A423CBCBF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 21:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbhGPTmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 15:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232746AbhGPTmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 15:42:12 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45B3CC061762
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 12:39:17 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id t143so12162997oie.8
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 12:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=fv7DMd/gditUGd89KsZv6kzGs+OqmSKrVvU2f7TJ2+4=;
        b=Mpr02/1AW3f18Bb7yv3Nx1eLLmiLG8qlYaDWjqSEtb94u3VXNqZpJIFPZF5AZAYrv4
         euboawnbYOrMxF3OPRs0jHyxBRjazEdcT3+6u/3TkizPZagpBwGvU/SFpzT/UwWPaIg7
         C7Tsk1W2jc5M2wXUoEfxlsxOCYO4QqPm0KNzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=fv7DMd/gditUGd89KsZv6kzGs+OqmSKrVvU2f7TJ2+4=;
        b=V3tSq7nNATcm2QEmPw6gyOYWSnuOLJ2SBye76GrjXwUK8N0gQyVoiL8qPSTCKwE+Ev
         dg6fXWxlOuzQOQ4jlxwcj6tt8R+D0N6Mih1kVv/rWFiGAuBbKXR4iT42IJgfc8PMaQ0h
         +hb/BQbxrs8czgAKjrgPx0T5zOH7qlX3nLpjzAoG+BCy8wc71XUEdyElHMCV8BQLJBgs
         E7bCo63wTpR6gpMGWrXKog74QRrkzs+EMPuICH36UkVwNUo7Q3GyqzUU1vSUi3vIZeej
         FUVO2u2zTSns4k5C3O/cCveY0mpDPjrgSeNeslBFn4Pdcg3Ni9IOaIRRj1nhK3G5T1WT
         6arw==
X-Gm-Message-State: AOAM532Ip7MKvetSawtbOq71SQRcqUwiABvdxGJJC2UnV5xbBsIImZoG
        1AHs7XpfAJS6fvYHjVtd8KZCuCKJQQuSweLfKwS8cg==
X-Google-Smtp-Source: ABdhPJycyfU2OpnyY8fwekR9OEhg1REuKFzJyJ9WFoqtk/B5zwwVo35Tvga6/Erqr4MKZV48CnYi9IgxHuWqdIpFqW0=
X-Received: by 2002:aca:7545:: with SMTP id q66mr9245579oic.19.1626464356697;
 Fri, 16 Jul 2021 12:39:16 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 16 Jul 2021 21:39:16 +0200
MIME-Version: 1.0
In-Reply-To: <1626429658-18961-3-git-send-email-rnayak@codeaurora.org>
References: <1626429658-18961-1-git-send-email-rnayak@codeaurora.org> <1626429658-18961-3-git-send-email-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 16 Jul 2021 21:39:16 +0200
Message-ID: <CAE-0n51y2JEy-singr5i9gFFO4uGJ_UVDFChNPUwnTEBO=5kQg@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: sc7180: Add required-opps for i2c
To:     Rajendra Nayak <rnayak@codeaurora.org>, bjorn.andersson@linaro.org,
        ulf.hansson@linaro.org, viresh.kumar@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        rojay@codeaurora.org, stephan@gerhold.net
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-07-16 03:00:58)
> qup-i2c devices on sc7180 are clocked with a fixed clock (19.2 MHz)
> Though qup-i2c does not support DVFS, it still needs to vote for a
> performance state on 'CX' to satisfy the 19.2 Mhz clock frequency
> requirement.
>
> Use 'required-opps' to pass this information from
> device tree, and also add the power-domains property to specify
> the CX power-domain.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
