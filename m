Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E8EB727350
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 01:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbjFGXuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 19:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232690AbjFGXuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 19:50:13 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 236EA212E
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 16:50:12 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-33e5054ba6fso8183905ab.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 16:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686181808; x=1688773808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zh1qTh2owhTw6iheqxXCV3Jh42E0lrVswaTb+2hzc4w=;
        b=gIfyyVs9Ca9SVZqTAi6/yw1HErHG28yWRd7i6AwxZSuQO+fqjj6rtwUQ10tcKurCje
         G1kp79WcXgvE1Hk0uQ9CKAJ9OoCw5bzXOuKd5wWBBSd2XCluBU869A2ahAdfGotrg8cl
         mjzpMRLmXyf6TGvU62RoU8dNYtyf2RetwIOwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686181808; x=1688773808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zh1qTh2owhTw6iheqxXCV3Jh42E0lrVswaTb+2hzc4w=;
        b=G+2Ck9ValsmxxrBpTTIsabL+HWwBXJIhHsk7XpOS1eBoVyOJ9IkZ+hzrLFQ2WeJu+O
         vcsr4mwrNS3QyZbJdR5FoIS1L9N4RgboAQGZPNzPEzzZ5kXnjC7eAdiYXcdj0tGS8N2a
         YNAz3pXpybnSGQuDbVRf7IMXQoeimo33fcdRK2uWmUKRcGLml9q+u2MuEaW1CFS2XPdG
         oamO+WpOoPhXFwsHXXHj6EBrsC4pwjnndbUN/asiH9uGqBOYxXJHBTV+FAHco06lIo3E
         VLj4CNoKGPyCJYsFd9A0xMp4ix5GgfPt11NyEXdihqgFJmdkOUzYMSKRNZuFJ1WxxsUL
         AaaA==
X-Gm-Message-State: AC+VfDzFK1m0Qjv2wBCINg/alnvBlYUu03YeOhgz0bKV5FBuhk0dcbX4
        zVAtPo2eR9HdDsRAhZVR4VSo4vtQyGnjMQLueIw=
X-Google-Smtp-Source: ACHHUZ6fu02SHHHBoVXkoARnDzsVx2OqbwYxLiV1laujaEFtueHE2S7i1+4zir7H/+g79zlla2CMiA==
X-Received: by 2002:a92:cf4e:0:b0:331:105c:81f9 with SMTP id c14-20020a92cf4e000000b00331105c81f9mr10669611ilr.29.1686181808399;
        Wed, 07 Jun 2023 16:50:08 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com. [209.85.166.50])
        by smtp.gmail.com with ESMTPSA id b18-20020a920b12000000b003244d7f2292sm50274ilf.32.2023.06.07.16.50.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 16:50:05 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-77acb04309dso27494439f.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 16:50:02 -0700 (PDT)
X-Received: by 2002:a5e:8c15:0:b0:763:5a8f:fe6 with SMTP id
 n21-20020a5e8c15000000b007635a8f0fe6mr9992800ioj.21.1686181802445; Wed, 07
 Jun 2023 16:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230607133458.4075667-1-yangcong5@huaqin.corp-partner.google.com>
 <20230607133458.4075667-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230607133458.4075667-3-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 7 Jun 2023 16:49:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uy=UNKDEhqeguhVGn_aTPk5+MppsXChpNOinVc4HJjYg@mail.gmail.com>
Message-ID: <CAD=FV=Uy=UNKDEhqeguhVGn_aTPk5+MppsXChpNOinVc4HJjYg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] HID: i2c-hid: elan: Add ili9882t timing
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

On Wed, Jun 7, 2023 at 6:35=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The ili9882t is a TDDI IC (Touch with Display Driver). The
> datasheet specifies there should be 60ms between touch SDA
> sleep and panel RESX. Doug's series[1] allows panels and
> touchscreens to power on/off together, so we can add the 65 ms
> delay in i2c_hid_core_suspend before panel_unprepare.
>
> [1]: https: //lore.kernel.org/all/20230523193017.4109557-1-dianders@chrom=
ium.org/

FWIW: I posted v2 today:

https://lore.kernel.org/r/20230607215224.2067679-1-dianders@chromium.org


> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/=
i2c-hid-of-elan.c
> index 76ddc8be1cbb..411d7ea2725d 100644
> --- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> +++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> @@ -18,7 +18,8 @@
>  #include "i2c-hid.h"
>
>  struct elan_i2c_hid_chip_data {
> -       unsigned int post_gpio_reset_delay_ms;
> +       unsigned int post_gpio_reset_on_delay_ms;
> +       unsigned int post_gpio_reset_off_delay_ms;
>         unsigned int post_power_delay_ms;
>         u16 hid_descriptor_address;
>  };

I would prefer it if you would add something to the
"elan_i2c_hid_chip_data" indicating the name of the main supply. Set
it to "vcc33" for the elan touchscreen and the NULL for your new one.

It's probably worth adding a comment next to where you set it to NULL
that this touchscreen is tightly integrated with the panel and assumes
that the relevant power rails (other than the IO rail) have already
been turned on by the panel driver because we're a panel follower.
Otherwise someone is going to be super confused about how this could
work.
