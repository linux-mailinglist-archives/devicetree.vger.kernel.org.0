Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B265639858
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 22:56:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbiKZV4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 16:56:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiKZV4T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 16:56:19 -0500
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3E717E0F
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 13:56:19 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-3a7081e3b95so71832017b3.1
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 13:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Go5odiu5QN0tpd3XhStg98Rzff6cbxXg+1YFQ4ZWwYo=;
        b=VxK87r7D5Sxv2QZHnCPvE4e4x1qhGqrLpuZVgn4qXSU9JvMbPhYbjVVENMOBT5WdRD
         fklQTir/LAO3eNyAg0OfIcsoPSKmgmzqRSiM5RvH1jlHba5wJLRaeKxo1awKqC8AMXwh
         uhiLSwdibzbYkd2IdVIN00t9S8ONtPPPAJkZbkQQ/2pIz9Df/wPmGG9h+A8zbkhR1NgY
         NApMdr3RC220prNT64MXiKtuZiMlxFmgXBnqqBMzNNrUqVmwgx21T6IjNwrjdmf7ND8t
         tnE70JzW0/a+cWBGvgPd56JK3UToccvmRmS9Bg8pT6ovV+51Z0h5GTyS8jPimx2YGV1H
         +4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Go5odiu5QN0tpd3XhStg98Rzff6cbxXg+1YFQ4ZWwYo=;
        b=qJ+JpjSnrOJ8vPn1Op9wdFw6Xd+IIH/tBI6MTV70D/AZQ3vrRzn/nlD2dADxylbgVG
         FLWAtBRmC2Sm7pAVzjBfZIrMRRpVfJWmwhqBaEFPYrcreGHaHkLfjUFCfVnNWLJFTtDh
         OBcVKSHmCUMtBnQ5ostssdmzjDEQLKcbBcodcsOd3fO93muMiMk9/REwABzfYSZvYGNi
         X/co5r7GIfNkJNKPrX7ho19rdSbGHBJbPja3+mUSucfaPNsodCHiex9sA7fM0lG1I+Ek
         yug92M1tgCb0hooLQpoJ94mJUa0jfvu2dFKiCUbXS+2EpcayoXMm4oX65m5tNwjOXtQt
         4luQ==
X-Gm-Message-State: ANoB5plWn8Iv6TTdThuppkPZQyyP7KZaLhhyG6YLL7YW/lFYhwIp4VoQ
        GYd/tW75UdGEjxZlaZwms/YRzrL0rHwi5rw1dMSgJe7/txU=
X-Google-Smtp-Source: AA0mqf4Kp+n/36uQXBvcHVui04z4w2EPYXS9JeRocw0YK5S2MS3YShCoLZ6/NnEMnLcDFTtF/TOqRBXLvhafrrgWNNo=
X-Received: by 2002:a0d:fdc7:0:b0:37a:e8f:3cd3 with SMTP id
 n190-20020a0dfdc7000000b0037a0e8f3cd3mr41994077ywf.187.1669499778580; Sat, 26
 Nov 2022 13:56:18 -0800 (PST)
MIME-Version: 1.0
References: <20221125144114.476849-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221125144114.476849-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 26 Nov 2022 22:56:07 +0100
Message-ID: <CACRpkdZxS-o3+chB4511ReJD=ZsFAGNvM-1MqFgAx-Df8FX0Nw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ste: align LED node names with dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 25, 2022 at 3:41 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> The node names should be generic and DT schema expects certain pattern.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied to my Ux500 DTS branch!

Yours,
Linus Walleij
