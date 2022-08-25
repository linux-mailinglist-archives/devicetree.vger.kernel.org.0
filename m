Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FDF95A1140
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 14:57:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240415AbiHYM5k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 08:57:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240170AbiHYM5j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 08:57:39 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8001372690
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:57:38 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id u6so20928989eda.12
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=dhYJsbXCC7QnSXhlqyPvS2dihBeaREGth3gRm14mYRA=;
        b=kmkSLsY/gtjS6zFGEX39gf70mrjZP5HLTwjp8KZLIrFm+eCFRIUmRlOqv2fxsiaCh4
         JDTQpkl8bnPc8ELLarz6oy9jzVMmpEChbu8YwDGDSPc/+PEcHHVFUPLLJjvEIiCKW1KF
         3uGE/kV/avnTiXmNuSEHsN47n5rUeq9axYB4jntleOaIAeGaYYKhQ30PRFsL9E3Yeej+
         fGgR45F5TgCvQzJn70S2OYvhu6hAyEbEGgWJYvILlbOlGgS6HPFntE8S/IQ0V4qijmHD
         wMORK2Z+8yEiU6pmzQlx6CJioIddG799Ta7tYsaHUOvYXBL0LE2nuRcXktVCpqzhMWqW
         67Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=dhYJsbXCC7QnSXhlqyPvS2dihBeaREGth3gRm14mYRA=;
        b=Ge2aQbtuxRRd7Y2TSaQCsa7w/eG0NBRzMZfvHB/EZaSS4+kBAh2SJUYA5+qUjPvmGu
         qw63EYIn0vA8g/eGpXnw0ohl2OX28JkmsflwWrDbPGLcErwXsFdS1PMfNkcXyLWDz+hi
         NW8p5eIBwd0se9X9DepTNg1sudcQdad/jWoMYLfA58HpUft+r3iY6AngkdYKdshGWIEg
         kN+bBr95oHyYBezeUlWIwDMDhhZ3lpfuE6EKyTsiKmRPpFky3gL+ce9bbzjg4knlDkdy
         FhooI3PY8xX0+kNGf6QYGv4a7VQPZJAUJu+o+VvGq+KSm9rO5PWokdRFJ9O0UTs4mQwQ
         fFNg==
X-Gm-Message-State: ACgBeo1Y8yjBhgJo6SbtEvzxomL2Z1Kn7IBkxQhK6KqPkazVKv6+2Joq
        XE//oiVZ1DUtgrvBeE5NDapEbtFrG6SDifV0WSbIuA==
X-Google-Smtp-Source: AA6agR4JUzt+naPq8fe7NbryaurWCekMpagBd18TGWfPXFa/2srTTq31iYhtvyAYS4xHJPCCIyERxd651OnRnuQ9eUA=
X-Received: by 2002:a05:6402:4517:b0:443:7fe1:2d60 with SMTP id
 ez23-20020a056402451700b004437fe12d60mr3139546edb.133.1661432257084; Thu, 25
 Aug 2022 05:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220819120649.21523-1-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220819120649.21523-1-allen-kh.cheng@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Aug 2022 14:57:26 +0200
Message-ID: <CACRpkdbLdORz+AzaoqSwT5J_=Mw8PHr056o5n0w6=obEWudb0g@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: mt8186: Fix 'reg-names' for
 pinctrl nodes
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Guodong Liu <guodong.liu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 19, 2022 at 2:06 PM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:

> The mt8186 contains 8 GPIO physical address bases that correspond to
> the 'reg-names' of the pinctrl driver. The 'reg-names' entries in
> bindings are ordered incorrectly, though. The system crashes due of an
> erroneous address when the regulator initializes.
>
> We fix the 'reg-names' for the pinctrl nodes and the pinctrl-mt8186
> example in bindings.
>
> Fixes: 338e953f1bd1 ("dt-bindings: pinctrl: mt8186: add pinctrl file and =
binding document")
> Co-developed-by: Guodong Liu <guodong.liu@mediatek.com>
> Signed-off-by: Guodong Liu <guodong.liu@mediatek.com>
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> ---
> Change in v2:
>   * Remove changes of the formatting of addresses and add C-d-b tag for
>     Guodong

This v2 patch applied!

Yours,
Linus Walleij
