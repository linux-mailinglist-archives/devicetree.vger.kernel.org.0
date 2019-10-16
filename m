Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16C60D9330
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 16:00:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405684AbfJPOAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 10:00:39 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:41046 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405682AbfJPOAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 10:00:39 -0400
Received: by mail-qk1-f194.google.com with SMTP id p10so22810531qkg.8
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 07:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gqml278NTu5znyLj4o9Te22EdTDlURV2Qw1cIDtLTt4=;
        b=VTvgClYQ4A/Fh9y5c/hd9xtq28k1VhkkJC6Lae1lj1lS9CSeatI4xJUFt7aVOZWMpC
         c70NFA/b7hFsue6/wOXLILAIv1rMEqDmIBvWLgw6pEyTOArvK00uv3y2ezSbJfK//Mo4
         i5r/NkgWwB3lrYFwN5LcQ2tCGu8aeZgWrDRUWzHNOOQGwGamIoEpvEQqymVoEvVUbbPM
         BMHUwKj6KZhVgqPx3JZOk8L73cAWjLzEeo4NDhHQfPwLXBPLSaQKGY3a2evpL/0tLBHW
         9QGKALZPSodLHlZ5Ia7E3FjNomYdIpr+7Yb013hif8sY1MGNRGE4+poi7QzFf+5L98II
         qPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gqml278NTu5znyLj4o9Te22EdTDlURV2Qw1cIDtLTt4=;
        b=Y3CluiF0FY3ZQ1Pc2S5Xw05YywbtaN16Vep8Trm2ctBNBq/9Cl4SIV0pc/NQMN39zV
         apjy59Z8L8axmfAeg+DvfZhhb6MZ9WWOrEYfy1hbMVu1xt2N6LR6HnjscZNKN/PxTaIq
         qImVm+cJf/QHwiV438CIlWd8M0SGBg1twvMiffeQSSA4Mlh4ktIoOLNn7I49coLbK/Hl
         +8z2QGw45Dlj0R/7In6fxa0q9azWfeizV+Y+oReh3nEKZbbP65VeTJYUyt8iH9y9+sIS
         PY4MyMYaQnYOBOl+4sTyuWsBLPwrujD6DX+Z7F9SZyELkGVvXrjFtJluWBRUoVDaT+Jv
         XnlQ==
X-Gm-Message-State: APjAAAUIOVA/hLlmYCFxE2yz3Kr3QB10kIt/5HbfRdWlC1fdqPxVxu5D
        cG5fvTzn/287oq0JuGtvZv+nSh4c2N1OrcxLWOGnmA==
X-Google-Smtp-Source: APXvYqxE/W8Wym2zPEoThfzgBl+Y8q8y0M/tZiDg5SGuXU2OGToGJCLrZSvaS15buTSq1qqdW86Kkg/8vbhVY6QMYW4=
X-Received: by 2002:a05:620a:34b:: with SMTP id t11mr38547340qkm.213.1571234438671;
 Wed, 16 Oct 2019 07:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191008044153.12734-1-andrew@aj.id.au> <CACRpkda5cWaA7R3XzyiERCCgwUrjnXd+wCBeKvt-wtjex7wNDg@mail.gmail.com>
 <2de90789-c374-4821-89f9-5d5f01e7d2d6@www.fastmail.com>
In-Reply-To: <2de90789-c374-4821-89f9-5d5f01e7d2d6@www.fastmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 16 Oct 2019 16:00:26 +0200
Message-ID: <CACRpkdbmbyNmW8tL_L0agBajomPybXsjn9ix_F5-B3fZnfuW9A@mail.gmail.com>
Subject: Re: [PATCH 0/7] pinctrl: Fixes for AST2600 support
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Johnny Huang <johnny_huang@aspeedtech.com>,
        Ryan Chen <ryanchen.aspeed@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 16, 2019 at 1:42 PM Andrew Jeffery <andrew@aj.id.au> wrote:

> I was hoping to get them into the 5.4 fixes branch: I consider them all fixes

OK I moved them all to fixes.

> > I need a shortlist of anything that should go into v5.4 if anything.
>
> IMO all of them should go into 5.4, as above.

OK

>  It's there something I can do in the future to communicate this better?

Nah it is a complicated process, things need to be done manually
at times, overly obsessing with process is counterproductive.

Yours,
Linus Walleij
