Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9816B6C61DD
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 09:35:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbjCWIfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 04:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231451AbjCWIfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 04:35:07 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD787EB62
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 01:34:27 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5456249756bso87268817b3.5
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 01:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679560465;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J4RYoPJ1LErLnjfKLVajCu6GU5STQHSZ9DUFEBKc2Ss=;
        b=GrRWMTpR78EiK4AGRh+wmlmCJc3yCLkLpH/UHF4e9cGS6u0ubEfnOhxJ/TlOwky0s8
         WB6++T3F+9k6IZ4E6+AnMDkgBvTHjHkZssw2T5snvgHlVXVPzEJ6Lhy0yxo616B3KUTU
         7XXdpc6YcBqJoe2ZM6oL5xe8PYDGY+d8y/Xt5QMGsideAAPUH7yrMGJrZrmRx5+uzFon
         jgdS8g/ujPnYr53RqC/hbmGIU9ZTPYW4D9iIrTFbAxBWC/Tkxy1GXf52JO1bIRBLV35U
         wd0qCFxzRzWpV6lqBEIAUjokdAC1KQf8QK7ezjT3lAgU8GP3x/f/kbyhwAIVnwj0lwNL
         MzNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679560465;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J4RYoPJ1LErLnjfKLVajCu6GU5STQHSZ9DUFEBKc2Ss=;
        b=pXyeqqlgE3RHVTo1nftcWhyegoY30uJN7lfAVjGNwbtyaJ5jHU3MnDlW8+pVXcTGy4
         LO7sqVQhAPVVxkSb9BRF38Jw/INEWwG2sT0ownfRzqwjWtQiRT5kLXeAFvfIBlVJpaC9
         SOZg1C3AV9u7GqeNF4Xxyx9Py/4e7n0I7HzphhC2jqBLIsmSOxZQy7G3kX/76bGESciY
         nnD/yYKxQbKJYNC12NIZbsjkSLeA1nOMS/ZQXtmLQaBe3Q3H2yzPKEXB2C81a1h1pgmD
         iF8kTF6D5m/qQHTZf70flUgJnVR+SUY02LffvvAJ2lywrDhOrxsbiWx6BN6vLmKlwWR/
         AOZw==
X-Gm-Message-State: AAQBX9eoe/leXTD5D32OBCzNjwpGEFrH2W8qcJi7NdUa4TVvJ1V+LPla
        7SoEpgytMOakuCUaXUJPChxvvQfZU2fZ5MLfTRRDKA==
X-Google-Smtp-Source: AKy350ZaGM1U6Ub4iMxUNlQn/D6/CcT7QXGB3nXKmuAYzeKKqb6dW4NRFfS7v1XCoePQnsn6MuXULcyXhrBnNby8wqc=
X-Received: by 2002:a81:bd11:0:b0:532:e887:2c23 with SMTP id
 b17-20020a81bd11000000b00532e8872c23mr1431390ywi.9.1679560465580; Thu, 23 Mar
 2023 01:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230323012929.10815-1-dipenp@nvidia.com> <20230323012929.10815-4-dipenp@nvidia.com>
In-Reply-To: <20230323012929.10815-4-dipenp@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Mar 2023 09:34:14 +0100
Message-ID: <CACRpkdbPSyQbe8pC8EzhyGoVor+piaKRCoXLfoW_n_9JyYLu1g@mail.gmail.com>
Subject: Re: [PATCH V4 03/10] dt-bindings: timestamp: Deprecate nvidia,slices property
To:     Dipen Patel <dipenp@nvidia.com>
Cc:     thierry.reding@gmail.com, jonathanh@nvidia.com,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org, robh+dt@kernel.org,
        timestamp@lists.linux.dev, krzysztof.kozlowski+dt@linaro.org,
        brgl@bgdev.pl, corbet@lwn.net, gregkh@linuxfoundation.org
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

On Thu, Mar 23, 2023 at 2:29=E2=80=AFAM Dipen Patel <dipenp@nvidia.com> wro=
te:

> The property is not necessary as it is a constant value and can be
> hardcoded in the driver code.
>
> Signed-off-by: Dipen Patel <dipenp@nvidia.com>

Looks completely reasonable to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
