Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D79546B3895
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:29:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229806AbjCJI3a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:29:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230395AbjCJI32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:29:28 -0500
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3CFDC3E19
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:29:26 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-536c02eea4dso84378327b3.4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678436966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQ8WEFzt5Db0FqLZyEfnb3WolQj2HUPnMgEi1F3RxYY=;
        b=uHHamRINr0AyuQK5iTvGzBKyhZZnSuP7G6a6oLT/A77BR2+RvuA9gbwSKGVjD08Vjp
         I9QAUERfxdUCi3CMO8zJ8FtAZ3Zs/euFEJ+GSzb409WdKV81zwWphmfTJfeS0cg0lO8u
         XSa5ZhhV1Oorrn5gZCcz8cz/e7yPChRQBH/GU7t32+Jci/jCaiCE6/zWrk3gML12b9qc
         zqulLmrXD8IsMzWdhI8Onco0H9O/41fOx8wyZ901DbBS97lSty8nJUJzKPJPPfpnyOZU
         VCDPRO04K5HVrYJFxcpU5neheCxK1mDTsvIUOJCawoq5d8TruAVsoFQRrB4zjrPcsDG4
         jZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678436966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQ8WEFzt5Db0FqLZyEfnb3WolQj2HUPnMgEi1F3RxYY=;
        b=LLhgxTHnZ8rjRvtaE+x3qegMBT+QqQSs2OAg+Fe+bQMet3w2G8si9ffTT+oDaZP0Gr
         HWjtV4AhgATJGpGSr9vf9yRgcvC3XDvUD1rJc5Q7KLJQQjWgzF3c6O//PQY1SexN5QVS
         v/1mrDPvA3QEejPx3C6ZE7r9nMYUol104CG7qd1lRbzW5k46XEGdj4CYwEoJ6+I39jBD
         qkZu7c/oYuu1Az7PfV52JAJKdpyDFf/2lpxn0tP7I0y7Hu1ELIH9ev59x700PU+jQN0m
         GFbGyBmkqL6NoH67ZfrH4eQBdS/dQTacSyfZJuQFLcvdS1KHuxmtTUVtqJ5HOr2Kk+jy
         r0jQ==
X-Gm-Message-State: AO0yUKWNSk2mLnjwRczDpvW9PHZKDgePz7bBcsfllr+3v1jZ+CQCdvt6
        N9dpTmMBz/uDyspJ9QuYvRBRvCKqbT6m/N0B/QVMeQ==
X-Google-Smtp-Source: AK7set86T8CEE44n5qgyc35gLPXwP69XifWW2duU0TPqtWVwZ+MpWW6b0Wlp6bSqS7vEkPRVJrk3MfYAtVr1gml/l/4=
X-Received: by 2002:a81:ac4b:0:b0:533:9ffb:cb12 with SMTP id
 z11-20020a81ac4b000000b005339ffbcb12mr16351128ywj.10.1678436965961; Fri, 10
 Mar 2023 00:29:25 -0800 (PST)
MIME-Version: 1.0
References: <20230309225041.477440-1-sre@kernel.org> <20230309225041.477440-7-sre@kernel.org>
In-Reply-To: <20230309225041.477440-7-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Mar 2023 09:29:14 +0100
Message-ID: <CACRpkdYTD3OZ-44N0oRD93gToxR_DoFSkLhvNjrRpCms2TX5nw@mail.gmail.com>
Subject: Re: [PATCHv1 06/11] power: supply: generic-adc-battery: drop charge
 now support
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 9, 2023 at 11:50=E2=80=AFPM Sebastian Reichel <sre@kernel.org> =
wrote:

> Drop CHARGE_NOW support, which requires a platform specific
> calculation method.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

I agree. If we want to support this, we should use the generic
methods with interpolation tables defined in DT as well, and it also
ideally requires load compensated resistance calculation to figure
out Ri so this can bring any kind of reasonable precision.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
