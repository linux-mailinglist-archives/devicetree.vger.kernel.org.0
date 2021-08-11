Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04FBD3E8FF9
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 14:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237454AbhHKMA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 08:00:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237448AbhHKMA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 08:00:27 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9482CC0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 05:00:03 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id y34so5120036lfa.8
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 05:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QntYPwFND9ivHl8sCJvuIY4mpIehwKkRWinAMkSwKQI=;
        b=Q0Rl26bYxsSXpjb/CTuzjeMm5nCjftG0kx2CothuzSLlucNNJW0/NiYUD+62g5T/7F
         Z6Kfdw4iijdQB++sg5aqqT5FQ0Tb3T5im+W0cIQIlxEl/a066C0h+hS3qpvE4YxDcHjf
         6jBnQ1Rd6eFzB3xnkAlhaTdmU88Vw6bFzINRxoDxd0bGZTCqRQIG7K+by4B9VecmTBmd
         md+lPrseDhnPsickBg5Ex4+ZC+BL370H+N8yZipMuK1n/5klrHg5Zp8AdANs3POX0LYd
         KR8d5D3i3fl6Lev3XJrkthKG2Y/zZvfBJWQH7X8WGaIvMNexPiteMDzi85vfI244aZFe
         uaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QntYPwFND9ivHl8sCJvuIY4mpIehwKkRWinAMkSwKQI=;
        b=LgulHD+6MPN2pXQn7I68aGSnvAwndLdheCehcF0LVaZn6YjQIqEQmtMAU3Rb5CNk49
         nasSf2xS+0X8kSkuAP4qDhzyqZnQHe1pbirY0/LWT73WtGX8DSZm/Vy6Xt4qMXWzbLly
         FuNGReFtAHlfel5yptzUvresCJ4CoDwkZqC6OdNkJKOAQyB0/KqoqRarSX4xY4m5USjC
         CNWzJAPUqt2aCx7mCA/UFPGtcj5Do7OkzVHDB/OOEBWnH99NBotX929Dw+MC1rc6WD5V
         D4rBdj4HI6ZJZznKdyeahdN7eb3OXzg4d8jT9+2l7JkamTPfroA7IspIMh5+jCOWKLuq
         aIRw==
X-Gm-Message-State: AOAM532WCxbOcJonw9BSP/T2lSmmpxkIXjhBJKzzhmNFMJBpG1A26A0g
        Rx+cPX0Rps83eTncCdVT5t2iPKIWIXy6F3Nfek2bFQ==
X-Google-Smtp-Source: ABdhPJzqoMybmK8uaattKPYwTnFX/Xb8AOXz9OVi7tq94+ZUBT0mQ9v5TUujLzeL/jhAn7u4PSiH8KInRYVs+H4KkXk=
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr25656028lfd.529.1628683201902;
 Wed, 11 Aug 2021 05:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <1627910464-19363-1-git-send-email-skakit@codeaurora.org> <1627910464-19363-4-git-send-email-skakit@codeaurora.org>
In-Reply-To: <1627910464-19363-4-git-send-email-skakit@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 13:59:50 +0200
Message-ID: <CACRpkda6f0QTuW2p13OyPDer4B2NgAMWC5FMN3XrGx5NfL=zUQ@mail.gmail.com>
Subject: Re: [RESEND PATCH V7 3/3] dt-bindings: pinctrl: qcom-pmic-gpio:
 Remove the interrupts property
To:     satya priya <skakit@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 2, 2021 at 3:22 PM satya priya <skakit@codeaurora.org> wrote:

> Remove the interrupts property as we no longer specify it.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied!

Yours,
Linus Walleij
