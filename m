Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 972FE6200E2
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 22:18:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233062AbiKGVS2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 16:18:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233554AbiKGVSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 16:18:04 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 567A931DCB
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 13:14:53 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id y13so11837115pfp.7
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 13:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5sT7hyCzk9AIqzLbGef+IZ6oJ71RYXWRSZsmUSzO4Yg=;
        b=P39f7quD853DqM9BBAZi7j1TweO0zXhBFPBLff8eSw0GyPIz2vlyw2NVWhiVuCc9on
         ZwVgJzNNqjm3e5FZtd6E7iux1mqK/TfXu9YuFK8up7u7ux+VO6b7VNSQk7Mxs3rH6eJN
         Z7Cd+eLOaD6B3EbEqKVnzXjDCYTHNRcGg43OpYLgICerBRLns7ZVbqpDb5gute1wLruH
         aJHq2V7yN1f0vRjwa8TwiapmnSZxbOB6B8/GOHUq+PQL/5p6MgBTnMuWz+FCYu+JieUH
         VbiIsg7WjXHu8Wws2UzTZvODI36Ihj6SCAykvT91K+3xGAQfxqn/5jCOFNzwwPHzMu4L
         goTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5sT7hyCzk9AIqzLbGef+IZ6oJ71RYXWRSZsmUSzO4Yg=;
        b=redioImRu9oP+sjK0q1YNstbux11Ti+j0v9NeDUvFBGIna/l1wTpG3RfaUbFz/oX5m
         98viMnCyTk6rMeMtwtplSbletLZj+NT6xD8YSJl4H4lHAxem7W9b6lnLpDh6Lk6M9/zU
         CZly53vn9mtu6UIYX91QSYr2BjN/Vw/juuxxfdL4+j00AhOKUCrW5mLwil9i8CEmTO0v
         xne/9jj2LeLz3Co/J5615VQNkx6VJbFZQkipCZHZtFwV/3rH0ZL+iiyZdH6CQa1HjtPK
         mzNd4ru6XxhgXJoHMxxZyrUbJloxI/tRk3TUvyxwYOpmvJ4kErjTXRDB4W5daGuhxkVB
         de3g==
X-Gm-Message-State: ACrzQf2PyK1l1tLIfIu2MFGywCpxEKJ03uCdcp6ttbHLwiWtWTxIDDVs
        9feWdtQTZwccY+oi2ESnut04jw==
X-Google-Smtp-Source: AMsMyM4fNroJ8un5Wi3EJ604VEP8sq2WlbsGxu3Ax4KtJVEcz4IY0/3AIrVFwaBzallESNsw1/AyxQ==
X-Received: by 2002:a63:5811:0:b0:46f:a710:1b77 with SMTP id m17-20020a635811000000b0046fa7101b77mr39853531pgb.392.1667855692494;
        Mon, 07 Nov 2022 13:14:52 -0800 (PST)
Received: from localhost ([75.172.139.56])
        by smtp.gmail.com with ESMTPSA id a10-20020a63cd4a000000b0043941566481sm4624005pgj.39.2022.11.07.13.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 13:14:52 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Nishanth Menon <nm@ti.com>, jerome Neanne <jneanne@baylibre.com>
Cc:     Lee Jones <lee@kernel.org>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, kristo@kernel.org,
        dmitry.torokhov@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        catalin.marinas@arm.com, will@kernel.org, tony@atomide.com,
        vigneshr@ti.com, bjorn.andersson@linaro.org, shawnguo@kernel.org,
        geert+renesas@glider.be, dmitry.baryshkov@linaro.org,
        marcel.ziswiler@toradex.com, vkoul@kernel.org,
        biju.das.jz@bp.renesas.com, arnd@arndb.de, jeff@labundy.com,
        afd@ti.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-input@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v6 4/6] mfd: tps65219: Add driver for TI TPS65219 PMIC
In-Reply-To: <20221105000104.rtj3r6ufqwqmepon@keenly>
References: <20221011140549.16761-1-jneanne@baylibre.com>
 <20221011140549.16761-5-jneanne@baylibre.com>
 <Y1+q2Usm9ecicXqp@google.com>
 <1383fd22-c720-811e-a2bb-be2151675089@baylibre.com>
 <20221105000104.rtj3r6ufqwqmepon@keenly>
Date:   Mon, 07 Nov 2022 13:14:51 -0800
Message-ID: <7heduewjp0.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nishanth Menon <nm@ti.com> writes:

> On 13:58-20221104, jerome Neanne wrote:
>>=20
> [...]
>
>>=20
>> >=20
>> > Can you try an compile with W=3D1 please.
>> This raise one warning on mfd:
>> drivers/mfd/tps65219.c:28:12: warning: =E2=80=98tps65219_soft_shutdown=
=E2=80=99 defined but
>> not used [-Wunused-function]
>>    28 | static int tps65219_soft_shutdown(struct tps65219 *tps)
>>       |            ^~~~~~~~~~~~~~~~~~~~~~
>> soft_shutdown has been validated and is used in TI baseline even if not
>> hooked in upstream version further to this review:
>> https://lore.kernel.org/lkml/20220825150224.826258-5-msp@baylibre.com/
>>=20
>> It was a TI requirement to implement it...
>> Let me know if you want me to remove this function or if we can keep it =
like
>> this.
>
> There are platforms without psci, correct? I think the comment was to
> drop the force override with system-power-controller property,
>
> if (!pm_power_off) {
> 	tps65219_i2c_client =3D client;
> 	pm_power_off =3D &tps65219_pm_power_off;
> }
>
> Could still be valid for such platforms, no? I do see that the
> capability that the PMIC has - which is software shutdown is a valid
> feature that we support in many different PMIC drivers. Is'nt the job of
> the driver to introduce the functionality in a manner that is
> appropriate to the OS framework?

Yeah, I think Nishanth is right here.

We should probably keep the `if (!pm_power_off)` part so the PMIC will
be used if PSCI is not, but it also allows an easy way to test/use the PMIC
shutdown functionality downstream if needed.

Kevin
