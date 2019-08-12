Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B9FD89B1B
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 12:15:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727623AbfHLKPJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 06:15:09 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36221 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727409AbfHLKPI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 06:15:08 -0400
Received: by mail-wr1-f66.google.com with SMTP id r3so10324275wrt.3
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 03:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=MIUyKFqvrV6Iriy5J++Bt5lmEJciQ4Nm0oLpNRJua4s=;
        b=JR4azrcfAINC79q/jxAC5q7wpl2GKtG+oqSduyMfzGNi7MCwG1x0vzQwWE5XWnUsqn
         4rvq0ZyF2vO73A1od36hoy/HlgAwsQvByuaSCf7qgoFk0pOoRmactaeJq+N5rrNr4nL0
         sMHmT+JJqQs1y47xUz0okyakzzuIzsZIQGoTNgr4MGMcXjg3SNLTpn0uQpJpePxfemI4
         eB9TFJRJdK0BAqRd3cOv4t3yykDlaiC8dePribs8TWaAdBtswdtwqoRGP8NGraDpCip6
         8mqPQZISI27VYMKq3Sw4FiBoVw8kpXQ/RGpijePMRLwvuqDyia8ETir7eum49Jot7nAU
         gSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=MIUyKFqvrV6Iriy5J++Bt5lmEJciQ4Nm0oLpNRJua4s=;
        b=kQrMZMyc5BPnNBZwkC7x9XexAQ+KEZ2+8ta9MlNnhGhS+DadL6/kxXYQu9vLyFUkUP
         KMblIx5cat1k4lbGVETezj8X+TBpxloaTZ0imShCaQb/U9WamJ+P/SftOslgHX9Q96WH
         6Pvr5IUD+ybwWaWZEx4ZeRrYOENVm6QPFw8GjUOdA5QGH+uKuCUllWv+z5wYw+NKYCL+
         sARIwjLC4H0XubisD6J/3wSpr+SN6uaA5IFARsYGJzMgtOAG0C10uIIt9mg4k3NJM81R
         qujvfa0+BBczh+gBHWF6ADTWuL/KxvbgYKxibIG7/2oLjPmbu10PN1+GnDpN55XnuXEx
         0LCQ==
X-Gm-Message-State: APjAAAU8IDp0cOh9gDF39IdfmN+Xu62aLztyKTktskXLpSJ2NFe2fyzl
        ISgKpfGzhF0Maa3wCJoMQwXjRg==
X-Google-Smtp-Source: APXvYqz48A5YFBe5piSydrG0TZ+rpOGZ4/18TlUR5pdHjlvP/9aDOmhZiCfxMVH17iE2WGkbx8bxMw==
X-Received: by 2002:adf:f042:: with SMTP id t2mr39835533wro.139.1565604906881;
        Mon, 12 Aug 2019 03:15:06 -0700 (PDT)
Received: from dell ([2.27.35.255])
        by smtp.gmail.com with ESMTPSA id d17sm14629320wrm.52.2019.08.12.03.15.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 03:15:06 -0700 (PDT)
Date:   Mon, 12 Aug 2019 11:15:04 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
Message-ID: <20190812101504.GF26727@dell>
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
 <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 05 Aug 2019, Linus Walleij wrote:

> On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > Guide readers away from using the aspeed,g[45].* compatible patterns.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> 
> Patch applied to the pinctrl tree.

With my Ack?

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
