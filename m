Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 474F1591C7C
	for <lists+devicetree@lfdr.de>; Sat, 13 Aug 2022 22:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237907AbiHMUAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Aug 2022 16:00:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231395AbiHMUAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Aug 2022 16:00:03 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1634313CD8
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 13:00:02 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id k26so7280006ejx.5
        for <devicetree@vger.kernel.org>; Sat, 13 Aug 2022 13:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=SqEK3dSOL0OGEhaO3b0fErkGK/VagcMr1SpmxVH4cXk=;
        b=ed2CnEFSDsafYfCoEs0urH2W3kw1Q8GXaSIt46m5U4f07agYes+gkKpVFexkMY52+u
         btR2GK6n/aTgPUQk48FE7N0562Xzacv4PegAsz5pqK/Ghbj2bHNtKcd9Bk4FBhMWfT0Q
         M9v0VWu31bvzyoltKEwtAhd1nGlxvE4nj/cgAXEFevE1yQF2lUHuoEDan4n6OQUAZvtx
         VG24AUpqxzLmvOpt3Gxyf3erNKh+JkBXkIsgGvPbikekWEqX+vPnL1BrW6I6wXXS6FYp
         y76DQ82oH6hN/lE0rarbMALPlEoSlVPzM44sXTTLWs8p9+yut/ey7Ka7QsClH4xN3VB4
         gPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=SqEK3dSOL0OGEhaO3b0fErkGK/VagcMr1SpmxVH4cXk=;
        b=i6ynEueSqiJuo+6+nSaUVQk+YkySJvBwLCeYSbQJk3B5jpglEBaqSJI/kAhkNv3Qb0
         DwRNnEUNEZRTDB7/M/Cv5v3bZEIE+8OJEVeapOgFN23XxP+iJDyGvt/F5SY8bhaWbwfn
         DitFZ2VyKz+S7nRy1smj3z9T8r0x5enB2PAFygzBiVIN3YEEp3SZBG1DgGn4Dw2K9FDo
         TH+RL5i1MmdPY2711Bu+vlQQQphQHRslkw8l3aHGGoHCtY7wLWW1aWHieRA2kp+xxXYi
         7SAl+SV07l7/79hu+rXbbe7BNdoVNOjGr0+1J4v5Q7xHnfAXohyoZ7ObU1KDmhE/tWQy
         E34w==
X-Gm-Message-State: ACgBeo3By1YthqxKO6bDeBNlUe+jk4Gt11wJ9wrtgfoHOc2LYRLFOhQZ
        1YBlQcbs3V164M2AxqnARfkcsvXE3nWPZ+I72qMYsQ==
X-Google-Smtp-Source: AA6agR6ULIPx7Wq+VpWSTgoMR+Bq3GuaHe93aIu9VStvYfUxhfa3vVhwgsXQwaLQ2w4h9oZAVB/5AryDlgbH0fxkaHQ=
X-Received: by 2002:a17:907:6d98:b0:731:2bb3:8e17 with SMTP id
 sb24-20020a1709076d9800b007312bb38e17mr6256678ejc.203.1660420800573; Sat, 13
 Aug 2022 13:00:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1660337264.git.jahau@rocketmail.com> <1a8bffdb7e807455620a73f2d61981e7f9aab8d5.1660337264.git.jahau@rocketmail.com>
In-Reply-To: <1a8bffdb7e807455620a73f2d61981e7f9aab8d5.1660337264.git.jahau@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 13 Aug 2022 21:59:49 +0200
Message-ID: <CACRpkdaP9hH7LjJ_B2JvkgzmH_UZsW_oB2SYR4xqSp0LYgvBrg@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] iio: magnetometer: yas530: Add temperature
 calculation to "chip_info"
To:     Jakob Hauser <jahau@rocketmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
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

On Sat, Aug 13, 2022 at 12:05 AM Jakob Hauser <jahau@rocketmail.com> wrote:

> Add temperature calculation to the "chip_info" structure to ease the handling
> of different YAS variants.
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
