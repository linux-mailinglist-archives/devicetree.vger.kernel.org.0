Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69E8E3A11ED
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 12:57:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238396AbhFIK7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 06:59:31 -0400
Received: from mail-lf1-f53.google.com ([209.85.167.53]:35449 "EHLO
        mail-lf1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238755AbhFIK7U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 06:59:20 -0400
Received: by mail-lf1-f53.google.com with SMTP id i10so37333132lfj.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 03:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=87HfZUoSam1Hj5S8TdQpI9fN5J8chFoyRyEZDkMSWsg=;
        b=I4qlBifs66UHfPIn9pi+nxyXtPWrfhxcOHxYNmPPiAH8/W6Qb1S0Q5pBdzrqs/t7Vp
         IRJn9lTVXBNEf0HOeJlX2yMFsWfHivrDGr29aIDvLt1J3EUABi5GCZ3kgc6Yriw4vJ1w
         wQxzFFAUTCxH2sn8FNWC12MvVhXtIHgEhVWMTfNb+L8UF/hKCTgqPb1osJPvOcZ4lkUf
         GDLn4bwkji6Olt+IeLD/0eJHy9T6cbgrah2uY7xWb8qYvSbNzoa+VydZwF1yPl1eCea8
         UYO5cB96iwEJMRBCG2cBNHcjpiy5ORTRIHvKZR87oM9H4i+BjaiNIbkvLVEwW5PK1Yi7
         cUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=87HfZUoSam1Hj5S8TdQpI9fN5J8chFoyRyEZDkMSWsg=;
        b=dqHaS/q4Q4XhexQjINjm9xjzchbNn+OArHQdAQA+UbctWV/bghMiQqBmqBXht7+KFg
         zBsk7N5IG+rO1L/ilZfOFrNCt7xEwRlokpPfEgpmKqTooQUd31XYwB7OLEuAUoxqxVO8
         FuFtsjx6uW7pYqb05VjcVGXj5hydbGP51cN6MlxdV6tLDfSff2WMAjbrGkuhyL1gDB3H
         IodZCclR9V0y51zGGjZKYbEP+8kHxAxyI+QHoac6JxYLYbrWGUxb3nCeXWd5pQDQnMLL
         XqJX7vAVdOeW7ZsxqQbrSixGxlHB9yC3eCq4ZTWXFaE2O2Z5RcckiRY0GhMTAG892ieM
         7y+Q==
X-Gm-Message-State: AOAM530siDUe5k+dN/wDk0YE/gOG8zVNf09pRsyGAXtM0QnoN2nn7+Ah
        fKPJFY64mXhi3yYfSg+YCcZYgsu4rBOf6WTWgwgcHw==
X-Google-Smtp-Source: ABdhPJwyyLOSVDHD6xy//SQ6Dxok+fUmy6nMDsA1kMyW4Bv63nlLmsPRRDhkJ4n5HjS6xxaihmzKFoMEHJwhTfhojcM=
X-Received: by 2002:a19:8157:: with SMTP id c84mr19013747lfd.529.1623236173438;
 Wed, 09 Jun 2021 03:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-2-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-2-ping.bai@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Jun 2021 12:56:02 +0200
Message-ID: <CACRpkdZHjAkfeEUQOkYov=mYjxqUomyTJL-Vhtk=3q8n23RLtg@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp
 compatible string
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 10:29 AM Jacky Bai <ping.bai@nxp.com> wrote:

> Add the compatible string for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
