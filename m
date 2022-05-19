Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B19CC52D394
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 15:08:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238465AbiESNIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 09:08:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238346AbiESNIM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 09:08:12 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2568BCE88
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 06:08:11 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-2ff53d86abbso36877297b3.8
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 06:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=La/7OOALhauUEG5Ji2oO8YvO8VOzXhhzoK6CQFuGens=;
        b=Mc01J4Jmev0FOw6h6XJqZkIQNwLAXIZdmviiHFc4dS0SXngMNt4uVOaGj3sQE+/AjG
         iHVJtLxz0SRFtzC6KZYGso767mBxZ0YMoWEKrI7sHpnTFU1GKZB5x4FT+6l2iD4pSFEU
         TK/IfXww27HTOb/Kd3t2LMc2606sodqY9RPc2jYCO39lTbk2OoWLDBBks1MollfDd9JR
         6CDvrRNyslLM/+JKHLfknToZJXU87WXzxjUn8DFRZxC2orM1AQSKre+uvW2SO+Y/mspm
         Q7lV5BmKPsaiawxHFXDNhHZiDGHjki0iHzM1FgKHhRjoSO660JbHtVqDs/JDdIbLySAR
         Ho0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=La/7OOALhauUEG5Ji2oO8YvO8VOzXhhzoK6CQFuGens=;
        b=uRpLOviXW1aOvhAwOXUCU3O47PIgXpBGEdbYep9A43KHetcXzfe/QBml+1EanIKLRi
         Ayv/IhxbQzlooqR0wAtze51Yv39irsI1wVkdmvnYBXncmODbtDmtsP+VumqNmuCX6CwJ
         7wEucxyaJUJkfOYet8FY+IOKBS7OSk0YWadK/cbho20QBKDn4XETo3HVcOXI8xmHLbQO
         lu23wnm64/fV6E2/btn6tQdw3euB/uWvGF5hkC7Zq9L045vlYrqXvFVYTjRW5T8JJBD3
         f8FTonyln2JAf/v/xtnnczdOGhL8/pa3qHuPaurVD1ZgOBj3l2OisFBPoF0l4s/Pv/6f
         tGlg==
X-Gm-Message-State: AOAM531KG+mT2QD7ZoNKKpVm1N+gOcWFV4hpgBUsxVOptvexj2ovK8qH
        cXeFX7fhZzF4kSiUqAWkUv66POtNlZAfOW8de1RQlw==
X-Google-Smtp-Source: ABdhPJzjXaM6yDiZGQ6JFS2PFd8kAqU9kyb5veZ5kmD7lX3tGNCp8MwcAxKVbfGmkiMRw+pGuRJzDHAhcSYdhHAWbZg=
X-Received: by 2002:a0d:f0c3:0:b0:2f4:d291:9dde with SMTP id
 z186-20020a0df0c3000000b002f4d2919ddemr4419526ywe.437.1652965691192; Thu, 19
 May 2022 06:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220517032802.451743-1-Mr.Bossman075@gmail.com> <20220517032802.451743-11-Mr.Bossman075@gmail.com>
In-Reply-To: <20220517032802.451743-11-Mr.Bossman075@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 19 May 2022 15:08:00 +0200
Message-ID: <CACRpkdbjLiF=ZU1tjPQ+=eKd24aEOi+tZ4wZYamuKyC0B=DisA@mail.gmail.com>
Subject: Re: [PATCH v3 12/15] pinctrl: freescale: Add i.MXRT1170 pinctrl
 driver support
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     linux-imx@nxp.com, robh+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
        stefan@agner.ch, daniel.lezcano@linaro.org, tglx@linutronix.de,
        arnd@arndb.de, olof@lixom.net, soc@kernel.org,
        linux@armlinux.org.uk, abel.vesa@nxp.com, dev@lynxeye.de,
        marcel.ziswiler@toradex.com, tharvey@gateworks.com,
        leoyang.li@nxp.com, sebastian.reichel@collabora.com,
        cniedermaier@dh-electronics.com, clin@suse.com,
        giulio.benetti@benettiengineering.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 17, 2022 at 5:28 AM Jesse Taube <mr.bossman075@gmail.com> wrote:

> Add the pinctrl driver support for i.MXRT1170.
>
> Cc: Giulio Benetti <giulio.benetti@benettiengineering.com>
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> V1 -> V2:
>  - Nothing done
> V2 -> V3:
>  - Nothing done

This patch applied to the pinctrl tree.

Yours,
Linus Walleij
