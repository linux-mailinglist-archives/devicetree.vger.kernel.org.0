Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5B39563CB
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 09:55:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726242AbfFZHzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 03:55:03 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:37634 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726239AbfFZHzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 03:55:03 -0400
Received: by mail-lf1-f67.google.com with SMTP id d11so901850lfb.4
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 00:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uxdb5wlFiHBkF0SzBr5FCoS6f7qiRJDmJ1nDITQi0Dw=;
        b=m4n+hEZBjSl7z0DhNNkX163BSsqoZWM4Vv+1gORRGXGEyJ7mgvy8Zc8GCjHlf4UKZz
         SzMf+PwcnfQVBQlF5KWvIDwyzUIxJ7y8dF0ZlSMbLEux5PVwVzK4/wbX9p4C8vgQ/cLs
         OUbHAOtvtatcVcy7T1n4ClVtN3VfJxaFeTz9bcmjm4NswEVlKTTEOdLN3B2cSJv7ML0f
         dvtb1Yp4GYrbdmAvQMxiXVkk1qnZ3vPnuwsJuJsMmiLyQuiZlld8WbxJpyxD51HVUsuJ
         2K7Yy6aTQwOkloLhCUNTijNxeAkHbkDQA7u5SUW/B8m94CyiFyIogZRFeit4jthgmS/Y
         vi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uxdb5wlFiHBkF0SzBr5FCoS6f7qiRJDmJ1nDITQi0Dw=;
        b=NuHhkR3sU8Xhc80LUcUEceKVzg9KbNkxRPfIUC33hsH0BUNh40ZJnAWrw6s+wkn/5z
         VAI+EOtg94uRW23Xtk50qzNxEpooxLEQG93vvDNlP5l4lG1G31NrKwjfm+3zJnHijZH0
         rKUv2Pw4AkbbEuIUn1Z703ppobZw7741o/CVCLL/w2bID1S1y1wQCErgrsms4RFqpliI
         EKoW8Z1DgQa1em3rhHP1al+ECldR0PBZwX/9otl0kQ/gzyD3HRxId8dhzIgox0uc1nXt
         WZeOYleVwemY21MtVYnuxoRZtN/9NzXGlXRAv8BZ6FHi5iu2ZLFr4cUwj8myNrPEvy8O
         0vIA==
X-Gm-Message-State: APjAAAXSSq5t+LTvAJ4eL7p1UBYijeNxWz30odEy1Ub+Chw60RDxSe92
        uCIVqKEuFUTWT7gefawa5NkfL4t01lWafZexi7MzUA==
X-Google-Smtp-Source: APXvYqzo+qALg1dJHN8BZKGNryj1b2QPxrO2/Ylr70oC8XJ11Le0Cn/eflBCqD0MzHpKgDWXJ6rrs+q++1xhp5JnKPs=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr1916988lfm.61.1561535701468;
 Wed, 26 Jun 2019 00:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 26 Jun 2019 09:54:50 +0200
Message-ID: <CACRpkdboxjMmeb8feffyG5JJ7fGPR6hqC8sc+XV5We3TC__LXg@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: aspeed: Preparation for AST2600
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 26, 2019 at 9:15 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> The ASPEED AST2600 is in the pipeline, and we have enough information to start
> preparing to upstream support for it. This series lays some ground work;
> splitting the bindings and dicing the implementation up a little further to
> facilitate differences between the 2600 and previous SoC generations.

All looks good to me, but Rob should have a glance at the DT bindings
and YAML syntax before I proceed to apply them.

Yours,
Linus Walleij
