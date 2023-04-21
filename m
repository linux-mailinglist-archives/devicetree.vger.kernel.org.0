Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A11E86EA65C
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 10:57:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbjDUI5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 04:57:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230163AbjDUI4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 04:56:35 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 852108A6F
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 01:56:34 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-555e853d3c5so4722787b3.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 01:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682067394; x=1684659394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3w/okfneJjVnH76OLc3+NF18WkRjbFSsFpGa8xK6+rk=;
        b=ZWqqdCgseCzgNcrNeNyCbJ/LDw6SjbseTzVOYw9WFCynnEemBeN/1Tl73qBJu31T7p
         fVXJ/C+AQtX0AX/+jFUtbmURyA0CPJkwakUSNR+3TboDOwapcuA7V9Z2iNQ4tyz+irBB
         RXIEV9/SqPBteUbKVPmXug/z5F7uqX5sXh3PfTn+nU8JT7tlSss1mX0RqLfw6MOJHdlW
         G04op3dbS5M6/EbFY//ifTxPDDtMGql3uEFy4Mbi5on+pfLV/qhnwyzOwYerOCmKiCPo
         fNEwea01fwU1K+M+Dzc6c8Q5k0N25ffkvSOu/4hWcUaF21lCTsQIbC84HuQfLG2psEDK
         4tEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682067394; x=1684659394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3w/okfneJjVnH76OLc3+NF18WkRjbFSsFpGa8xK6+rk=;
        b=P6GeN6i1NGPURT1Z2IuRlh1RgkKlTpYbmJjKDuLdc51RwQUgx292yGEJBet44U3M/W
         cNPZfSOMWd+W03KECivZ5LazCaNjiD33h7lL/6nOAmJajxguWiRECuaQcZkWskN50COi
         Bbl2HxkrAZZ2Smtqrf0zm5DBSu6Ep+lUO0NaC90DfUIOFI8fU9kJOYq1RahIij3cO4x3
         jV0FXW87rmlF+eHpNTlVDMgvrz+INWTDGE5HBSvk7NfN0bGZ9DZbrCCeb7mPL/IctKzV
         b35Y7dL/Cj53mRDjWz1iIQ8KijPOUK3VKcDdbrWIOx/HFwPUTx9Ihw1p2Mr3FBeyba7D
         bghw==
X-Gm-Message-State: AAQBX9eVhgg6BufR0WVCqIAs7GjJHSpa8C6+YKZ5uNUYEgSzpCbpw5eZ
        1t1v+LtfaReaAjVf+ETR1Zm9UnAWkSqxTmibJ7/D7w==
X-Google-Smtp-Source: AKy350bzFbJW+YPWsFfWGgPL5WO1UqY9aQDZm7o5j5aHxeoZFlMOLoFfiCEM7kccU8pKzxqT92pu/bI5MYRiv7fUg4I=
X-Received: by 2002:a0d:dd86:0:b0:556:106f:c0c0 with SMTP id
 g128-20020a0ddd86000000b00556106fc0c0mr1534048ywe.41.1682067393770; Fri, 21
 Apr 2023 01:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230415095112.51257-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230415095112.51257-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 21 Apr 2023 10:56:22 +0200
Message-ID: <CACRpkdYOoVCSjLjOv84byiiryFCXsdS0Y7RBD7WY_ePHqSvDmA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: watchdog: drop duplicated GPIO watchdog bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 15, 2023 at 11:58=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Two conversions to DT schema of GPIO watchdog binding happened and came
> through different trees.  Merge them into one:
> 1. Combine maintainers,
> 2. Use more descriptive property descriptions and constraints from
>    gpio-wdt.yaml,
> 3. Switch to unevaluatedProperties:false, to allow generic watchdog
>    properties.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Excellent patch.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
