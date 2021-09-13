Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65667409D8B
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 21:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347681AbhIMT7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 15:59:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242202AbhIMT7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 15:59:07 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524DBC061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 12:57:51 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id i8-20020a056830402800b0051afc3e373aso15018646ots.5
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 12:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=9YZhWzpxyNUlpJr6t9C7C760t9g71yk4DJVlf+sXdZM=;
        b=hWbEgFUQr0H4+RS43yKtrL13njKGDIJjG7hBi4boLfE5K+40onnCN6rHryoGeN+Uje
         OBy3ICY9wngqcKvkc707AUoV+nEjWLZZ8rDALYis/uYWw7MgsXc4w7915ID7PERll0cx
         tWO8j3WbgXDES18sBHKpdR4JNFbW/TOc1SGm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=9YZhWzpxyNUlpJr6t9C7C760t9g71yk4DJVlf+sXdZM=;
        b=5Nh+sTlYvvZXyrGtwacji2JTRjijiDStSPmgIEYsdKHbgknQYddL+huNLQCCiZEkEI
         yswvVZyNKHmLjH165tT2glIQMZYDi293vP937FENSqEfz52//eU8ElPyaCZ5t69aRt1m
         MoBhnekpJulIFL48J74qN093kVVX6tdibtLiDFyi06X2nhys6wyUXIpPna/CbvnOMkmR
         wKBGhIFvegfZWIbL8lXB+Q3t22StZj8lg96FxHyK+bf+Gt4D61CqNOJSgEaiknLTFucC
         6SnA0c7+EYCe5nobtppO+85SWH0iSKMFi2zqG7ahvB2kZpsBpMXPzIeRPN7KRQjcstGO
         15zw==
X-Gm-Message-State: AOAM533Op9K95Xd0RzK1cpiOwr0M4TWpSd5TymsAw2d6osptb/RZPO/C
        XpACVgO9abDVMl35KmbOHE6md2EQ+LABUk6AyFlxxQ==
X-Google-Smtp-Source: ABdhPJwnpthj3s20/xMB/ipgXHexaFXvqlqJtzTI13dJKskHQx5dndaLmSeRZZ5+JUjj+dET/P9VkISYhGwU5Xiu1HA=
X-Received: by 2002:a05:6830:1212:: with SMTP id r18mr10783901otp.159.1631563070744;
 Mon, 13 Sep 2021 12:57:50 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 13 Sep 2021 12:57:50 -0700
MIME-Version: 1.0
In-Reply-To: <1631167288-27627-2-git-send-email-skakit@codeaurora.org>
References: <1631167288-27627-1-git-send-email-skakit@codeaurora.org> <1631167288-27627-2-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 13 Sep 2021 12:57:50 -0700
Message-ID: <CAE-0n50TizsABPRSKp87RD9eU_0Yti+16ND05BX4QFJUoHKuCA@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] pinctrl: qcom: spmi-gpio: correct parent irqspec translation
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        satya priya <skakit@codeaurora.org>
Cc:     David Collins <collinsd@codeaurora.org>, kgunda@codeaurora.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting satya priya (2021-09-08 23:01:27)
> From: David Collins <collinsd@codeaurora.org>
>
> pmic_gpio_child_to_parent_hwirq() and
> gpiochip_populate_parent_fwspec_fourcell() translate a pinctrl-
> spmi-gpio irqspec to an SPMI controller irqspec.  When they do
> this, they use a fixed SPMI slave ID of 0 and a fixed GPIO
> peripheral offset of 0xC0 (corresponding to SPMI address 0xC000).
> This translation results in an incorrect irqspec for secondary
> PMICs that don't have a slave ID of 0 as well as for PMIC chips
> which have GPIO peripherals located at a base address other than
> 0xC000.
>
> Correct this issue by passing the slave ID of the pinctrl-spmi-
> gpio device's parent in the SPMI controller irqspec and by
> calculating the peripheral ID base from the device tree 'reg'
> property of the pinctrl-spmi-gpio device.
>
> Signed-off-by: David Collins <collinsd@codeaurora.org>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Fixes: ca69e2d165eb ("qcom: spmi-gpio: add support for hierarchical IRQ chip")
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
