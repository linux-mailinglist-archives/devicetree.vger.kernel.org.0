Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B48D3E5723
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 11:37:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235565AbhHJJhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 05:37:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239199AbhHJJhh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 05:37:37 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12F65C061798
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 02:37:16 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id e19so6671257pla.10
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 02:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EooUrttQkSGGKk5aXhKQCqIE40W9rEd6lYvmZbP35ic=;
        b=LuqhlqIXe6YrbxZY2g/8+TVPvMxslVNVuYN5JuyYy2Epm0Woyw8D7Xyaxp3wzPj2h1
         eIosjtsii1KAOL3rqcoUdQLdWx+p2CiecK9ijCZuDFVSRWOD6Mv7zrxutnW3DCWoqqGQ
         RYiYezh4wqlyH1re+kN/F+iG9zLFXy5HgyESTF0ywtx21F/WNYfNmTtxFwPQbJ2pUvXf
         aHX1UbmeXFyikA6j0LhB/gla9voY4g4Q1F2/7Kce63Z+Bpyku8A7zcqIs6vsN844dxed
         3Rlj816YQWf92/yU62Ts5QUUl4Tq7LeemAzK0WR31fN218C+UDm27tOimkDh1RKG4oRk
         r2Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EooUrttQkSGGKk5aXhKQCqIE40W9rEd6lYvmZbP35ic=;
        b=TgAaggZHEubu3S5a3lORgiUEEpowqnV5LoFqHh3B4R0/sfdq3Rj5Om2hi61WiS/6DG
         s0FrqqAnDjfJZmOXinbfWuNba0aUcV7cCoS9XpRwjuNYGl3BgzgG1dnkqOJhEmTcHI6p
         PDydqZ8vPYrWHHPad7ThdR2Trf4puLO6MfZzwdimy5Hrkko7Vbiz+1CsXF6lmylM43J5
         VP+tIr/97mpnXkle8FHa6uXzOFlXGqAXsPBbzUd/PHwvtRUpD3TBxZKn1MpJFydv19FJ
         cNwAg5nThlYQbQ8BAR+4Xli/iK4ds9s6fNZ2kj0LmsT0ZVskEtduDEJamJAJrPYePBk7
         gFTA==
X-Gm-Message-State: AOAM531JtuUUSy/Wp+VBrQKB3idNX+fYqu6F4Kn1Fi3KMv3UPmybjRXW
        0MErB7KXt44HZvEbyIGG0UHw7w==
X-Google-Smtp-Source: ABdhPJxbg0bywfMRwZdah9ui6neKwc4xUTWf2MtdZORDq+EQsFsh6FebcuBxdZYZcjpEzWJM8wJMFQ==
X-Received: by 2002:a62:88c5:0:b029:3c5:77f1:ab71 with SMTP id l188-20020a6288c50000b02903c577f1ab71mr22577537pfd.1.1628588235254;
        Tue, 10 Aug 2021 02:37:15 -0700 (PDT)
Received: from google.com ([2401:fa00:1:10:236:db61:d8af:d151])
        by smtp.gmail.com with ESMTPSA id l18sm18325539pff.24.2021.08.10.02.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 02:37:14 -0700 (PDT)
Date:   Tue, 10 Aug 2021 17:37:11 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     Jack Yu <jack.yu@realtek.com>
Cc:     broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org,
        oder_chiou@realtek.com, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, lars@metafoo.de,
        kent_chen@realtek.com, kenny_chen@realtek.com,
        linux-kernel@vger.kernel.org, derek.fang@realtek.com,
        shumingf@realtek.com, flove@realtek.com
Subject: Re: [PATCH] ASoC: dt-bindings: rt1015p: fix syntax error in
 dts-binding document
Message-ID: <YRJIx4O4BTybk1gi@google.com>
References: <20210810020834.32414-1-jack.yu@realtek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210810020834.32414-1-jack.yu@realtek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 10, 2021 at 10:08:34AM +0800, Jack Yu wrote:
> Signed-off-by: Jack Yu <jack.yu@realtek.com>
Would be better to put the tag:
Fixes: 064478e4877c ("ASoC: dt-bindings: rt1015p: add new compatible id")

>  properties:
>    compatible:
>        oneOf:
> -        const: realtek,rt1015p
> -        const: realtek,rt1019p
> +        - const: realtek,rt1015p
> +        - const: realtek,rt1019p
Not directly related to the fix but the "oneOf" has 2 extra space indent from the upper layer.
