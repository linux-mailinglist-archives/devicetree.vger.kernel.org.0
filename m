Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3556D510E23
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 03:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236081AbiD0BtG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 21:49:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357005AbiD0BtE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 21:49:04 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B06C457A3
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 18:45:55 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id v12-20020a9d7d0c000000b006054b51c3d4so168602otn.8
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 18:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=eVQ/inWcT1l7VEk2UI5ksomqsYzFOO+BWWxBaDOj8zM=;
        b=h+COwLhnLVvSim4lcztBrlz3xxy+PnXdwM2J05oYWN9JXlf3kNZFsxDqiwbmMV2HDb
         GKx/Zsxx+dpTD/4vdAxYHq5kXiYg/vYmbyxFjNJpZcJuBlGaBRFBhkXXALa8MiWbMxQ3
         esIwnMrxvgJCtolvw/8BfFp+O2vZabX8dalg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=eVQ/inWcT1l7VEk2UI5ksomqsYzFOO+BWWxBaDOj8zM=;
        b=GvU61pnmQBjKCJmnxHsit7tAx0rDyaBlJFinPgBm+3W0A5kfhiROYqbq7m8FDcalZM
         MzU6pcj/xG2RQo80yi8Oic2vcwTTZLOyqUz17suTibS3A3LJ5YIjdSPLw0G7p32b7fMP
         zoACYPokIy39m4/eq0YWg74JnnP7/6pPJ1Q2UCMFqXgEH05+sS4nlod7vatuUJX5i17r
         xFGO0IME75J90SE2C5JQ+EYFZFqasNiJ8QGGyoj1pZmirKZ5Av3hmxM9Wg0zd/UlAjb4
         G9bFgmUkSxn53jhTaoNoTllmxtM+uKa2HoZBP0OgKjBeoImWYXPcwHKPWaFnpPdK3jZZ
         FLqQ==
X-Gm-Message-State: AOAM530B4xSLOEr3RPOP413STCQA6psSwYdY9xeAybZcBDsu84+hC3/x
        wPFBBHYI7tcrIFnkDmYq/r7ucdMYHXWBMSCZdrkqIQ==
X-Google-Smtp-Source: ABdhPJydWa6HcDqzOZ2NAkK6dx7hzYYZk+t8oX2oVqffHMh76w8ByLBGFcO4y3yZHY58tqfOqBClX0JRv2cb7LDQ7SU=
X-Received: by 2002:a9d:20a1:0:b0:5e8:d2b6:f63f with SMTP id
 x30-20020a9d20a1000000b005e8d2b6f63fmr9152407ota.159.1651023954650; Tue, 26
 Apr 2022 18:45:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 26 Apr 2022 18:45:54 -0700
MIME-Version: 1.0
In-Reply-To: <20220426170306.v22.2.I18481b296484eec47bdc292a31fa46fa8c655ca9@changeid>
References: <20220426170306.v22.1.I7a1a6448d50bdd38e6082204a9818c59cc7a9bfd@changeid>
 <20220426170306.v22.2.I18481b296484eec47bdc292a31fa46fa8c655ca9@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 26 Apr 2022 18:45:54 -0700
Message-ID: <CAE-0n51c2xq1h_E0TgnEEQqTKC44oLV7pV3qkSNNSGe0VUo3pg@mail.gmail.com>
Subject: Re: [PATCH v22 2/2] arm64: dts: qcom: sc7280-herobrine: Add nodes for
 onboard USB hub
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2022-04-26 17:03:23)
> Add nodes for the onboard USB hub on herobrine devices. Remove the
> 'always-on' property from the hub regulator, since the regulator
> is now managed by the onboard_usb_hub driver.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
