Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56C906EA612
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 10:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231285AbjDUImY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 04:42:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjDUImX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 04:42:23 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA72F902B
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 01:41:55 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-b983027d0faso1303643276.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 01:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682066515; x=1684658515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iqPKWSvbX4VNO0qn/jU+y/bKk/xVC6QNeAEqYppXymg=;
        b=gC0IP9ZGDifk9nnKGfcHVKPnGVyqDiOStxhyVabMNXwfV4YKRP/l3jFcMgClhDU37Z
         Sz2qd7CjjsYCSKf2Q/Ui+NbYpD197MrSQxGyS0qEIo8kv6bXS7slZISXPofJbpxTUmBd
         dyRWEOQ9Lr5/CFRefWWLjqLGGkXC7HSP7D1+EwS3u5RrWkhKqS9wCikAJAAWmMlXJJXw
         qgatTNWI8ExOhsPSs84pLbjaCnBch3H8Jmt9MtiNutj3oWOhZP8cyRoUwWk2hy/OYVtx
         ukfBza7PLsJll9zrUq6nuX43BGCWkYrfjYe7gJEIN564NIHwsXNAF6FXUKexqHuTAqSY
         6dSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682066515; x=1684658515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iqPKWSvbX4VNO0qn/jU+y/bKk/xVC6QNeAEqYppXymg=;
        b=hAv63CrsSFztlO0Oleqn6/4U/AdGij+fPOu7FB1FSivNKBUWyvoxJnnNhdgcVl8Dfn
         L1XrBcIEqXIqbudZ8CFXNcDpco3t2eZpgrxNwPVrq1I6rq4RCmzLYvkpj4OaF+qaWRtJ
         WHFJviqkhddTuBUaB76YffJq8Fvm00tPHFGU8HYyHIeIvagas7+fiEDPH32WQL+mfqij
         HIJfC6X6Hx5nprfLkuk4GAuMKFf+yh5FBhTKovSkPAj8if/6t2olyzYLWHICovA8vV1l
         ghTnUseYwJ23hMX437eIdpz89OCW1POyl1VRgZpbEvUfsTzQVGh1cCzkhV0vTiJ+FInm
         uHiA==
X-Gm-Message-State: AAQBX9dwt9izvWapY5usdS4JS/pKX1VoNhKE3GDf4J+biLbUqUzczI2q
        savag0CTHKONA7OLDNd7zUFlRN6Z5igWPD3sjru/bQ==
X-Google-Smtp-Source: AKy350apF4ud3JDmiTq6f0qUKsmsjPAkr2kW6mvjGN33FBYp8ECRDVzGjIff6wPMnV3tfgKoHFVbL3Aw36vsD6zcDWE=
X-Received: by 2002:a0d:e64d:0:b0:54f:8b56:bb2 with SMTP id
 p74-20020a0de64d000000b0054f8b560bb2mr1371719ywe.9.1682066509796; Fri, 21 Apr
 2023 01:41:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230415231130.115094-1-mail@mariushoch.de> <20230415231130.115094-3-mail@mariushoch.de>
In-Reply-To: <20230415231130.115094-3-mail@mariushoch.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 21 Apr 2023 10:41:39 +0200
Message-ID: <CACRpkda-tTBipOnKwouZT-muPbkMTJ2u3x5iSMmGwtwUc8=fTQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] iio: magnetometer: st_accel: Add LSM303D
To:     Marius Hoch <mail@mariushoch.de>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Denis Ciocca <denis.ciocca@st.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hans de Goede <hdegoede@redhat.com>
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

On Sun, Apr 16, 2023 at 1:12=E2=80=AFAM Marius Hoch <mail@mariushoch.de> wr=
ote:

> The lsm303d has the same register mapping as the lsm9ds0,
> thus we can just re-use that.
>
> Tested on a Lenovo Yoga Tablet 2 1051-F.
>
> Signed-off-by: Marius Hoch <mail@mariushoch.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
