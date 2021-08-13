Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68C783EB30A
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 10:58:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233713AbhHMI6g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 04:58:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231582AbhHMI6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 04:58:35 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148F3C0617AF
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 01:58:09 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id n6so14648983ljp.9
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 01:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Go/2+Nr8/IPd0gMcjz2kJs/syLb1QNBBenHOoL/xe0=;
        b=Az3XzF1K+Slxm41YO7BXtPTbH8PCX6lQvvTdftzW4AJ+LI8DRJgXFJkX8x5B0qPk83
         MJ9yOeq5iQlm3Mv7HC6cqkVfcJaqsSQmEDgGsOD5EvPza99LRSbI5WJnCBQAdS1Vpac5
         XEpCKVR1KLpu6RJJm1mPASkYP+ZBwsGRa0zX6d6C097S1utT3q0Mptb77LjaKIzqgge8
         8gJ0EUkbxmCbjZJbpvGRhIrtVB6u2wcfVqZ9EiLgpGv2KKKtXfZTBz2Qp4A2XcjBPp9V
         5ukEITiwo6t3HMeAhrpfcpD4XXDkqkv+zzDVkcQZmHOVqRSdCUvu9LxkDp2ldzogvnWy
         j4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Go/2+Nr8/IPd0gMcjz2kJs/syLb1QNBBenHOoL/xe0=;
        b=AfojQWxjuxAIaAfxRKLo+FTVMeZmzKAnrdbZ1XUGX0JLzpHUVPE4DA2VJVUAu4CYFu
         2etu0/tRHq70uO71ywM5GvsDkyxkdZrC1WHPXsBVwHdeP/dricoIUOGJG+Ft4Oh5xEhO
         hepLPXo1c3Y1hwUG6GbjpEHJ2cKHSuacDp+inf2o+OHEsVgZtu/uiwZUIfOwBz6Fx7ZX
         R1ZTw6P0+Bh5Wm8oNfxJw/dHeUJ1Qq3SrSt8fNVy1jY5esgsEjIoSmRmz5wJoM9Zr+Fm
         gw55YznVws03bhUAs/zmu9+gpzEN+P8YWE65ujoOTPG7zeSHXfbANm2gBa0hWieCGN9k
         Nudg==
X-Gm-Message-State: AOAM533W22HBoNUPeR5L09Of9Yv4lHXOce3o6HTwCCGiTZiQKkcsuiId
        naVEFmeIkiT90HXDL5lmjsHMS683zlOR7FPCJR4F5A==
X-Google-Smtp-Source: ABdhPJyNaVTxTCBGNCrzgLPEQnUlZnlrJKZgtztD/0Ef7Ohf6blBSKOY6Thc5Lxa3SIc8Fig9WbOq4LhwcWuOaNywa8=
X-Received: by 2002:a2e:89c1:: with SMTP id c1mr1083515ljk.273.1628845086850;
 Fri, 13 Aug 2021 01:58:06 -0700 (PDT)
MIME-Version: 1.0
References: <1628830531-14648-1-git-send-email-skakit@codeaurora.org> <1628830531-14648-2-git-send-email-skakit@codeaurora.org>
In-Reply-To: <1628830531-14648-2-git-send-email-skakit@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 13 Aug 2021 10:57:55 +0200
Message-ID: <CACRpkdZteWY6X+prHeAF0rtPVbCk+X9=ZYgpjgAMH24LhOjhaQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: qcom: spmi-gpio: correct parent irqspec translation
To:     satya priya <skakit@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        David Collins <collinsd@codeaurora.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Satya/David,

nice work on identifying this bug!

On Fri, Aug 13, 2021 at 6:56 AM satya priya <skakit@codeaurora.org> wrote:
>
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

Is this a regression or is it fine if I just apply it for v5.15?
I was thinking v5.15 since it isn't yet used in device trees.

Yours,
Linus Walleij
