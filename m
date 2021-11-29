Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 105324616B1
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 14:37:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241301AbhK2NkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 08:40:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344866AbhK2NiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 08:38:18 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F781C061372
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:15:14 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id y12so70821460eda.12
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rou4pRkJOQKrkwM9iYNfP2xhm0pSwKIOsmwdXqm2KCk=;
        b=Sb/IWAF/Hhlr82pyhvplMDC0a4LdkBZtLThJPQEKY60guM1/Jz5HF1upBe466BAGar
         XT+E52u166pFFrcFsm8V4s814waPHpccFcl4em8dt6kgeX6lUKsJPsyVQyVDtphIAcCE
         zX+0gaGCx/c8smHHt6zH3W2AyLC2anRmKOT2XzDqjQkPPxqOLx9LR34ty+vlduueHGft
         p2kn38x7DZbsg/26lvqIiW5mRSaM/7gJdPBTiOOD5j3oyjm7P2S4oiZRrmirsxV6Rnm6
         YMeX+lUk1/Z3iaxXTVZjuFAQ1qSPtH3eMPSH27yhY8kYV4tEWP/gdKt4MwyEnz/c0XFi
         CXNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rou4pRkJOQKrkwM9iYNfP2xhm0pSwKIOsmwdXqm2KCk=;
        b=RtBUwNSdr+rCqtsSW/2YSN8D/ab7swZi7Q2NqUCjJwhR7U27y4EVEwIFDTwFPRTO8p
         9hVv4mKMxQyO6y6OaxHTdbwDNQ4wM1CdO1svQbl79SaIJNc2TCjUBfzMo3PYhwEjnPPU
         eWTPpP8R91AoeY/lTcetCublYfnIklb7HIr0w6JIFDLdwPte7Z30QgkS4zcwnu0XiAUJ
         y76R9CBovQmrPxeM8zzaMgEDBsodGORWp/lN5Z+2yu9ClMwpGCsxp6Gz51fIkIWflW9N
         EJDo+RMYP2IAKL+Lpf58vVeZuKddP/Usk1jpgzXUm8cqIKxMeqX4qEk13m6Hywi2EfSX
         q6Sg==
X-Gm-Message-State: AOAM530MYoszGn6A3/D9biaLLmOwE9jKoEkBerqXizhWrRTbkgh627ER
        HvHQP4Uls2rpH2w4dPBcRmCRgfpz7Jcd+UeJ5p/xO9iYRRw=
X-Google-Smtp-Source: ABdhPJxKenxE8Fuc2uEWhdJ5OaU3u7PfxeXl72lxBq51H5tU+80x06TBDToO080t3NzzJrmZUT9pyIckGdhZqVpgWzI=
X-Received: by 2002:aa7:c946:: with SMTP id h6mr74871032edt.190.1638188112437;
 Mon, 29 Nov 2021 04:15:12 -0800 (PST)
MIME-Version: 1.0
References: <20211126151729.1026566-1-knaerzche@gmail.com>
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Mon, 29 Nov 2021 09:15:01 -0300
Message-ID: <CAAEAJfBWFeDxZWPev9ysGWWS-m7UEBPu==NrzfNe24_gb+LuBA@mail.gmail.com>
Subject: Re: [PATCH 0/4] add GPU for RK356x SoCs
To:     Alex Bee <knaerzche@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alex,

On Fri, 26 Nov 2021 at 12:17, Alex Bee <knaerzche@gmail.com> wrote:
>
> This is a respin of Ezequiel's series which adds GPU for RK3568 [0]:
>

Thanks for picking this up!

Ezequiel
