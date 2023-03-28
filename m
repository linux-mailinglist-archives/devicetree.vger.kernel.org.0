Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9D26CC0AC
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 15:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233018AbjC1NZZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 09:25:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233029AbjC1NZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 09:25:16 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC0B1BDCE
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 06:25:08 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5416698e889so229606657b3.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 06:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680009907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZPIvMwQpvOjU0BzBAGW2h0thFK/pO6HC4FGgXVqASMQ=;
        b=cDQVnzf6NXWmQ+kFhJ/YNhytjxBtvv4Dx4494nooPMxlO4+/8/vueiJ227kXanpWpO
         zcoY1DOWsahAqtPOYxYFmXVQ+t9TpzYpzsuUIU941AMtP+egIu2QVMXSnql/jEh5jwIu
         kmBywYjNOqm0WzRBpH0kRRrpHa4eyDu5DctCtwV1FNBC3iQUWEIuPGEjBQNOn+D1JvAt
         ZX4On00rG2xB/yt/q0o8bciOUFrLoVBErkMmcCxMVes/8uQe5JbYSf8DohHytdjm9LZs
         9BlftRKvOjpYYcEA8FFWMi7EZP+sYynHZskrecbMVJyullUEKf4aCUTZUMmNqnFH9lTe
         1YVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680009907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZPIvMwQpvOjU0BzBAGW2h0thFK/pO6HC4FGgXVqASMQ=;
        b=EjaTiuaOHKWBVVIcgbRYaaJWKE5NBsc94HWUn5Hn+3vHVj1zrYvXuUQ/SsXWo2EUQO
         xbZdCxFekVFGOVQQglSeob/0o4TStEMulZUWePLPdza7LZtxXiOvJCMppAgmQzUM7M5K
         qPYyUPJpOInlny6lYSQlNrnQcWiOm8NLLPhVaSy/r2CIjR2pyPWirPDlE5XoS5yYTbVf
         IvOJ5fceDEIUdqmCZsvwhZmx3bt0usPSANVXwz5n8BWYFDr+Vy4xtkF+vkIGLdUC/xju
         bBkgxano/e8QZzS1IMicO3YriQ/cgNnFN+nXnRGxBhxcWtBpUJ0/cuA0jCU4iOwxI45+
         bx+Q==
X-Gm-Message-State: AAQBX9cbhvqiOspguDVHV4ejWLDdxRWP20dYeCRb2NLBxPvGmNXyxEWI
        liX3bnilEtrHuApIzqFzAk1/6BV1bVg04YKVm/7Wsw==
X-Google-Smtp-Source: AKy350ZgakwSzT0dqfqow65sOYhYdGm7e9tpKXHZr3eLhydwhlJV66Ug1YTOW0hOOhaksKirRdOvhIwCHukpr7tOpYw=
X-Received: by 2002:a81:d007:0:b0:546:81f:a89e with SMTP id
 v7-20020a81d007000000b00546081fa89emr1631145ywi.9.1680009907719; Tue, 28 Mar
 2023 06:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230327125316.210812-1-brgl@bgdev.pl> <20230327125316.210812-14-brgl@bgdev.pl>
In-Reply-To: <20230327125316.210812-14-brgl@bgdev.pl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 28 Mar 2023 15:24:56 +0200
Message-ID: <CACRpkdYUq5qvaWQFjb3NCoS4J5x=NVUKCM_ia4vqFA1HSuHbfw@mail.gmail.com>
Subject: Re: [PATCH v3 13/18] pinctrl: qcom: spmi-gpio: add support for pmm8654au-gpio
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
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

On Mon, Mar 27, 2023 at 2:53=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:

> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Add support for the GPIO controller present on the pmm8654au PMIC.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
