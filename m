Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E714729FD0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 18:14:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242009AbjFIQO0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 12:14:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240564AbjFIQOZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 12:14:25 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC0C2D44
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 09:14:20 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-777a4c8e8f4so90308739f.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 09:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686327258; x=1688919258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/f7kvEzbwR1d0awtJj62+jmeZjRD6tDFL65qplHJ0cw=;
        b=GLVbBWhyARSwVNiadUE2wcKKKqAZgBdj1SU4f6HFEhu5ELWd0UXmrCWSv0GYxqJ1Hx
         wzNQ2pCxM1Te7UGHhrpzhguEcyQfHkW6gz/2OP8QrCPoOJVIhaiqiaZMMKewkxJxQUpX
         ZIHg4Q9VpkNIw+RZv3X4BW5LGb6nn50K1zER8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686327258; x=1688919258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/f7kvEzbwR1d0awtJj62+jmeZjRD6tDFL65qplHJ0cw=;
        b=L8rrAhKNUR22h/qrdVEoN67k6Bodr+8w4mMSbb0mcii3pbamlXTTGFX0g4THOuXjQS
         O9+f/vCg+gXQxhW1nuWNLALtzGveMW+nHjmSJg/llNeVMLh1D2024LaocpUsbj6ckahq
         M7FIjkhpXFMWsX/h0HY7p2OiOp91pUPTdOXjkRh7Crf0jDyJqYqVCfepSX2qa/zToBiI
         dzyNOBxGFGcHHtrqKeZc7AggiuMh8gdVBo8PQ28/5rH2I8e/4grjzQjO7BQ64Gs1QGcX
         R4sKeW0WB7ZX/MkLBW5nQ92+KKQprDo//C5hGZmPVNHYEKN0kolOYO3dwGOxhcZeVesH
         wNpw==
X-Gm-Message-State: AC+VfDxKWVHTKsIEFsWlKxFYhIZvvZbAEqdF4sJLt3ZtQZtTtxmh0cfU
        Pl3ZFtlFF3YWrCVN6WmRycUjKFujWAfZCkalm1A=
X-Google-Smtp-Source: ACHHUZ54WiozbSYePceURGpHXi0PAs5yBojnhzQWq47Dxa7KKLl8QMsT8k26/Dp8/O/mIj1Zjwqg/w==
X-Received: by 2002:a6b:f30f:0:b0:76c:785f:8f82 with SMTP id m15-20020a6bf30f000000b0076c785f8f82mr2459418ioh.6.1686327258358;
        Fri, 09 Jun 2023 09:14:18 -0700 (PDT)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com. [209.85.166.173])
        by smtp.gmail.com with ESMTPSA id n21-20020a056602221500b0077a89f99a01sm1142943ion.34.2023.06.09.09.14.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 09:14:17 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-33d928a268eso287995ab.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 09:14:17 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a82:b0:32f:7715:4482 with SMTP id
 k2-20020a056e021a8200b0032f77154482mr423772ilv.4.1686327256892; Fri, 09 Jun
 2023 09:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230609063615.758676-1-yangcong5@huaqin.corp-partner.google.com> <20230609063615.758676-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230609063615.758676-3-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 9 Jun 2023 09:14:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UPSwWpkGN3UyFm1c84gj7iDC7dYrT9CCqWnqkTun-4cg@mail.gmail.com>
Message-ID: <CAD=FV=UPSwWpkGN3UyFm1c84gj7iDC7dYrT9CCqWnqkTun-4cg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] HID: i2c-hid: elan: Add ili9882t timing
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, hsinyi@google.com,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 8, 2023 at 11:36=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The ili9882t is a TDDI IC (Touch with Display Driver). The
> datasheet specifies there should be 60ms between touch SDA
> sleep and panel RESX. Doug's series[1] allows panels and
> touchscreens to power on/off together, so we can add the 65 ms
> delay in i2c_hid_core_suspend before panel_unprepare.
>
> Because ili9882t touchscrgeen is a panel follower, and
> needs to use vccio-supply instead of vcc33-supply, so set
> it NULL to ili9882t_chip_data, then not use vcc33 regulator.
>
> [1]: https://lore.kernel.org/r/20230607215224.2067679-1-dianders@chromium=
.org
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 50 ++++++++++++++++++++-------
>  1 file changed, 38 insertions(+), 12 deletions(-)

This seems reasonable to me now, but only makes sense to land if the
panel follower patch series [1] lands. That series is currently at v2
and will at least need a v3.

[1] https://lore.kernel.org/r/20230607215224.2067679-1-dianders@chromium.or=
g
