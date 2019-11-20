Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABF301044E3
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2019 21:20:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726947AbfKTUUu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Nov 2019 15:20:50 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:40111 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726014AbfKTUUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Nov 2019 15:20:50 -0500
Received: by mail-lf1-f67.google.com with SMTP id v24so600588lfi.7
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2019 12:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EaeubB9oup5HPqMiD5Vl71T+HPv8UFVWjeFHFcqOIRg=;
        b=g6z3K/E68Ogd7jMI6ZONW7+DAdhxqpPKHIDEaoNSMtYue8XTJ/HvPPAXCzSxcQ9Myu
         tKo0KxfliQKm/v2eXdO7SoooMtGHZNBg9sJGfWmqJRszcUhYyJ6q2zAw7qkYAuUbJ/1z
         nz8h5YA2W7XQOvrRod7zoL9FoSiIkybl2X0BzoPlSs7mQ96rO/e38Tum1oHxvHjbNKrF
         kVMHz8sS4IlV7PVQho2QUBLFlE7pzSZ4+U0bxv8vYB3yc3OdSHmATUEej2S7CEHwwQNb
         Iz1SCfMdz8IB+vFT3qsYCb2SF3h6aOuTdCajPLIzmSlJ/7SC+Rlc4H90C3eNj/O1F6H0
         QupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EaeubB9oup5HPqMiD5Vl71T+HPv8UFVWjeFHFcqOIRg=;
        b=HrEN9xeheENJYTZWUHLoyF3tTaJ/v3CRiGyzjh9Wx/FBLkI3EzHH1hbNxet0sM788e
         zHwGFRu9yINGYDbeLzL6emtehay02W01SLaja03qWWXOOjvLBU5GIUPkbpZgj1NS7BC0
         zBYMLPxHQ8cZnjLqmxfIyRR4okPoUESON2RKbYoP87iFk01EevMSSCuGUBzQurOiLwpv
         HRH4Z0eCLHRZpkOxj8vb+kQ9prY9lJS1cMpoI2zP8cqpXRrZmUvT68ZbyBHYVnf49ZEm
         N+u5dnYmjFPUruN/kX1OaRss22aP1L2jfLUf0nIZcvwP+RIZiscZMnLkRWbeJMw3RNWI
         mDaA==
X-Gm-Message-State: APjAAAVUBPjRXnQ5dkembsvdnybvBHjH6+nEczDA35vkzfLHd7YxEgzG
        tkF8A0JAL0eLJ7GCHxqJyofYxrVzV0X9/amPg3vuHQ==
X-Google-Smtp-Source: APXvYqxhbKk0D/bHbd56rMIcDb7oudDKdTswz6YCWF2G7ykBMmGOeVyKBHsxVMNvRMkkTI0Q37OuJ+n8wDj2M9zOHLU=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr4212581lfi.93.1574281247289;
 Wed, 20 Nov 2019 12:20:47 -0800 (PST)
MIME-Version: 1.0
References: <20191120181857.97174-1-stephan@gerhold.net> <20191120181857.97174-2-stephan@gerhold.net>
In-Reply-To: <20191120181857.97174-2-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 20 Nov 2019 21:20:35 +0100
Message-ID: <CACRpkda2UJB=dA+1ydBqSu_0D_+xoRX7jCCYEZDE-LPv67WxrA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: vendor-prefixes: Deprecate "ste" and "st-ericsson"
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 20, 2019 at 7:19 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Until now, device tree bindings for ST-Ericsson have been added
> inconsistently with one of 3 possible vendor prefixes.
>
> "stericsson" is the most commonly used vendor prefix,
> so deprecate "ste" and "st-ericsson".
>
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

FWIW this is the byproduct of Ux500 being used as guinea pig
and shooting practice target in the early days of Arm Device Tree
support. I still think we got out pretty clean :D

Yours,
Linus Walleij
