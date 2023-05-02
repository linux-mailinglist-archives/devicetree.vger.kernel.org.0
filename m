Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1E196F4505
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 15:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234177AbjEBNcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 09:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234119AbjEBNcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 09:32:23 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 640825B85
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 06:32:22 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-54fae5e9ec7so53126397b3.1
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 06:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683034341; x=1685626341;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xEifqtnMTrtcoeS67itQipSer+2n7onRwiAW4RhQHdI=;
        b=wZJQ5UzpljXf1eCbyFM0D2ZaH1xQ8kbvUGpcpL6GcMG3qtFuDqoW/LvxNboGiQdM8T
         4MnIXumfRl+OFqwXami9J1nXLF3WfVT1gK11GFDaozf9R17vHwoOnZL4K658cyy+jpea
         0qweCFZJ+TqF8X6JDlhXd72Zv1Ei4aR6XzQ9AOWJ39jvkMrJewf0yBDskzPVHBeXWtYy
         PULRPuO2cbY/j2XYCq6Cve1UymBjiTFLffJw5wQSpzTYF/84sLygf+4kTV5iQu4KUsjR
         56zblnSYy6l4IT9XM9BS/ilGlvFMa+ihiCDFjn0Ifheh6eGALnIKICOy7/7pVFJ3Aj8Q
         ivrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683034341; x=1685626341;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xEifqtnMTrtcoeS67itQipSer+2n7onRwiAW4RhQHdI=;
        b=kSqMyfmwjmsAML9WnlPxMTJFRNMQwbIiUR2hx5FySjDMkqwA+67yB+4/Ofi9zkQD6a
         treRr/u2KmqDQRJWG53+OJFVSqKiEjy7fqJdYLFIGjJK4ll6MdfPCEKt2itbgHxwr4ii
         xtJNfefPkblAYlNWO3PxPQgCrAsdp6cdg10y9UeIyrOUu6IdDlvOMKZ1Yty9ciyTRStv
         N97hE+cVewNynS/+R3C7CP2wk26JKYrszTTw0UvqNEj1jUN7pTG+nVmn7MHDIJ5VkjuX
         ZKtN2tT9LJAiAidF+MnjPm4DAsFOLjF2fGpFCdZruD9/SDFi5CsFPL0vM6rPe8Y9FqyX
         oq+g==
X-Gm-Message-State: AC+VfDz9XgnsHZ4otF/7xxuLGDej67TA1jUj6mDHdGHJys/XTqKhscWa
        HCqD638pcgCC55SyuiwnFGviPsKcCZHvpXi0/MYmCGHG7icMq2RN
X-Google-Smtp-Source: ACHHUZ5V95M8/JRQGpHNWzkNrRd5TqNUB/QD8i5EdVCh4hUbkIclbxYwsU9teNdG0BaYnENSu5IrlG27Ezbscnc3EqI=
X-Received: by 2002:a25:f405:0:b0:b9e:2f81:d525 with SMTP id
 q5-20020a25f405000000b00b9e2f81d525mr5015978ybd.14.1683034341558; Tue, 02 May
 2023 06:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230501230517.4491-1-okan.sahin@analog.com> <20230501230517.4491-2-okan.sahin@analog.com>
In-Reply-To: <20230501230517.4491-2-okan.sahin@analog.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 May 2023 15:32:09 +0200
Message-ID: <CACRpkdbcyne7ssRQSEocoe+mj9qQBZRQ-wyOU+uipvcyF5NoBg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: ds4520: Add ADI DS4520
To:     Okan Sahin <okan.sahin@analog.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Tue, May 2, 2023 at 1:05=E2=80=AFAM Okan Sahin <okan.sahin@analog.com> w=
rote:

> Add ADI DS4520 devicetree document.
>
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>

Looks reasonable.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
