Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFABB6CD7
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 21:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727648AbfIRTlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 15:41:32 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:34364 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729275AbfIRTlc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 15:41:32 -0400
Received: by mail-lj1-f194.google.com with SMTP id h2so1173402ljk.1
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 12:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DUtNy6zmsY/nY12iTbVrTLFA5neR54fGcg9sdDNwfEY=;
        b=fVyFu7iCUvOtyuHv+Xj2YthhNrZOr4I5cNqzFjMxLMOPNrE71+G8H1jVo9wOMKgtTc
         TNIIlFcXqPJtyGWq7EIhgQ/QTvke2Pgso2evo8wAVJRrFT99b162lg4tZoUwvjLXnxF5
         bBF15QD8KKnIOevl3afUFS9klNlHkQ2aatRIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DUtNy6zmsY/nY12iTbVrTLFA5neR54fGcg9sdDNwfEY=;
        b=dfeZmHg39l9cttok+O06OnrSIKu4Ohc3NuaS+yTzGdfB2+qgFzrxKWp2Un+tT+Ho6M
         TBOdFNelQYZLigXgAfj3Es8cXiz2Bm1T0SH5s0S1/h4ecOR470RvptuunC2l42vo7KGZ
         mSuH3ovscV6oi1vxlx3a4CzbbaEdAj9jR6MmcQNupW91lNuf0tkOxlP4SMcOa8lshr3w
         tVOq4ETyy2sUxbeh5nAYFaMJHaxUGYxuPhNjzI6vEhmAK6xaITRKqdfnYYUZUT3X7gms
         RAgEsr/0cYSpH4ND7mQ3ckORW3hXlt+uZO/dUE76Pg2naJZfRealyPgV4hV0QnqS1gvM
         p37Q==
X-Gm-Message-State: APjAAAW5PjgV5705E9WTgS/wu4vw1XfAglo/10jJ9VIcK3T2ZOmcBAvJ
        epLxRaZoqAaqn+c9aJcE+jtdQ58kpmE=
X-Google-Smtp-Source: APXvYqyPYnPYzP6TXOu0dyhkW555BmXKJ0KdJr2IMTDAo1Xzjb5ojvA623R8qQoCTr19L5DQgRB80g==
X-Received: by 2002:a2e:9096:: with SMTP id l22mr3165834ljg.125.1568835690145;
        Wed, 18 Sep 2019 12:41:30 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id a8sm1198857ljf.47.2019.09.18.12.41.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 12:41:29 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id a22so1178202ljd.0
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 12:41:28 -0700 (PDT)
X-Received: by 2002:a2e:9881:: with SMTP id b1mr3145788ljj.134.1568835688462;
 Wed, 18 Sep 2019 12:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190910160903.65694-1-swboyd@chromium.org> <20190910160903.65694-6-swboyd@chromium.org>
In-Reply-To: <20190910160903.65694-6-swboyd@chromium.org>
From:   Evan Green <evgreen@chromium.org>
Date:   Wed, 18 Sep 2019 12:40:52 -0700
X-Gmail-Original-Message-ID: <CAE=gft6=4m79QX8Bca9izRUUkumio_YKBNY8aY=XPjj=WE_BYA@mail.gmail.com>
Message-ID: <CAE=gft6=4m79QX8Bca9izRUUkumio_YKBNY8aY=XPjj=WE_BYA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] soc: qcom: cmd-db: Map with read-only mappings
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Dan Williams <dan.j.williams@intel.com>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 10, 2019 at 9:09 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> The command DB is read-only already to the kernel because everything is
> const marked once we map it. Let's go one step further and try to map
> the memory as read-only in the page tables. This should make it harder
> for random code to corrupt the database and change the contents.
>
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/soc/qcom/cmd-db.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
> index 10a34d26b753..6365e8260282 100644
> --- a/drivers/soc/qcom/cmd-db.c
> +++ b/drivers/soc/qcom/cmd-db.c
> @@ -240,7 +240,8 @@ static int cmd_db_dev_probe(struct platform_device *pdev)
>  {
>         int ret = 0;
>
> -       cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
> +       cmd_db_header = devm_memremap_reserved_mem(&pdev->dev,
> +                                                  MEMREMAP_RO | MEMREMAP_WB);

It seems weird to have both flags, like: "It's read-only, but if it
ever did get written to somehow, make it writeback".

>         if (IS_ERR(cmd_db_header)) {
>                 ret = PTR_ERR(cmd_db_header);
>                 cmd_db_header = NULL;
> --
> Sent by a computer through tubes
>
