Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E8B508175C
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727739AbfHEKrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:47:46 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:39893 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728395AbfHEKrq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:47:46 -0400
Received: by mail-lj1-f195.google.com with SMTP id v18so78827565ljh.6
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y8ev7idhhRdfNKj1s1Ry4AVA7oMVl5Zr3nXpss1zKaI=;
        b=ciULGFpaKJGyGIn8DOiYc74jQEChvVXjT78X89byv515QioWQ8LKIbfQAuDjjBHX0u
         2v96i5afuwQhBnrogqn47DxIdQ6IXLNkLuZlMVG4x6a1f5+CocddiYovSrGgDzIeaYl9
         eh3plobRFsDauaUG3bJ8BELTRTjE8G/gGmjrGwh7GJiYkb3tJLJcGkGeVT1dsHYihhl3
         GYFXPEWHP48uVedVSlamsufiFTMi4tv93b+CpDlI5z2Hw/Ov2d5mulyYBb78YzfeZOVC
         J9cIbZmLoNriGN4BVqAx2ZWMRZuB77qLfRD3VaDOLL88RFAs7lNl5JDiiDfL67UkuCtD
         u1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y8ev7idhhRdfNKj1s1Ry4AVA7oMVl5Zr3nXpss1zKaI=;
        b=lVp2Ha9MOdYc1NwPzl4jekLMQOkCYyJ3wbWtAOi4sPee4KCkfa/mDGaBw4GBBz+lOy
         AGSnGhn66ESZGrmuI/6lcX6YHgcv9zELbUWfNqsBKANKgBvup0I4LuR3AlblzDUdZGdF
         Yvj5C89tVP0DrK68Ji3+OSZwoSstAp8PNYvDj9sHlFkZrHkzKtTZC5IF937RDLeCTokl
         Ip5RHJci5Aq01vGqr96nhYygF0Z6mUvIYC2XTMowi540DJGpY+K8kQqs8ZX8DSM6zePS
         97sPz55pXAqK379DpcedjZXcjOKLAbnB8sXz28v9oh2mAIFOJNISL0wcELH8qDilIq7M
         lw3Q==
X-Gm-Message-State: APjAAAXDMN8Tx1YKDzYQAUTMyc/9Os46XchJjG/XLkFXJPiwYmNMsdGY
        D7q/w5S9Spgrr3fEMfBdUWRbFYOmTzVnP6U/MxEnig==
X-Google-Smtp-Source: APXvYqwLJr3uamyVrePIy7GYeTGTKZVVFmuCgCeDV0lQp/Tg1tMYwqSStWcsZi8QVF2EtXjzVZWC8D1lN3Mn23V8cVg=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16495379ljs.54.1565002064570;
 Mon, 05 Aug 2019 03:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au> <20190724081313.12934-3-andrew@aj.id.au>
In-Reply-To: <20190724081313.12934-3-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:47:32 +0200
Message-ID: <CACRpkdYoiWwm7SeXxWgpJcoiRcNV28CDC3F8FVx5my2Q0KSvvA@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: aspeed: Document existence of deprecated compatibles
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

> Otherwise they look odd in the face of not being listed in the bindings
> documents.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
