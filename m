Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B57E57035F
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 14:52:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231864AbiGKMwW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 08:52:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbiGKMwU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 08:52:20 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1E762A248
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:52:19 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id e69so8546947ybh.2
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wHf8COA4hyvd1AE5ZEZMJGUPLqbpAN5gXJpc/hXFdD8=;
        b=Q5pcvNKMdm5iX3GfmeCGyZBqcQ9NkDemFQep972DEcKl3TjJ4KZeseTF3PTx7gxvhq
         OP01pryHfZ3TfgEzw8IQXjuQEHcq1AOJqqb4SMSbMfX1H8hPocCCPjWPRm1nQWZKYOuZ
         WVV57xP21L1H8EuiGf3mCRLECdP5uQhCR6+TWybJDrH3UEBgtmsXDiXTf+zYi839tbkD
         fJMhdqwC+yohpVuldXrmmhQxmnwkIQPEgnoozgAnZDfzK6ot0xamwG3gTcvpz9y6dNVe
         TnenplSbxaKBvRNfi82WSOZZYRJwlfcKQz9MkIO2annVv5aLaPyGoYkDvg6JDSDbjGLV
         m50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wHf8COA4hyvd1AE5ZEZMJGUPLqbpAN5gXJpc/hXFdD8=;
        b=Dlrz7ewPTPayhhaDJS+D3BvkxZaCmQANsfcuQNS5DJ567RUVMf3CJvf7LIjZmBTWR/
         5R8txQYEodqimqJ4eyXwwZjkiAfGbWnmvFhk+VFGU7YnMHunQE5z8Sri/UPV0kD6pOLM
         EkYVbsIbyKHRH8Akf8ebweil9/abXFjlE19bqFlJU5kDd9oQ0XAXn3shlBwaIZMWEdeM
         qUxDyWiykT76SKBBIktVbUVetZ3/U1GANBwve6V99xSXWjDKWU+zXSbJbsVCKmQd8p7L
         pbBJeTuO5TtM8mIasNs74+ZJr9Buv1RCMuOw+npQWguj5Ay2NoFAeDn64V+PXHSabUWq
         /bOA==
X-Gm-Message-State: AJIora/c2idnrOkzTgwFGATJTMkE1R9SA2r00zwXD97mWReQEE+uWTul
        oeYC8lxA5tbEmoJnFuwtSG+U3dzPy586FcTN7f+OOoc7eAk=
X-Google-Smtp-Source: AGRyM1sG1dgHPuAfv6YjJ8aSOS1gcifULRM2VeNfW2WWMIwvT91O7Rs2HwKkhK3K28x7kazLyrpOp1954o8TdPowIMg=
X-Received: by 2002:a05:6902:1184:b0:66e:756d:3baa with SMTP id
 m4-20020a056902118400b0066e756d3baamr16750341ybu.533.1657543939020; Mon, 11
 Jul 2022 05:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220708093448.42617-1-nuno.sa@analog.com> <20220708093448.42617-9-nuno.sa@analog.com>
In-Reply-To: <20220708093448.42617-9-nuno.sa@analog.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 11 Jul 2022 14:52:08 +0200
Message-ID: <CACRpkda74wZA2-kzsShGj61EjatHfAowWro49C1jnMcYo_peNQ@mail.gmail.com>
Subject: Re: [PATCH 08/10] input: keyboard: adp5588-keys: add optional reset gpio
To:     =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-input@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Michael Hennerich <michael.hennerich@analog.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
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

On Fri, Jul 8, 2022 at 11:34 AM Nuno S=C3=A1 <nuno.sa@analog.com> wrote:

> Optionally reset the device during probe.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
