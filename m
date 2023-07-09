Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D39674C407
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 14:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbjGIMZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 08:25:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjGIMZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 08:25:13 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81528118
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 05:25:12 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-263315da33cso710552a91.0
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 05:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688905512; x=1691497512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=71y64z63+fA2sSj8/QHah0vmDRt2yHFpfJlSTQuGOGI=;
        b=HN46Bg8zcUBcXUBzkZOfBJZlY7xMImkJR58a33weowgUgg/YA3mrJzXlft+Pdm0b6y
         P3ChW2VhXwwWCnm6/ll0HFl9zNDCvlImzlrC4xkR1WfdoG73gaFV6NUQ5j3GzcWDGGH5
         CEk+/h7vc0wCWD5I9BnB55QuY3wxnOQTNercDfT3W8iPuOOgpEJaWy8k0U/mABCeEZju
         BUC9MqR4xU2r1/HwT4ub6JTA4KqtNj7VR8WQGzlQqdyxOH+O1fQL8nSjFY1hro9f7ZLF
         gHexVR9FvyPz4tf9J4+32vbZUrikU/HBBrMA8DVY6fKFY4I8fw7ofTHzTI2W+i0ur7Th
         c2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688905512; x=1691497512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71y64z63+fA2sSj8/QHah0vmDRt2yHFpfJlSTQuGOGI=;
        b=LyaI+QvO7AyalD15zv+a32DOXKSHZVvGZVCk/GytoR/KONEjLc9pvMycEoDN2QRcV0
         76Biqvrt4ZFuzUu4SQMQ5sCdaP1QzLqy792c4PfYq1MFTR8KGO1T7RvJBNC5E4FqPbm3
         D/EOilh4mFoBauEYKpyQPGtfk7oKa8lQK0ha1CNctgFlWYoJzgl/xOxh0L7f1E3t2KTE
         bp/IsQcqJvk69JTHmybwGJbWjp9ly5fcKEyeRDXKykNBftfFroZudCsnbEWVm8+LBVC5
         CCtNgPp4aViv5wmnFkcphW3vU5LKJs8iZecD7eFloujmiyUDBmjCRBe7THWmqQ3tbkto
         jMrA==
X-Gm-Message-State: ABy/qLb/rVQ/MMSjZgw4zrv5TZGUPrFgvrz2INUzz75fRCEBjC4KPD0Z
        lyusm2Q2v+cwY9n6SDA3Uah0nUpAmx9gm+k+ipt/bfeJA0w=
X-Google-Smtp-Source: APBJJlEYTm39ahv67mqEn6hJY405CsjZmKiLNI8nEj4Xh+ZFZPFbYq3XUn4N1O6ximzS02e7zaR9OYHZp4uyQgJgLJw=
X-Received: by 2002:a17:902:d50f:b0:1b8:85c4:48f5 with SMTP id
 b15-20020a170902d50f00b001b885c448f5mr13195851plg.2.1688905511921; Sun, 09
 Jul 2023 05:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230708173720.3548414-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230708173720.3548414-1-dmitry.baryshkov@linaro.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sun, 9 Jul 2023 09:25:00 -0300
Message-ID: <CAOMZO5ByECB18dytkbuhKJkX2haRHMRGh8G7De-swth2W6pkBg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: nxp/imx: limit sk-imx53 supported frequencies
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 8, 2023 at 2:37=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The SK-IMX53 board bearing i.MX536 CPU is not stable when running at 1.2
> GHz. Disable that frequency.
>
> Note, officially i.MX536 is rated up to 800 MHz, but running it at 1 GHz
> proved to be stable.

If the datasheet says the maximum operating frequency is 800 MHz, just
adhere to it.

Running at 1 GHz on an 800 MHz device is not guaranteed that it works
on all the temperature range and across all devices.

Better play safe here.
