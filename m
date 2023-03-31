Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95EE76D1CDA
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 11:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231563AbjCaJpo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 05:45:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232299AbjCaJpS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 05:45:18 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBD571DF8A
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:44:59 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id r187so26727905ybr.6
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680255897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IFoBmfNqHjVUcBGo6LT4gCtlcOPW6X249sn66zd7REI=;
        b=D+oxq2KU1R74cGVr861BWJ4QrYAsrmLr+vmkeT1ql1/boMG+f6uoZEDawa/VKwCjYz
         HvwZzsRFmuXcOQ7OC8ZkrQ4qk4hgX7XjTdMSMKhxLQP5dhkUSv0+BjA4azIUsD7DVVnJ
         +HjeE+U3DHlQ02wAVZ79Ncd9t+P0nwhV+zny21ktOo831mW8ue4iiDtUzYI79Y63zDt/
         NTCjCCoL6PPJYNpPYtiQyVmdbYqluh/TmbLGyu/+wjPt7v08hlqS97NNhA1txC7+/AfT
         X5XrVT7y55yqv3h/IFHvR096JbrsKLSUZzEuyTsYs2TB/ye5AhbxSKHhKnMYLgW8oBBu
         7UGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680255897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IFoBmfNqHjVUcBGo6LT4gCtlcOPW6X249sn66zd7REI=;
        b=HzTxWBmnAPWSQewZ8jZERyQATQGG3M5QFUSD51TrORl89YohyVIwLbPbHu+r/QVXR3
         VVdU4qAkSZqGd1Ww8184nlp2Ag5nmntTyKT1EV6vPlueFLdK/95/w1DEmgUa3oUYQfnH
         ibfyFyoeNkSjXEEq3EwJ8YcZqD+sVzTOnpJAO37iVHsqeSFK0sez+7xNJQIRAAYwjoN8
         aX6DWexzuJp+Q7ycpTOaUU1bb/EsjQAziJ234Ky+uRhUr3amtSkU7LUWNXIHbGchECLC
         KYdOIE/IAADft6zip9tINY+YbbGKIO0ovAaByFuEro8nV6qBqWX+i/54xGqhP529erAM
         FEkg==
X-Gm-Message-State: AAQBX9cQM/ofg/oltZH2kftZFgMpaz3LmL7XroE4bj6u9LrFik1E+ChU
        N515TzCre/xGio1kS9b54BmMxMpKH3gJKRx3OUunAA==
X-Google-Smtp-Source: AKy350aHm6mLdtXGnTgyPrVMJQyQC3lO6u+Ulkrj5iYb8yUd6TNae9hB7514yNzZeA9xapKc5n1SnbXnGp1OcanVf4c=
X-Received: by 2002:a05:6902:70f:b0:b75:8ac3:d5d2 with SMTP id
 k15-20020a056902070f00b00b758ac3d5d2mr17975062ybt.4.1680255897160; Fri, 31
 Mar 2023 02:44:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230328061257.1984972-1-peng.fan@oss.nxp.com>
In-Reply-To: <20230328061257.1984972-1-peng.fan@oss.nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 31 Mar 2023 11:44:46 +0200
Message-ID: <CACRpkdaM6U9T=mnuPO6MufGDRiBGzCAe8YkF2LrY_YXhfwxTLg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: fsl-imx-gpio: add i.MX8QM compatible
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, stefan@agner.ch, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 28, 2023 at 8:07=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:

> From: Peng Fan <peng.fan@nxp.com>
>
> Add i.MX8QM compatible, same as i.MX8QXP.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
