Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C0E15BBE8A
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 16:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbiIRO5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 10:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbiIRO5b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 10:57:31 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5405920185
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 07:57:30 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id dv25so59079767ejb.12
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 07:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=dyWurCv6umTff7vcMJzhKPxGOrO7Im/vE4FnLmopayI=;
        b=py+uqmM2y+DHXQXns/qqCb3l7AXNQasq9XD93G7XbAR9QQv3q5oyGJtXTqT34Vvf51
         xteKNPjjHEpK13pUtnGQ96BPNm9dE8/q9Dc/Wb2I67/G07Mv2oqzx177Cqt9RlzxtOQP
         L3rEWs3HRxcMw6sIMHQSSA+mgEy14aHMVxNfC1b2G1zS+NfK/bawJNY8X2MzMM8gE79R
         T75w3FSVsQdpgZ5bLKnQ2CxCIWiIHYl6r9ND2pkxUb45FbOLcFpeBEpMXt/1bzsF818H
         7U7IbNk0yiVsvSDp2Hy35SuLi3KLfxVyuZ66HrqQ7COcfrMT/HFQSFygCHvsfByZkRzX
         Ft/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=dyWurCv6umTff7vcMJzhKPxGOrO7Im/vE4FnLmopayI=;
        b=Cfs+SbgKcoxm5MWcgiZ/LuskwxCKo/hRsp8pfyV+9Wox4p1/1amMt7krBJJVEF7I0v
         sw/rrb4+bCGvNjwOaCGxkcm36oQAcID3t30Hq12irwf/Fb42P/rXqcB9wtPJqv4GqIS5
         y8MyJXytbKn30GZ7ME2GEtXcOd2rUTexpQjoRMbpNu8XCJ3zFuOvyvgVE9CmbIlw4XDL
         h3DkxLMI0S9SmZ2mXoAM6HehuluS/MkCDQuDguzZTcZG2gfaeeO3dhSrmXyd+0C3FieO
         8E2+QMHXMGYVpRHol1ykIrhCQC6YWTQY6gD3L05aCZmXFdVn058wSOWBAYa/Z8iX3bIb
         fgSQ==
X-Gm-Message-State: ACrzQf3VKWzDpS8q3ykiyLaFp2EtryeiPzCCYJsLxTH/l4gGV3PcsYf/
        9B7Kbfdk5AdYq7V+HrSMwNIBgDVeT7jSf3IPthV5tw==
X-Google-Smtp-Source: AMsMyM4gHCdoCTZOpAzWE3ZHy04U3dFyvJdXBikAiGPHZsPCm1QjzXgnd1p3smxr22qT8omxuxygwWfQhAF72ibaRHk=
X-Received: by 2002:a17:907:e9e:b0:77f:9688:2714 with SMTP id
 ho30-20020a1709070e9e00b0077f96882714mr10108201ejc.208.1663513048951; Sun, 18
 Sep 2022 07:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220914071306.3254881-1-s.hauer@pengutronix.de> <20220914071306.3254881-3-s.hauer@pengutronix.de>
In-Reply-To: <20220914071306.3254881-3-s.hauer@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 18 Sep 2022 16:57:17 +0200
Message-ID: <CACRpkdZumA8=dFZ6CzvkQ_SYO62V5YB9JJ32M3-Ta3_6WCheCw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: gpio: Add gpio-latch binding document
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>,
        kernel@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 14, 2022 at 9:13 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:

> This adds a binding for a GPIO multiplexer driver based on latches
> connected to other GPIOs.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
