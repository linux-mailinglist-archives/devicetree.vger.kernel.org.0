Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA2D15F3D98
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:02:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiJDICV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:02:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiJDICT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:02:19 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DFE92ED4F
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:02:15 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id s2so7151393edd.2
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9SrqMHrDcbw0HXVuGyxRTyOyLb1YuG2MUycnmZlv7to=;
        b=bhDkgiBPZynxSkiCMWQrfmDkn6DOpHDqvNRWyTRgljSlBycBak6ZBFV9r9FZjAu+FM
         +7QZztEWB/1bV9uMpL/2RF3pSiXNdtXVNZQ6eS0f9wKQJAwP+DMh/ZOFN+etzbZlsF9G
         j1MPDlJKR6ZyQxCHQCNnaQOnAWMuHVBM/yWg0JHCCzVWDh5U9oqb/kLPCqS68bVXcbIE
         exmYAOo22+WDwJmQb3/uwXeYf4jifdT6m1bOokguW1XRsfgspr4f4aV4zq0XFHNjlpyo
         +101H05Tc75vKduyUU41hk9L/mmBC5CXTbQxo/q9HFKG5jKCNzBGo+i9TgcbvIXxkwk2
         f5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9SrqMHrDcbw0HXVuGyxRTyOyLb1YuG2MUycnmZlv7to=;
        b=7JiQzbfMtOQZ++o3a1atSyDDrZ2su3RIvYfoOts0yajmztXqtF0S19RwE9Lr2VUCx7
         7D7gW1Rc9WcGe5Z15KnljJLW6q1c3/c79PVyoTWLRc4V8yHfNRDL7V1XnKC2sMHlUhLe
         qJHDjv2aD+I0OY9Jgbzv2OkZzv5wQo+YnmZHtynQLhCk7JLtLBPngtOHN2846xPeSnjU
         OIbbSLgek0r2D0015UFNbIT4823h1IIyaDGjV5OukLSitFWdd0zpKQATRCs9Lg5zBxpz
         DWyTKQBuNFu8SQ2ZQC3L/iqxafyirnkYY1mzK+/nLApbd6uIMEqSHY4gx1/6GwI70VjW
         h6kg==
X-Gm-Message-State: ACrzQf1EmmifyDjf+GUP2P6Xn2dUueZIsGAe20ZQaP2jRECbTWYoCPod
        zFTdCYy0tccIaR2BOkX/y6sj4E9QgOPBXM/Vo2ZPbw==
X-Google-Smtp-Source: AMsMyM4SHwqeHOGo1GFCnI3sjC72+fu9bJ7G8+rh9jTJBgfSDJbl8MVKMtXieABnvokGbtN46W0RU/1f+knat/mo37k=
X-Received: by 2002:a05:6402:4517:b0:443:7fe1:2d60 with SMTP id
 ez23-20020a056402451700b004437fe12d60mr22230946edb.133.1664870533832; Tue, 04
 Oct 2022 01:02:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220929080210.3189925-1-paweldembicki@gmail.com>
In-Reply-To: <20220929080210.3189925-1-paweldembicki@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 10:02:02 +0200
Message-ID: <CACRpkdYx1rYVnEW150a9oQ2VKb6Xyt5L-4anRzE_Zqqsxpvk6A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add drivetemp thermal zone in Ctera C200V1
To:     Pawel Dembicki <paweldembicki@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 29, 2022 at 10:02 AM Pawel Dembicki <paweldembicki@gmail.com> wrote:

> Ctera C200 V1 have two SATA bays, but thermal zone is handled for only one.
> For some reason thermal zone works only with first disk.
> It was reported one year ago [1].
>
> [1] https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg56599.html
>
> Suggested-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

Excellent patch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
