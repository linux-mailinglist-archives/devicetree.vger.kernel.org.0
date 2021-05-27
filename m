Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F22F393963
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 01:47:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236474AbhE0XtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 19:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236103AbhE0XtX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 19:49:23 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85553C061760
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:47:48 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id w15so2998912ljo.10
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h2q5bxqiL3RmhUQgZjWS0StDo6w0kZxEVUhgbpPjauE=;
        b=cSDGAxeChyN935ODp1inJLu7l0S13MyTsKIRSsqXOK6cXm+8i2omLijZJqU/JUH6Ah
         D/2OlVMBYcjb+AyQZg7J3MeEfF0BG3Vaugml//5QcemxM/+aFpgZvcLCb0bZfY0IIal3
         R5slk2oWlepD6l/bsYyrxkhjN43IBFyYL25ZFccy1lkZCi1dVZkWlfopwoxaSYvLqHj5
         Bf/dx6Knm3aucrzCINO61otLB0vyjLch4hgNIs2IoH8pmbWm2d5ZHGBinREHNkUXlMVA
         ZSfRBTBsslzQjNbsP+PZSrT3qPiw9bYhxfIrI1mTTzeUPb1fyeFG4n7X/NA0ROkKrpnJ
         T+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h2q5bxqiL3RmhUQgZjWS0StDo6w0kZxEVUhgbpPjauE=;
        b=eWHLS2G3fcHQZWhPSknWjznIjfJGH4mslLffqHjmp2DCnAgs4799q/JRScmBShCylD
         8lNTlEcq7QNOjKZLy5sP5fsQnMLPiae6k4p/1T+v1Tkrwuc2HbOsP4LdcubxhvfU4Asx
         tfraXtOCQ6ctnAELOFvhXCBEx2ii/KuTZzBtt9z+vtBqC71Ih/P8J0BaNfFJz6yyR3PU
         NfhFfLk8aQ6vEfAt3PKK8AoifotyW4M4Dk4/6rJsEHRc3V3Q5J1WFfTxL3vZkdTa0jqQ
         tkG8P0zhLfi6TtuVbUduJseT/lHipbR+aifyCquj8og083PcdX9exQy0fN8pxdC4G5pC
         +uxQ==
X-Gm-Message-State: AOAM532SKU21GcnCRjYpALErA1lFnK6fwS3Qj5wLY9qWGaX1oJV+Jw+E
        xTS0L7cVNlnjswDpF+/rGTOT1TYeszpNC2GIrKwKNA==
X-Google-Smtp-Source: ABdhPJzRZIXUM5v0L9y/J3SYmWZlTefoTYzbZzpPJiwkvhwh8H0h3EDZMkqNbakFaetCMO0USRSrvzBmrnlu03IJpJ4=
X-Received: by 2002:a2e:90c7:: with SMTP id o7mr4436100ljg.368.1622159266928;
 Thu, 27 May 2021 16:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210525055308.31069-1-steven_lee@aspeedtech.com> <20210525055308.31069-3-steven_lee@aspeedtech.com>
In-Reply-To: <20210525055308.31069-3-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 May 2021 01:47:36 +0200
Message-ID: <CACRpkdZy0UwaJcYTiM9asVwNh4wuEYdMSrmqAPAiikbrvjtKpw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] ARM: dts: aspeed-g6: Add pinctrl settings
To:     Steven Lee <steven_lee@aspeedtech.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        "moderated list:ASPEED PINCTRL DRIVERS" 
        <linux-aspeed@lists.ozlabs.org>,
        "moderated list:ASPEED PINCTRL DRIVERS" <openbmc@lists.ozlabs.org>,
        "open list:ASPEED PINCTRL DRIVERS" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        Hongwei Zhang <Hongweiz@ami.com>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 25, 2021 at 7:53 AM Steven Lee <steven_lee@aspeedtech.com> wrote:

> AST2600 supports 2 SGPIO master interfaces and 2 SGPIO slave interfaces.
> Currently, only SGPIO master 1 and SGPIO slve 1 in the pinctrl dtsi.
> SGPIO master 2 and slave 2 should be added in pinctrl dtsi as well.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this patch through the Aspeed/ARM SoC tree.

Yours,
Linus Walleij
