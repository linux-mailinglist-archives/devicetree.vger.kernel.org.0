Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84E953485FE
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 01:44:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239357AbhCYAoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Mar 2021 20:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239361AbhCYAns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Mar 2021 20:43:48 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A56C06174A
        for <devicetree@vger.kernel.org>; Wed, 24 Mar 2021 17:43:47 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id k128so233936wmk.4
        for <devicetree@vger.kernel.org>; Wed, 24 Mar 2021 17:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vWBcQk+O5w5ZvgV4pq/waxQRhDedExDmRWXVc+b/IuI=;
        b=hInPl+yNDf034aNHju9F3YAqrqp1/y0ExTbWexRha829RfFLk2Hy9M4hynnSS2ML8e
         39TK1DVMHGv8PZXn3z7Z1DDbEIAp+p/7Pqs3tT9v5h610mRCMd6H+D1WskSB2ajVxDDb
         R7u9C2BJFrmGpFvX0tj4xMeRkXnstdOe5DF8mbBOHPfaFtw+RgTwqRqa/WIwDYE027px
         xoobTYKvO1W/NwSjz9L1nRWdP3Ph6k2gM0OrGO7PwKiOyMo8iimjEjpP0Q+NPJnbNN1x
         tXVrV8iWmp45Z7qK8/ZB8XJWi7f5MgcNDaf1a4zNRk/2dJGZ/ZB02y0vyyLSOfjQkf3N
         6UHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vWBcQk+O5w5ZvgV4pq/waxQRhDedExDmRWXVc+b/IuI=;
        b=J9jD2ocYmQQOUlkkoTQ68XnKQ4HKSdv0KR8BRCqXvjUoGVkTQzLdDH6INTueVrdvSY
         WnKt0v6c4z9jLqbWTsa6J23TyNg02+Sr3iwGRnZxYOseZjlM2mFDMkR+NccWLg/WqgGV
         mfw6GSqKwNxbafKg74irV/U5AjEwbOjYpgN+EY3SnLPlR87JBYBoZIIOpLjgSQ24hF4V
         TRnlTOi20Ia9v7I6sriEhvJPJu7SnIy2Z5YUTz/UQxwZSbf3XbUnjun1/V6SYPJrR2Hr
         AiKgwxKQYq7iamTQoFxODWv6ijtW/uOuKyz25ukDrIfh6HzT2ojd7fN5MIECDNuP5S4h
         BHbA==
X-Gm-Message-State: AOAM531vvKhl0fiKU27gCzNRzhfbpVxTGJKP67tfFZ5WD6is+SGzVXwa
        SzhTjxEcqPJumqZ6GrUvIQZEyjAbE4dYtS1JIgCvgQ==
X-Google-Smtp-Source: ABdhPJz/pYFWjyr5mG6tL/R+zz4fNnQgSblxmrz44zvblkCJjVWnJmuDCSRraYJXsBVMIOvnpFo9ZO+bSBYt4N2l8m4=
X-Received: by 2002:a7b:c8d9:: with SMTP id f25mr2650652wml.157.1616633026427;
 Wed, 24 Mar 2021 17:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210320025942.487916-1-leo.yan@linaro.org> <20210320030528.GA488187@leoy-ThinkPad-X240s>
 <CAJ9a7Vgip=qmFE7Wmf64zHZwH=Rc_PB1zpyNGnNE4++Aqc6VQg@mail.gmail.com>
In-Reply-To: <CAJ9a7Vgip=qmFE7Wmf64zHZwH=Rc_PB1zpyNGnNE4++Aqc6VQg@mail.gmail.com>
From:   Leo Yan <leo.yan@linaro.org>
Date:   Thu, 25 Mar 2021 08:43:33 +0800
Message-ID: <CALZQ+UPEOTkkphtbv2aqLK6C=JuEj-TvmYhrBAtCfyJNX9MSgg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: msm8916: Enable CoreSight STM component
To:     Mike Leach <mike.leach@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Coresight ML <coresight@lists.linaro.org>,
        Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mike,

On Wed, Mar 24, 2021 at 09:22:31PM +0000, Mike Leach wrote:
> Hi Leo,
>
> There are additional CTI components on the DB410c - I think there is
> information on base addresses for these - but there is no information
> on connectivity between the CTIs and any components such as STM / ETR
> etc for any of the in / out signal lines.
> Therefore we omitted these from the original DT when adding the other
> CTI devices.
>
> It could well be that there are signals from the STM to a CTI, and if
> the information could be found then it would be useful to add - but I
> have not seen this information anywhere - and it is the sort of thing
> that is often missed out of hardware manuals.
> It might be possible to deduce some information using the Coresight
> intergration management registers - but this would involve a lot of
> trial and error testing

Okay, let's firstly merge the STM binding patch and later can consider
to enable DT binding between CTI and STM if have sufficient info.

Thanks a lot for confirmation.


Leo
