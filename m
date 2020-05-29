Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71851E8295
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2020 17:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727121AbgE2Py1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 May 2020 11:54:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:32994 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727097AbgE2Py0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 May 2020 11:54:26 -0400
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4BA002072D
        for <devicetree@vger.kernel.org>; Fri, 29 May 2020 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1590767666;
        bh=727z0MzokijBc/N68UkwTJGjq3Sxi05X3K0ayOXmq2o=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=HJ4JVHniKMSqgzZFpQdBoL1ablUXUwKJfmnonViXsmwWHq13cgnQj05Lce7R3yTHw
         glpcpiM/HSbDCoygfcPxDUeDYr3+/8nywdINp/0qsvCNVKnfK9bHoBfjQ8NyRu9WC6
         nyvzcsK5YJEKsYKFrt3Eg4ITggZa7AOxovwBOt50=
Received: by mail-oi1-f171.google.com with SMTP id w4so3001973oia.1
        for <devicetree@vger.kernel.org>; Fri, 29 May 2020 08:54:26 -0700 (PDT)
X-Gm-Message-State: AOAM531wyN0vn+STajxDWm4gSo7OLGIBkZVH+5eFCGHif8Zb0LRFae/e
        /zWHoqu8Rq0FLG2CM6q8nJd5mdkYL0gK5DN/TQ==
X-Google-Smtp-Source: ABdhPJwO9tPmRK4UcXLHPfWmR47hlPB4NgDEdD5d82ySRDDwGt6/UIqjF1pJnjRWy40i+fYovgcMfiQ5gJYhKVBMr3E=
X-Received: by 2002:a05:6808:7cb:: with SMTP id f11mr6553511oij.152.1590767665682;
 Fri, 29 May 2020 08:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200528132323.30288-1-geert+renesas@glider.be>
In-Reply-To: <20200528132323.30288-1-geert+renesas@glider.be>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 29 May 2020 09:54:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJOPd2txkz298Rs12N+keJNYg2_qjCc-3vDwtL5iNXZmA@mail.gmail.com>
Message-ID: <CAL_JsqJOPd2txkz298Rs12N+keJNYg2_qjCc-3vDwtL5iNXZmA@mail.gmail.com>
Subject: Re: [PATCH dt-schema] Fix interrupt controllers with interrupt-map
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 28, 2020 at 7:23 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> When an interrupt controller has an "interrupt-map" property, an "is
> valid under each of" error is triggered.
>
> Fix this by allowing "interrupt-controller" and "interrupt-map" to
> coexist, in both the interrrupts meta-schema and the
> interrupt-controller schema.

But both should not be present. If 'interrupt-controller' is present,
the Linux irq parsing code will ignore 'interrupt-map'. Seems like
that's backwards, but this parsing code is older than dirt and we'd
probably break some 1990s machine changing it.

Rob
