Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 966B86E07B8
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 09:29:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbjDMH3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 03:29:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbjDMH3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 03:29:48 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8228610D
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 00:29:47 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id c2so3729611ybo.9
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 00:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681370986; x=1683962986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qog+LiocKiPKdyAnYQ2BSo/zSvKs7npCbBpUanq/IZw=;
        b=iuuIA6m3bCmAllwm3XftWpajWOqZNHJEPSWlBfJ2sdPCtXWI7gtpe2zXumSUbZlBld
         6LkiVg2kEhTa0KuwsU8SRy61aG5/to+Zt2Z5HoFbldLevHp+sBYVawKtnp0zkRY6n3mL
         R7sL0pBm932ajvo+YaXQXXM8o/Q/O8l6feLaYvTAUB0BGdX9g0bzevToV1EnM7aj+oRl
         DD0plKoDbdZE5XUFwS0VuARCXWv/M4012lv6BgzNJ5KKQ1eAApGJ8mqXjqL+/ASih/4L
         5EkkogghhrnRGGP+OY0G6jNYEbwQYXcgPgHuFt7Qcv+MZP2c3gip4NBloydJ64CLRSkV
         mgOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681370986; x=1683962986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qog+LiocKiPKdyAnYQ2BSo/zSvKs7npCbBpUanq/IZw=;
        b=S8oM6Ix0D3S2OQL9nbRyNoWoMuxy7Nx1mN/zgr69wp91IIw8vOQX/f4QQvRhjUcN8B
         70jCWwCtDdLkHjRYRuEmcLkRBMKPws2t+/XA9nku2F2YynvPI1CGVvi4jiAtog15Jiet
         WNbvx1+FtzlUx8mcxsnoNI2sGkr4DyBZYqTNB3yy9jf2E0lAr7AlHhRycstUEVd2QYZ1
         rs5jxkviVPqYBLe05AQ4G/8zPV5ohjrbKN1gIonPbI6tLgIj/A5jPuLwxCbwN5Rr+RVM
         5scQFg3yUrPuop5NUvc9ydyrWnE1xsDFuVT4+h9j7tUz1lbt8yr/dL7NU6r7i8+RD2Wf
         zldw==
X-Gm-Message-State: AAQBX9eskpaoPDtGx1833MEKdA/gXXWqmTYxQGSdE6GicmHWNH6BXgE4
        TfBsenq2mKq2wmy7DrLPhjj6OwN8qDVdMaQOgVWMDg==
X-Google-Smtp-Source: AKy350brsOjzRiYbs7W8IQbvcWfHiyVMKQm5KPMw0UnDGLQucS24yLdTwAtQAnuWJQKvu2CFaoKj0I2bMm1G2ObmRzo=
X-Received: by 2002:a25:cfce:0:b0:b75:8ac3:d5da with SMTP id
 f197-20020a25cfce000000b00b758ac3d5damr684123ybg.4.1681370986751; Thu, 13 Apr
 2023 00:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230412-topic-lenovopanel-v1-0-00b25df46824@linaro.org> <20230412-topic-lenovopanel-v1-3-00b25df46824@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v1-3-00b25df46824@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 13 Apr 2023 09:29:35 +0200
Message-ID: <CACRpkdZXAw4ZYTRhO1xnZ+ycaC2OPQqAUHfNm34MaQygM5sQQA@mail.gmail.com>
Subject: Re: [PATCH 3/5] drm/panel: nt36523: Add DCS backlight support
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 12, 2023 at 9:46=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> This chip supports controlling the backlight via DCS commands, on at
> least some panels. Add support for doing so.
>
> Note this may only concern the NT36523*W* variant. Nobody knows, really,
> there's no docs.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
