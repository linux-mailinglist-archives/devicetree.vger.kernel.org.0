Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1F0744B8F5
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 23:48:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243267AbhKIWu4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 17:50:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345039AbhKIWuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 17:50:04 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DABAC00EB3D
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 14:21:24 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id z2-20020a9d71c2000000b0055c6a7d08b8so912319otj.5
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 14:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qLsRex488etMkJyCCFaXLtgPzZ6BB/J9dKWw8UO3KF8=;
        b=HiVLib1yZobRnuW7sMIDMYgEiV7yhcNYV53azWFi6aSYW4Hu++8xN0MqgT9ZBTBPe1
         tHfuZJW+x3zpArXVhEztoQURqBgNNAqvkhrpdok2c1CYScgbTEkk3toWbsXGaEsMPhBc
         pobpQ2rMClAZp0i0TvDBo0SZAGTrza1mdUUSgjugkU2oA7tzpHVZSIZWY2OOOlvRabpj
         xPBPjmrQZd9Z6fxEVq7BWnagN67ohxQ3kkVDeE0cZHQkykxoJzisjtym0erskVnhIOYl
         BxQABSwHk0vmOC8j2uq7gypLmELd9QUegVybgm3hF2dKB/JaBQMP0LD29ohzDV3YG8Wz
         hM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qLsRex488etMkJyCCFaXLtgPzZ6BB/J9dKWw8UO3KF8=;
        b=YBOfNelm74v7U9+8F38IPfmwTSjwoQs4JjNf5fHOdnLgaLy/CK4g8tLYErc979bZHH
         RGpXFPp1h65LAGYJLaFVvLOAeoMbagXfb8B8wLxHJeeAsLHqJ73dBJ13nEHXPBK+zAyH
         brAQsZCjr+oXlpQKVam0+byqs/6jkOTgNLw8cL3mq9srsU/FSxpkos7ynsmkKX8jaeXw
         bHLoUKXzBOkEmMV/ylnK1TNsyfCmGgQywP+s8fgf4BUByxvFog5PzosvYWHXQ+oUB23T
         KvrKCNdARPE+bDK/J9XNiLnwFq3n5kde0Ly2Af5sMl7Kup2R3ku91o30uth9AyKTqff4
         Lviw==
X-Gm-Message-State: AOAM53399MFCapk4oziCfdHnNuwwhYuBFAIZQ3djhBX+PWvt6Pi1sLtl
        g16+Z1ywXafo/TjEjF6Jo2FlMettyigPObXXEGwKFWRX5JVufw==
X-Google-Smtp-Source: ABdhPJxnGCMwPBzOn0vDnUGZChUhsq9PbhUnrHTyTVpdBpkdT5/1fxR/EpRTVr/sEUcMpLzruQlZhgh3IK5H9XIVdOU=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr8689832otj.35.1636496484311;
 Tue, 09 Nov 2021 14:21:24 -0800 (PST)
MIME-Version: 1.0
References: <20211109164650.2233507-1-robh@kernel.org> <20211109164650.2233507-3-robh@kernel.org>
In-Reply-To: <20211109164650.2233507-3-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Nov 2021 23:21:12 +0100
Message-ID: <CACRpkdaY9VQcUCNe4ZFKFyRd7HSFh1FX8yOT-AFqjJ6wc56Ehw@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: versatile: clk-icst: Ensure clock names are unique
To:     Rob Herring <robh@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Sudeep Holla <Sudeep.Holla@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Guenter Roeck <linux@roeck-us.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 9, 2021 at 5:46 PM Rob Herring <robh@kernel.org> wrote:

> Commit 2d3de197a818 ("ARM: dts: arm: Update ICST clock nodes 'reg' and
> node names") moved to using generic node names. That results in trying
> to register multiple clocks with the same name. Fix this by including
> the unit-address in the clock name.
>
> Fixes: 2d3de197a818 ("ARM: dts: arm: Update ICST clock nodes 'reg' and node names")
> Cc: stable@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
