Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39AAB5B88AB
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 14:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiINMzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 08:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiINMzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 08:55:18 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D9DC1AF2E
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 05:55:17 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id x94so4798290ede.11
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 05:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=o9bsMPChreu51F+DpvXf/8dl+XA0syeIceqw0TCSPRE=;
        b=iVCIe/V6cngaoT3RK5U1+Szzb05njaWIlPKBzXipO+DpKseYlL8EBxX/sfllpNyiy2
         qW75G4OIsnrjGS3EtmE847+Wa/ZFk/TSm+OEk71U6bf+K2n1MeAnWV+X6D4o4YkNd1UT
         2VyPqm3RitaCWi1ZOBBWNUM4JlN84zYlP9PquZ0+b9OVi8dOOwHAxL+HtQ9XnnvJoFJ+
         rlt5g5bHUQTyiI6qDYyIW9KzHaxN3HC9Jy1X3O48RXbfMkjy4Hw1rJJpO21f8ghbD2Ez
         Pg4569RDUJ7qGLnc9rjbX1mXeq4sCy+p1qE10H5LXbU8bPYB5gEn+9CT1zkX6zikTKoV
         XWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=o9bsMPChreu51F+DpvXf/8dl+XA0syeIceqw0TCSPRE=;
        b=mMd+iuNTwqddeJIx9S9xKuNtALXrw0ss2eT0U7iRbBw5ksMSCFa2/QgaaiArXpB/X9
         fPgg622dDTnJsgLzW7caGzG1IlKhVg0JcPcd0+xYoovH4deqkmHVLUbm0K1tjMg+e6id
         gHedvLHWdefuNO5d7raaHLdpn1hSBLtoVHLmoLwoGm2/3REEtQfnND1zP5bI2wFa4P49
         oRZ4t82+n/MdsDplo6EjZHAcDG+7KqAFV1C5QTPn1bINLAOkUj63Pou9Jxf8Pt/hkqVW
         uRcG3WdCINXJkAqfV9zH8ZRltq+IRvJjtZTzFBtqMRX+tCS0WgcEJ5Mf8sIXEOnGgkX0
         dvxg==
X-Gm-Message-State: ACgBeo39dbDBC6JII2lRp2RCWC7Bd4MAEBBCef1kEO3PpZO8GszVGgM2
        TyLckC7njxj/Qh08pk+be0Owz2fwCamyNrMKAQG5oQ==
X-Google-Smtp-Source: AA6agR6kZD9JXsB4SrCbxYC3E8ILxvnVxqjQ3570ruXYKWkhtbdMpwIGhCypPfHA5kXBOpAXuDD6YMeLm/q1TYaqHI8=
X-Received: by 2002:aa7:d6d9:0:b0:44d:e1b7:d905 with SMTP id
 x25-20020aa7d6d9000000b0044de1b7d905mr30553355edr.32.1663160116189; Wed, 14
 Sep 2022 05:55:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220912092440.21011-1-chui-hao.chiu@mediatek.com>
In-Reply-To: <20220912092440.21011-1-chui-hao.chiu@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Sep 2022 14:55:04 +0200
Message-ID: <CACRpkdYgAv_XM6-b8mQMT0xB76JgwgxriEVwPj=9cHyLVJVUiQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: update bindings for MT7986 SoC
To:     Peter Chiu <chui-hao.chiu@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ryder Lee <ryder.Lee@mediatek.com>,
        Evelyn Tsai <evelyn.tsai@mediatek.com>,
        Sam Shih <sam.shih@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 12, 2022 at 11:25 AM Peter Chiu <chui-hao.chiu@mediatek.com> wrote:

> Add wifi pins in the description and set 'maxItems' for groups and pins.
>
> Reviewed-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Peter Chiu <chui-hao.chiu@mediatek.com>

Patch applied.

Yours,
Linus Walleij
