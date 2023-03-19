Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C3DD6C051C
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:00:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjCSVAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230128AbjCSVAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:00:48 -0400
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C59818AA5
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:00:43 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5445009c26bso192191957b3.8
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679259642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJXh2xrKAjDi3AdHgtt4zom47IafZ+oJB2oUFq4qtF8=;
        b=Upv9QML/Dt4MaVbHyg/1SeA39FMY7S7qZKDMtKOx8HVqGy2vd+5iLL7rmXzJNXrdOc
         a6eb9Tn3NKZRv6tj6jp+uerN3ijvUs5+oeKBhOdqaJqkgrhfUlCrChBLvFRwIDsgD3Va
         dUImm+ccaTRBajmvuNWTMJWxZ5/w4vtYWJM6rMYRds5hUaViSfSRgaKu2kUNsgx1gcfE
         wlMaBgPKmDJmRgJ+R10OMPwzupFoLCKD602BjeB9Y+duhuBjLB/gMOz5sb6bisK6zWky
         hm77yDoTnSLdDIaBm0LdT+eQPMI9YgsqhPZO5IO+HWIQb+RQY/aazFjYlSWoeJIMw7sU
         v79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679259642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJXh2xrKAjDi3AdHgtt4zom47IafZ+oJB2oUFq4qtF8=;
        b=AHI6Tq05EhAnDuSeyRQRlVYQbw71sltwvCHRYtT5YNd75Ztom36noXbkEn+NiY5m+1
         LCu42Rbd7Lg/o8lZONLbeUD31BbEODnQ+39c5SC86OgtjDa4HDjVYNGleJAkw7JlzMzV
         1sV9qHRnygzHZvM2PiAQfoYrvBvAnjI7BIyFMJpXd72rvRZBKsDOEPI+jOMxPsLxcbBe
         pnnMygxywFZGc2kwVr/zfZ4lkttC6DIwE8QYvVLS8XkU6Av0q8rHaQSkDTVquZ5HYhsz
         T5FFPaCVinfYACIU0pLzLC7RHW5nSVWJQ+MlienkqR4qTJMV8diJqRdlWS3CBpEhhh1a
         IZcQ==
X-Gm-Message-State: AO0yUKXNhPtgjseOVpKpVBBARyIrgZlqhmtyUSF7LnZXXUePb7Pd+RKK
        EAzWpCsTibolQe+8LCQTVRsx5Z+DF6G4W0wmGvke2g==
X-Google-Smtp-Source: AK7set8ryDajQR4jwAVJ/oDlJzRGyhP7lTw5I1+CLRUz0aof8xqN2COVRqHlC8+gfLACYEE0r6wIFOjdGhN1S/Lrv94=
X-Received: by 2002:a81:ac1f:0:b0:541:9895:4ce9 with SMTP id
 k31-20020a81ac1f000000b0054198954ce9mr8736242ywh.9.1679259642071; Sun, 19 Mar
 2023 14:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230316072940.29137-1-quic_devipriy@quicinc.com> <20230316072940.29137-4-quic_devipriy@quicinc.com>
In-Reply-To: <20230316072940.29137-4-quic_devipriy@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Mar 2023 22:00:30 +0100
Message-ID: <CACRpkdYxzKOFGWwtWy7wMRH4MYFEuZjTayUbZSfjDe54ZOX3SA@mail.gmail.com>
Subject: Re: [PATCH V9 3/6] dt-bindings: pinctrl: qcom: Add support for IPQ9574
To:     Devi Priya <quic_devipriy@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, catalin.marinas@arm.com,
        will@kernel.org, p.zabel@pengutronix.de, shawnguo@kernel.org,
        arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_srichara@quicinc.com,
        quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com, quic_poovendh@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 16, 2023 at 8:30=E2=80=AFAM Devi Priya <quic_devipriy@quicinc.c=
om> wrote:

> Add new binding document for pinctrl on IPQ9574
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V9:
>         - Added the Reviewed-by tag

This patch applied to the pinctrl tree.

Yours,
Linus Walleij
