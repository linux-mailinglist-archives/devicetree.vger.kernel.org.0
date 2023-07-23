Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CB3B75E486
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 21:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229872AbjGWT0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 15:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbjGWT0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 15:26:39 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 767CAE5E
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:26:37 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-579ef51428eso44718237b3.2
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690140396; x=1690745196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rx4Cx9kXF3kLeSuUq0IkgM0eQf8d+Mb1ipAOzpYwQXQ=;
        b=EoiN8KHmJW9n/4AbSJSsCypgYoFAk5VpBw1Yzrrwcuo8BPUwtmrTKXfFIuDmZY1R+1
         bjZwDCh6zoAVnEtZGzaDl7A57xbYE4ut7ZgSuGDIUzx+5RzA+5M9DrxC81DGvgL4Xbrw
         xzcSepcC1IuQ4FbSXsDGLahNQ1mfyy03Yb1Nzn4/V0T5OYQ1o8LtYtrWCu8Enzo5SxDm
         axUDgAGyJF419yLpwyWBGujg+bX+obSJqRa8axs/C0FOKRtSOZCUtzuQEMNvLPrs8lrq
         dHFTULbpmdZz6Nb6V8qrSSUCwhSaTJ7tP999T5tK+RZmNLM+UhTdhsQyoWDCuN+33R4J
         OkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690140396; x=1690745196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rx4Cx9kXF3kLeSuUq0IkgM0eQf8d+Mb1ipAOzpYwQXQ=;
        b=civWBCIi2OuRaX8QBmsGH9p4YOjilYqicXsI9I5xv5ZLX9By70njEe/ETp25xvVHzt
         4TV3/zdwuezQx9fJotlYnJ9R7ivHgTWKugNZOeO/tTafOuZEeUbyfwWwdyARVUApHd1P
         t/w0ZL1ZZwj4u0whj6rT/jViI3CQrBUCKg2t4QQHhU0bXNoyXqzP5ryhBRaGlzpc6UIm
         5leX0KVfuevknDiV1EPa5GXckmh9MJlWBwOI6b3rncb1n3/jsw3QQyCtcntDQVpE34JX
         R1Sf7K640WC8n0EFx4gf9DpL797dh1n5nV+LZ6K+vHHpwhonFR1We77kSgwT9P1aecmh
         p/5Q==
X-Gm-Message-State: ABy/qLbg2xt7w4YO2kuDn+38bvGWYkWtMbNFQmPyDcheesnT9fguyeke
        sFl2ZBigb47b4npl5Kh0soxxMfLGV67WNeiBf5ZY8g==
X-Google-Smtp-Source: APBJJlHZcs6nr5ibsR4qxHafZKtxDvVDDW+tGHfnEwvqgzgxY2faqK29OV4ASTlnKdVR9d8Wj1GpM93jrnwGLU7oPnU=
X-Received: by 2002:a81:6c43:0:b0:57a:8de8:344b with SMTP id
 h64-20020a816c43000000b0057a8de8344bmr6987487ywc.4.1690140396707; Sun, 23 Jul
 2023 12:26:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230721073214.1876417-1-huqiang.qin@amlogic.com> <20230721073214.1876417-3-huqiang.qin@amlogic.com>
In-Reply-To: <20230721073214.1876417-3-huqiang.qin@amlogic.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 23 Jul 2023 21:26:25 +0200
Message-ID: <CACRpkdY4qQqt9mAo8rBGk8ZC4hH_ext_qZCyenEDs2HLVzXXYw@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: Replace the IRQ number in the driver with
 the IRQID macro definition
To:     Huqiang Qin <huqiang.qin@amlogic.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 21, 2023 at 9:34=E2=80=AFAM Huqiang Qin <huqiang.qin@amlogic.co=
m> wrote:

> Replacing IRQ numbers with IRQID macro definitions makes driver code
> easier to understand.
>
> Associated platforms:
> - Amlogic Meson-G12A
> - Amlogic Meson-G12B
> - Amlogic Meson-SM1
>
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Feel free to apply this to the irqchip tree.

Yours,
Linus Walleij
