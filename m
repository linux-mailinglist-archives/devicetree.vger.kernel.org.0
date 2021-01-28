Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD04307146
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 09:20:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231992AbhA1ISX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 03:18:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231915AbhA1ISQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 03:18:16 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5925EC061574
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 00:17:36 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id q8so6433539lfm.10
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 00:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6UUPO56zRHIcd1GGmE9q6C6hc7jbcbMJSOt0JbCE1PY=;
        b=tNYn5HjEhmrxYsyOI6paQCtk4XutacdpJb6s45x4bcruVIEvtNaxmpI9bJvYDCKQQB
         Maob1jxRcCHcmkx8Lu1JMQJ6pPdzo2f1ULgSzSnWIRBIkSAqGevrWQP4HtHitu/3xcgd
         CQE+RPWdOI0LSfqkfdmsVPVeUHV2k+RmxLX+s/m3EIncRDg70Rh9mXZzOwzw6yYORuXu
         XTHj7vmhuM+MGb8f6Znn1vjAfpaElwdmvyoMwjG8+Kx5RdEkLzHHKoVQKVFUGr1qJ/3D
         lQbY9P3QTQ9whmaremBq+ZaqzIoI80BKYXLlfJsceuKvi+n4GVTu5qztMwFudfAFkfBq
         7XGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6UUPO56zRHIcd1GGmE9q6C6hc7jbcbMJSOt0JbCE1PY=;
        b=Rf/PSIqQzEUs5vI6qCOB/8kfGkYbqIbYvecI7dJDvGdbjQwetzTR/15cSXc2YbjyIR
         kuXBVapDGBvpWtGB3e3tV3E9rA63HdzMLap0c+oKe1JxiFr2tLACut3ZvZNvXqk/8ktU
         VPtOp5ayXtNZPwbWO1SqpJyeGJjgSnUGlQaIHgjOPIL8WcQs+55M9L/gXk+mDlGXxzo7
         h20CgPexx2D0+AyjN9GEoQj7cOH+c9WXB6cut0/CTRioueOTyGLHFbR+STOhlLwh5QAL
         m9NiMvLaSqSmr9lHBU878xoZlyIdnVHIEeJXwk47WY5LYE5e0fyKxBb/HdkIWF+ZctcU
         U2zA==
X-Gm-Message-State: AOAM530U8nmwfDY5SSxweEMeEzWscN40lpeta2Ae4/gaBTRhFntKrpLr
        Mu6fiDFmwQXfJtjSVV9bQPcTK5l1m1Pb1cwrHJbpHA==
X-Google-Smtp-Source: ABdhPJyFkTnYADY3GMqkCQcxbWIGND0JGm60R62dLMZIsQBHeSNbgkO3acjUCd+bes6A0vp2FBcf6/8Zf58N3zwRMfk=
X-Received: by 2002:a19:b8e:: with SMTP id 136mr7276317lfl.29.1611821854852;
 Thu, 28 Jan 2021 00:17:34 -0800 (PST)
MIME-Version: 1.0
References: <20210126131239.8335-1-o.rempel@pengutronix.de> <20210126131239.8335-2-o.rempel@pengutronix.de>
In-Reply-To: <20210126131239.8335-2-o.rempel@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 28 Jan 2021 09:17:23 +0100
Message-ID: <CACRpkdY2XYi2jqYiXaBUfRO1+UEK3QCC8JQ0duENVGoOfYTmBA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: counter: add pulse-counter binding
To:     Oleksij Rempel <o.rempel@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        William Breathitt Gray <vilhelm.gray@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        David Jander <david@protonic.nl>,
        Robin van der Gracht <robin@protonic.nl>,
        linux-iio <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Oleksij,

thanks for your patch!

On Tue, Jan 26, 2021 at 2:15 PM Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Add binding for the pulse counter node
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
(...)

> +properties:
> +  compatible:
> +    const: virtual,pulse-counter

What is so virtual about this? The device seems very real.
However it is certainly a GPIO counter.

I would call it "gpio-counter" simply.

Define:
  $nodename:
     pattern: "^counter(@.*)?$"

> +    counter-0 {

counter@0 {

> +    counter-1 {

counter@1 {

Thanks!
Linus Walleij
