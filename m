Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09B6C2785F8
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 13:34:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727402AbgIYLev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 07:34:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:46792 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726990AbgIYLeu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 25 Sep 2020 07:34:50 -0400
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6156321741
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 11:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601033690;
        bh=mikpkSgpMpF6Kts/1lw4q+S3sahENEmgNZe9bmeoDYU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=sH/ToC58MDSZa5oX3X9bw1+6qiJvHYYsNGJoNQCwl7aIgQ9pLZdz+E7L8OTeiN8cE
         h1e7Fj4uiEEN8qvooyNvmC8qaVcW8EMy2S0CgF4b2FNALNsfunSN3qkMC0XBIr3OeW
         iduOigczjl0nBEwCJ0BQKGSoyxD6+o5l9wf2FYP4=
Received: by mail-ej1-f43.google.com with SMTP id z23so3104951ejr.13
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 04:34:50 -0700 (PDT)
X-Gm-Message-State: AOAM533XRDmOavyD6c3gXYiA1oqGfzCqDC3ptohGTJTwr/7q1MDjwy2A
        uV6qvM7aiacS3fRv/LuUK0lixvZsiRevHZIQ95E=
X-Google-Smtp-Source: ABdhPJwi6Nkc0vghCmDmYUbAACuIOKlX28edmIp5B+oTgQ1fya6kU+fCjHtn5t1TXCH+Q0Ok7TxT1Fsn3e4PZHrV8Dk=
X-Received: by 2002:a17:906:8401:: with SMTP id n1mr2160545ejx.215.1601033688970;
 Fri, 25 Sep 2020 04:34:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200925111429.3146-1-geert+renesas@glider.be>
In-Reply-To: <20200925111429.3146-1-geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzk@kernel.org>
Date:   Fri, 25 Sep 2020 13:34:37 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcbGkY96wEkQfPh7y5JDhNP+Nk-0B-qmVzEQqGVPAiNEQ@mail.gmail.com>
Message-ID: <CAJKOXPcbGkY96wEkQfPh7y5JDhNP+Nk-0B-qmVzEQqGVPAiNEQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: example: Grammar improvements
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Sep 2020 at 13:15, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Improve grammar in recently added sentences:
>   - Drop superfluous "be" in front of "have",
>   - Add missing articles.
>
> Fixes: 73f76a41c4ed7def ("dt-bindings: example: Extend based on practice")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks!
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
