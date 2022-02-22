Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D97D94BFC51
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 16:21:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233379AbiBVPVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 10:21:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232898AbiBVPVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 10:21:39 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 916971617E4
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 07:21:13 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id p19so41820958ybc.6
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 07:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HVdVMfysf95jTHRvOxuNoVjxuB0CjZvhXhqlbIHuN0Y=;
        b=KTh8aFNGaoyntsSAxBWClVP9/nSFTBS6irzubM66J/T39Yf6IABij0qQupUfuzzdZH
         ihIj4SU7EJtHUp3eNKbXfhrrfrdHCRjI06QOYhuWfa0CrRe5czKlGZ0kFgPhNtdusiE/
         0cWGtj2Eo8LQ48RmeuO5gh48DJcz9Ic28mn3vkGeynwoJm2hTtHUmOW3NPXIa4x6jgsf
         6IVhC3O85FyU1YztP8Nj8fRJuiHPBP5iQXLzDxOET1eFSu7QBjKPOJvhBmaOXJMJnFLm
         a5nEmVP4VCmsyQ2WvCMH6N508jNFlxP3rso6X+xul9CMCySIXCetVpdBnk8Y2gRuOE2p
         bnRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HVdVMfysf95jTHRvOxuNoVjxuB0CjZvhXhqlbIHuN0Y=;
        b=QjZtprJWGO/ATPqCPC/2ojTYoRabM/lm6zQGM1EPrdbzEA4jMzMPBaejWk+tlhqI3A
         1F+M2J7tVmZWDFpDs9hQ8i+lY71QDfr+UHfymuuuRk/xQ1VKx9cWWKwGyJW5I75BJPBt
         5lUenTFJ307qzbY8+2A6tSlG0lUdrN/Wjdw1PelnSPyfHgLOb/jOsueqMeIRHIxG3YYH
         QIWYfXQo0S1bqtWi90kqi807AAPQNXmMmfdcySPnnRJbhErQ4rVYVJ4dGz2eaXCdwky7
         m4jj9dw5wpXgp5z7ns1gzxielW1fIt7iDxQH1iiCGV+noLcjh2lyF1n41uSJP7Uu197U
         GdiQ==
X-Gm-Message-State: AOAM531vKKMgf9hB6mEjxxVAc1eXwmPtUrThbOmnlOYN2CIQq5By7A/N
        6OqvQUc3pIh7jhpjsuWRfwx9sHd64DIib0403hWyBg==
X-Google-Smtp-Source: ABdhPJyCcJARRbkiTPXc35f6YTtpOe1UTQH526CZggy98Wmxv6UfuXKgc5itp4zRkLxISttmSWvkXXI+3Fq9wJhPrqM=
X-Received: by 2002:a25:aac3:0:b0:624:ab10:49dc with SMTP id
 t61-20020a25aac3000000b00624ab1049dcmr6967837ybi.291.1645543272820; Tue, 22
 Feb 2022 07:21:12 -0800 (PST)
MIME-Version: 1.0
References: <20220216212433.1373903-1-luca@z3ntu.xyz> <20220216212433.1373903-2-luca@z3ntu.xyz>
In-Reply-To: <20220216212433.1373903-2-luca@z3ntu.xyz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 22 Feb 2022 16:21:01 +0100
Message-ID: <CACRpkdZhtdyni0cKT43nd9YVSnA_Dza6=kuECuXLJKbDG2rbEA@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: bluetooth: broadcom: add BCM43430A0
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 10:25 PM Luca Weiss <luca@z3ntu.xyz> wrote:

> Document the compatible string for BCM43430A0 bluetooth.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
