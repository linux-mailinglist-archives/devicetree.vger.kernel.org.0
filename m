Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E21FF4B58B0
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 18:39:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348777AbiBNRjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 12:39:05 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232042AbiBNRjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 12:39:04 -0500
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 438436542D
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 09:38:56 -0800 (PST)
Received: by mail-yb1-xb32.google.com with SMTP id o19so48179915ybc.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 09:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nn6pV9zr7Y/HfRsxvJAInmjq54QbtdPj0RXX0Okyrk4=;
        b=EBDcE93JVDHCmCw9qrdUcmvIQzBJjyUwD7fn1+GwStxogaP2u1MpX5ILriuk6jdn2a
         H6QDWolci+D/lOiOOCQNb9YZPP7NXq9WolVe/6G7XqHqeHuRnQ7Wu+Ty7C8g8vwOE/un
         m0DJEjL0mXIcxFxlzzHYd7ziHU/YlTUx4xnNH8F9keNDVvqMNV/g47KfDldt/G2WXx+o
         +GDIPzh2XzqftTGjVs6g5fitl0dwhCCJQb5i/HWPKZn5dqOs6gtKvXyXdvafMNjKRLqV
         BAroGLQAEX7uERraGbi7EvcLYyyBWJ2rEwvwhCxBP5FRurs/GSHr+ceny/Hw/D3C58u3
         e7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nn6pV9zr7Y/HfRsxvJAInmjq54QbtdPj0RXX0Okyrk4=;
        b=pNcCi9adQlAJAMEdEjoPCnO5geoKPiCdrNWd0UY4QSMGoow+UChTb+90xnXhKbYIpK
         MY1zdlvcprSjJ3zinAT7IaorfvtnLYx8pRHzIyMC2lWIoKcXpIhyEx3v9gvBtqjG1gdU
         TMT9pzYAWYSCyju1XjTIgqGbgewrxnoGBY4Qnkf0mSf+3VROv3g8Xb8NLR2VRMXLXrlB
         h1p85FnJl70M51xmY8XVHoIukKZ0bXaumJxq6IsMpMJPfaqbdtmOWJXaYw1AUVx7Fxme
         PQJ6Vfi1d8nL4J9hs9Tn7IcXFX6U5xYdofIodyUe4Q7J+JOdy8u6Mx+7ScWm8CjcKncZ
         ZOUw==
X-Gm-Message-State: AOAM53385CXQD7rj2kABsJ9C9EbMWm63jZLvcyvddsrD7k1qkq0FjlWS
        Cbwkyg6DMzKArRVBk0AlztlfqOr/zv5TiN/7IdDrZCr9Yu4=
X-Google-Smtp-Source: ABdhPJzGaFahdaS9OnnivDBgzQhJSbtRiZO6xabYT+mvz3LNDNMr4zN7qlSTQ3PGiHjgQpWre/4gtNLu+fT9GjPv+rs=
X-Received: by 2002:a81:34d0:: with SMTP id b199mr779268ywa.385.1644860335419;
 Mon, 14 Feb 2022 09:38:55 -0800 (PST)
MIME-Version: 1.0
References: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com>
 <20220211202728.6146-2-alyssa.rosenzweig@collabora.com> <5ca70986-d6a5-7c3e-b876-40e970805775@arm.com>
In-Reply-To: <5ca70986-d6a5-7c3e-b876-40e970805775@arm.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Mon, 14 Feb 2022 17:38:43 +0000
Message-ID: <CAPj87rNwh28GYv_CoQGB2UCqfP8A=ORiem5Z+Vev=u6WZ7YQRw@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: Add arm,mali-valhall compatible
To:     Steven Price <steven.price@arm.com>
Cc:     alyssa.rosenzweig@collabora.com, dri-devel@lists.freedesktop.org,
        airlied@linux.ie, tomeu.vizoso@collabora.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Feb 2022 at 16:23, Steven Price <steven.price@arm.com> wrote:
> On 11/02/2022 20:27, alyssa.rosenzweig@collabora.com wrote:
> > From the kernel's perspective, pre-CSF Valhall is more or less
> > compatible with Bifrost, although they differ to userspace. Add a
> > compatible for Valhall to the existing Bifrost bindings documentation.
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > index 63a08f3f321d..48aeabd2ed68 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > @@ -23,6 +23,7 @@ properties:
> >            - rockchip,px30-mali
> >            - rockchip,rk3568-mali
> >        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> > +      - const: arm,mali-valhall # Mali Valhall GPU model/revision is fully discoverable
>
> It might be worth spelling out here that this is *pre-CSF* Valhall. I'm
> pretty sure we're going to need different bindings for CSF GPUs.

Good point - maybe either make it arm,mali-valhall-jm then?

Cheers,
Daniel
