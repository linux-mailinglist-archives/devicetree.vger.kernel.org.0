Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C68744B8EC
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 23:46:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237396AbhKIWsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 17:48:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346554AbhKIWqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 17:46:15 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07EECC014A84
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 14:20:30 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id s139so1357531oie.13
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 14:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+tM5hwtc8qbA0vJnA/spVuUcAKq7RJsV9X1LvQfoH/k=;
        b=h7vZVQnWosqI2nzh5w/sb5vYzdU1TiyAsKdqbBralIgonWiGEc5UbZidtSleiF0hxK
         zJ+qaZ0+PaAS4lh02MOHHE9xLEDhPIp5BQxA3fx93Lm2208vnCLIj7G657nJ444On2Qo
         j/9VVwemLZGIoyT7NPEAnF7viu+czcGHQtnzxoot7eP1RbAxY/7BMsqntlSfVSTZMeAX
         9X2EOwbTvPS7xZohylFH8EdHRVWLpfu2A38P710onxxQx1QbkeMLPjBEDjcEE5pe978H
         n61UNe1JttQKTk339jLavJ+Y/l+LE/Gqos+i2AV6i3KH/A71sNxsfwvIShZJtWx3kHEJ
         qG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+tM5hwtc8qbA0vJnA/spVuUcAKq7RJsV9X1LvQfoH/k=;
        b=TOrH6gG48QpzcwSUndEdEXpFzG2DBKC1EoivtSLE0VKE+NrdeFGl+JPfXepL0VR8uv
         saSoBbkX3wcerTXxwbc/U7TaMRdW6agCOEJAGEKv8f6d1JiasK/UCJIDPvouK9Gckxxo
         pGgNX0ZC9Kd2FhpAbupl3p0mE+qFa/0CqjuAv4lFYqHQrMpcC05XdjLYqAoxiHplwD8q
         irudqePWJKfeVKkrEsX8Fv1sdcc96AM2DeI69bukRGvtm0uXyj4alUaSkE8XH6skI+Yc
         FL7WM0g3IecLQW3JdYu9FrNvf6BXhv3KL84uVjK3uxv0CUurzw2AbxZJpiVLYhafsJtS
         FaOg==
X-Gm-Message-State: AOAM531jQBni1BQugRXvCf7SRJFv/IQi7g9iUHlh/H0KPN7ffqWVJg5S
        DTHUYNFPS5A7yo1vaeFYZQ5c2WHRXMhzRA12g4bNdw==
X-Google-Smtp-Source: ABdhPJwS1A/efTpFOEzGt1pP7H+1n7DSmf2TzXrZeZBd93vSJksHoW0cKUO1zqPxehATkVkot2uor9tquBnaVfR43WM=
X-Received: by 2002:a54:4791:: with SMTP id o17mr9294816oic.114.1636496429410;
 Tue, 09 Nov 2021 14:20:29 -0800 (PST)
MIME-Version: 1.0
References: <20211109164650.2233507-1-robh@kernel.org> <20211109164650.2233507-2-robh@kernel.org>
In-Reply-To: <20211109164650.2233507-2-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Nov 2021 23:20:17 +0100
Message-ID: <CACRpkdZOuhA8w4CYetBKfaZ_wKT4QgKe=bffdYDTB68ihVE3-A@mail.gmail.com>
Subject: Re: [PATCH 1/2] of: Support using 'mask' in making device bus id
To:     Rob Herring <robh@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Sudeep Holla <Sudeep.Holla@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Guenter Roeck <linux@roeck-us.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 9, 2021 at 5:46 PM Rob Herring <robh@kernel.org> wrote:

> Commit 25b892b583cc ("ARM: dts: arm: Update register-bit-led nodes
> 'reg' and node names") added a 'reg' property to nodes. This change has
> the side effect of changing how the kernel generates the device name.
> The assumption was a translatable 'reg' address is unique. However, in
> the case of the register-bit-led binding (and a few others) that is not
> the case. The 'mask' property must also be used in this case to make a
> unique device name.
>
> Fixes: 25b892b583cc ("ARM: dts: arm: Update register-bit-led nodes 'reg' and node names")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Cc: stable@vger.kernel.org
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
