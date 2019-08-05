Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7970A81762
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728028AbfHEKtF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:49:05 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:34424 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727868AbfHEKtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:49:05 -0400
Received: by mail-lj1-f195.google.com with SMTP id p17so78909469ljg.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zyWsXMkk6iYIEgII1oOJY8ugYk5vzPXYCtQlb3UFPac=;
        b=p8YZD2U4JcoxOrifQes9j3JCaAfhm7o6USZZn0949Khu+OleChnYcRfI+39orr96Sv
         pDMdXHaz6fS1XUsCCKp0w4RcDrzKXKl6EOZwrYgE5dQHWk9iigtwULLPoyoG2BMVu9vG
         kvAuL51lL2OoTsLuVwBsGWfCtRbYG7VIc8NDjruo6AMYEtoZd+znBsmmHY2Ll8FcaqUQ
         0OPryf7N8p0erCSYcfVN7ycuF+vhWFALeWbYx0ZZ70eUMFPI/W44qRIj3MyVuOLOpH79
         r0lMZp7KsHkL2CF8P/dByC4r4M0tGxCRfH6gRf5mLdID+8voRToNX5qas9UKKdse0DK8
         vVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zyWsXMkk6iYIEgII1oOJY8ugYk5vzPXYCtQlb3UFPac=;
        b=bYecm6V+8e6IlPILTK81zfKv3lwVrfaWqwzSMpzPldTyLGzbOzfZxqnPWFReh/1nn2
         zZedNO6lAFFbn6/2m815umwX2HjndqgsZdE8sJOysbTKlFLfXlgX2mNTXqBXJlbpNAkX
         zq8USMQLSiwQ403nhjUuW/cblCAxfPgnDHcR30XcXhl/EktX8t8AmNt0351Lf/8ZnvPy
         GIG81Ra8waiYFnxAcGvquXJ2ZwvSF7AR4UYCx6XOVieCLkRqXkUhogZmIkYkPEIeUplq
         zANH96P7gDX7FfBIDNXaguriPhFgBSBsgZ6SXN97FYSsjfuoWiJHaI3qTdRS4VlOIGsO
         PxFQ==
X-Gm-Message-State: APjAAAWoQI/2U/TPWHK6/fxSq9qfWFEYNbOo6haIh2KmQJSOjMhGjsZz
        EiT+s7zTr2VqUeqCC7AYjOO5KWZi0otbrEzyPnxdrg==
X-Google-Smtp-Source: APXvYqwv1epfSf4ijzEUccvR56Qz9qbH+rnx/bhn0Kh+aaPW/inmXM+/zCQxf4A9MHgYUbFT258fn6fea66xtBqoGC4=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr29589680ljc.28.1565002143043;
 Mon, 05 Aug 2019 03:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au> <20190724081313.12934-4-andrew@aj.id.au>
In-Reply-To: <20190724081313.12934-4-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:48:51 +0200
Message-ID: <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated compatibles
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Guide readers away from using the aspeed,g[45].* compatible patterns.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
