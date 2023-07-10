Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7867774DB0B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 18:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbjGJQ0r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 12:26:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbjGJQ0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 12:26:46 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2433511F
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 09:26:45 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-313e742a787so3469157f8f.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 09:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google; t=1689006403; x=1691598403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oI5Cxn7Vyy7ZnL+p0G1Pjc9ukvfEkxddTVcmycPX4o0=;
        b=oMnrJ5OXvfLLJ5xYoLtpD2WLvDkSRZoKVAdpAh5JiaxgXTS6oDz790neL0TY7QN4Df
         rNSb8SJFk6grRYL6ZjqBGO/Vl9HzYoNkxwvQh6qn5iH9HRQTobg3YJ9nnsErxrAOOyBH
         8dKjUgBU3pirjBOQZ6Q1nyZHzewcf4/H5j8+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689006403; x=1691598403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oI5Cxn7Vyy7ZnL+p0G1Pjc9ukvfEkxddTVcmycPX4o0=;
        b=T4gdPTCZRVpqGlsAxhVbFa5quSG52aUYKSKLg36SqaHOT4utfxrwaZ72989uyPZS3d
         dz/WOv7YacLTGWe4lkFHSglS8BgFPdxeE+R9IB4QP8IH/LFM62iHyaM4XkwXha/eQN4d
         1kAK8SHhg+xdo+nTz5tm5AmiMRdGpIGnf4Kr4RXZS4Rw3ssRP1I36U/u8LoxqzUkZeQC
         v1ezMIwXV8idKRQbrWORThmpVSSjxTTq4tgFi4VR5O9RNUJ2z+0CUOZDMcfaMR4DFn9y
         M5BIanNcT0VDNB4j8gqJBq/Kc8Pzg6+unMyVXW4aWgVPei7dLmeaDtOw1E7ohs4Arm0g
         1TAA==
X-Gm-Message-State: ABy/qLaxImwtlhWBjklGFanu0wOBMZRsLB8rS1Wt7P3PD8toLb5jDimD
        I92Do8g4s6KVfkRI/fEEHAk9IwriN3Rp8OAcDk25Qw==
X-Google-Smtp-Source: APBJJlFMDYKGytExNXUuErBEHh+RY+AgQlg42ny6235QOnAEs+nWxjDKlMTe5uUCf2lEfBNpZ456WBohKVo3Cg1qNGI=
X-Received: by 2002:adf:e4c4:0:b0:313:f75b:c552 with SMTP id
 v4-20020adfe4c4000000b00313f75bc552mr11431954wrm.15.1689006403610; Mon, 10
 Jul 2023 09:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230709232507.55096-1-ivan@cloudflare.com> <20230710001556.whhq3knqg4w2fqig@mercury.elektranox.org>
In-Reply-To: <20230710001556.whhq3knqg4w2fqig@mercury.elektranox.org>
From:   Ivan Babrou <ivan@cloudflare.com>
Date:   Mon, 10 Jul 2023 09:26:32 -0700
Message-ID: <CABWYdi0OyLiCnCZ51Oyzkh1-sT6FtXZQAkSvWrC8gVvnhRw=WA@mail.gmail.com>
Subject: Re: [PATCH] mfd: rk808: turn MFD_RK8XX into a tristate
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     devicetree@vger.kernel.org, kernel-team@cloudflare.com,
        Lee Jones <lee@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 9, 2023 at 5:16=E2=80=AFPM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Sun, Jul 09, 2023 at 04:25:07PM -0700, Ivan Babrou wrote:
> > Prior to commit c20e8c5b1203 ("mfd: rk808: Split into core and i2c")
> > it was possible to build rk808 as a module and have CONFIG_MFD_CORE=3Dm=
 too.
> > After that the intermediary CONFIG_MFD_RK8XX was added as a boolean,
> > forcing mfd_core to be compiled in whenever rk808 was enabled,
> > even if it was still built as a module.
> >
> > Signed-off-by: Ivan Babrou <ivan@cloudflare.com>
> > Fixes: c20e8c5b1203 ("mfd: rk808: Split into core and i2c")
> > ---
>
> The same fix has already been send by Geert some days ago:
>
> https://lore.kernel.org/all/d132363fc9228473e9e652b70a3761b94de32d70.1688=
475844.git.geert+renesas@glider.be/

Ah, I looked through the devicetree mailing list archive (where the
original patch was sent) and haven't found anything there.
