Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6B5D3233C8
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 23:36:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232408AbhBWWe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 17:34:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232412AbhBWWcs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 17:32:48 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BEFC061786
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:31:28 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id s23so2980271pji.1
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k1RzooZPZP1J4eGG1QIqaiAicm+Bu37ef5lc5yWEgH4=;
        b=t4xgPhOx/fSPdt9GfCu0R0De6/bDyWxmpEoRAnUJr3nOJHDifQWPwxokNt7mbELdv/
         bhXSf11bwUOi27tQcVlvVJPHO1IlOMaYoZugaRUA1LaNr3mDwYkdIZqTisVGAitkICPB
         SksJBCEwx31Zlzzx9qOeouKee4op1oBaHz6DunH3WeM4GcOaLffIiaxJ27Ae9+YfKPry
         MCb8qfSwnexxFOFNvhL1BV9lm+5yUsCqGRDaVHYeSjHKah5yInwLAxwbglzR9X7T/AN+
         uDOEaT977YBIAKlTyM5bpzHZabZwgUGEiJ5ZI/XtQJMq9u9AE+TZe7ellMGmv9G/Ixxn
         Fbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k1RzooZPZP1J4eGG1QIqaiAicm+Bu37ef5lc5yWEgH4=;
        b=q8dOZktNmV6alumGArZ4wsKa63cgPKETpmZ8wxmgav8drcfbGLpjdHW30xXuqHJoMP
         g12+FjUXGXAqai0dcpN1YfiuMJkHxfp6dZx3qN5pPVQBaQv2B78v8JWfp+pRA/xfCMNk
         KEDQc5bFssnengXM8wikVfBRLwxbnIghB491mq8XHOjqoS5cxxU5554Lxx+3WZhDTAVM
         /lt0Z0RGr3kC4hvw9OULfJjT3PK87WtpjoS6N9YoVZTVKcNOmMCZQovYyks2IwYog27b
         Wzb1gr8P9lDYmKwHwD9vxgw0O/qr7DaPU2Zzkb9WFdoS9P5eSkYPShOOzx8f4HOlvUgl
         HSyg==
X-Gm-Message-State: AOAM5308ULZqBXw5fQcinkmTP8vlOaMJ+kxeiHT7JaWZKzZjsAbnLBCD
        oJEWnVNvECwGIFeFHiarC7hZut/5ZborLp6D48RRkQ==
X-Google-Smtp-Source: ABdhPJz6AeMs16zm2xQVDtus3cuIEyeB5wTXLC2MGx6pelc1e0zKNRbFQm3TdaKPHwXT9D9EujJ0ZjjXUTabbAv7Wqg=
X-Received: by 2002:a17:90a:e64a:: with SMTP id ep10mr1079603pjb.20.1614119487708;
 Tue, 23 Feb 2021 14:31:27 -0800 (PST)
MIME-Version: 1.0
References: <20210216182735.11639-1-jae.hyun.yoo@linux.intel.com> <20210216182735.11639-2-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20210216182735.11639-2-jae.hyun.yoo@linux.intel.com>
From:   Brendan Higgins <brendanhiggins@google.com>
Date:   Tue, 23 Feb 2021 14:31:16 -0800
Message-ID: <CAFd5g44agiB+d5_RuMmL7=exhzUt=aSMEWMEgEkbAZCgH0JbJA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: i2c: aspeed: add transfer mode support
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Wolfram Sang <wsa@the-dreams.de>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
        Cedric Le Goater <clg@kaod.org>, linux-i2c@vger.kernel.org,
        devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 16, 2021 at 10:15 AM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> Append bindings to support transfer mode.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
