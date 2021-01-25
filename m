Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F300730324C
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 03:59:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728766AbhAYNfK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 08:35:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728946AbhAYNe1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 08:34:27 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89C4BC06178B
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 05:33:17 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id a12so9604896lfb.1
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 05:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L4R/wl3TDCRclCdmZUfeMtDP0T5U411eEJj27c7YynE=;
        b=vtEe/N1ZmZ6Sl95ijm7xhnVcVMDIiPgQn3B1Zk7BbNlmSXhDhonrNJVUrvrEOmRl31
         n+bBVKKmdlWBnuq6jwTEoMGMeQKCsxfDLbu7L9IL6qOzppHBhq18Dw6NKWB1PYwQt3yg
         rL2R6XOfWpwHsruEKJKuWeS52N+CCWMVTGkbP9zOSLljpxV4oGByj5scciQxnDFVPklF
         ETuPOgsUqSnmXb/Od0f+KgKf2lwcTCLTa8NhL4jnyrebVJm480ZtXAJ5XMjEp/soCrLl
         dBZRHrLkEKijyDzHlTgKnXfgXZVVr5ApDcdGB1q0eNtNYputeooewEsT9e7afBdtDq/H
         upFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L4R/wl3TDCRclCdmZUfeMtDP0T5U411eEJj27c7YynE=;
        b=l3yleIjgzq69gKwsRgVHyKKIIk/kXf5zTaMpe9zkY463QRbKOEay+xTyJIhuxnEHOH
         1rb8qi/Xr8owAl4R23begMWWnGB+Tzb468Ii5/NLU/TW65VQUXsqOrcLB6EWQNiGhyj4
         X526gdODLLdxu4AN1k+zXQXgZlQmPd0fcY2VvFuukoIdcrv/4c96b2XI+MQKn6l9l9ch
         OkP9M/OAPrlybLxQav32mrWU1lnhkuGd2UTcUsTIZN7BgejSQBD81SZI/qmpdxfwHc09
         34Sb4n80z+bdkeTtgknNTm4OjkOHni2yFveKpE9+dvLTlJjTVzWT6GfmdiXtK8Ff25cx
         +csQ==
X-Gm-Message-State: AOAM531n8LrnrWgEUpxaI23Ob6ZCa7QDX1vaFh7SMPH06WoELl9Shm0V
        BnmCxMX9wcTqJl7vdqIiWcLdB7VV9mOzaLCq+CkvAQ==
X-Google-Smtp-Source: ABdhPJzIYl0XNdKXzQjkkZZ6qYmMBvr3r3ONv9DtPEzzZpl4dtywviUhglPRlZYE0y3qz8iD/SWMLszr9br1P5H0zVE=
X-Received: by 2002:a19:fc06:: with SMTP id a6mr274138lfi.529.1611581596094;
 Mon, 25 Jan 2021 05:33:16 -0800 (PST)
MIME-Version: 1.0
References: <20210124170337.32917-1-marex@denx.de> <eb8c62eb-87c1-0011-49ae-260239daf79e@foss.st.com>
In-Reply-To: <eb8c62eb-87c1-0011-49ae-260239daf79e@foss.st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 25 Jan 2021 14:33:05 +0100
Message-ID: <CACRpkdZi6SeTa8_R6+8W6gZpSOshJg+ziXUx-Qi5mcsUXMdMvw@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH V2] ARM: dts: stm32: Rename mmc controller
 nodes to mmc@
To:     Yann GAUTIER <yann.gautier@foss.st.com>
Cc:     Marek Vasut <marex@denx.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 1:58 PM Yann GAUTIER <yann.gautier@foss.st.com> wrote:

> Do you know if similar patches are planned for other platform using this
> IP (Qualcom, ST-Ericsson, Arm vexpress...)?
> I found issues with them when running this command:
> make -k dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
>
> Maybe Linus already sent the info?

I sent patches fixing the Ux500 and Nomadik platforms.

The ARM platforms use mmc@ when I looked at it briefly but
else point it out to me and I'll fix it up.

Yours,
Linus Walleij
