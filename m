Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D2766D644F
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 15:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235609AbjDDN6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 09:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235624AbjDDN6X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 09:58:23 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A31FE5BB7
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 06:57:40 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5463fa0c2bfso284349177b3.1
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 06:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680616597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QOG7EXNpbCQF/FK7NgcIhsZjmEslJSuxN767xxFdzrM=;
        b=c0QPXE/HaATOw04uUyouWe33f7wYI0Gv9yrnJ/BtLOmZ2x7dDrUf3+Lht5pe/vWj8U
         PyzZX6FfyOpHP5wKyYZCK6EQDJ7nqLYQsoLowAgjvykIR38+KPw2yxcLBaTY5Xn0CEID
         Fke1g6Ii4InnnyFybyNtl1M7H8x9AxOkI18J1LO5oZmq9DqbhEMUH3EAU0wHyoc6R1i8
         q2KJ7WwpTwic4zJ0z/1SW5hh1Fnu24KAWI2g9Mp5PmfLHoQ+wykh5YQjOmXnHb0eN8m+
         m8QM3kJnt7gQABBijG4xCePSN8mTvn3KelbspmSjXnETJkX512C82xtPv/kMvL2kXMV9
         Fakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680616597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QOG7EXNpbCQF/FK7NgcIhsZjmEslJSuxN767xxFdzrM=;
        b=MrZ54If9o6zTRs2wTRmwS/6hQf5yBZfnDIFq04EzZGj1RNsd8qSOxh7Z7fbWgGNqtG
         oS6bf41lukGLgXLJwqbvlJzVGnDw7FoDcnGISE7U47vLM08na3Gv1UJUmlIstSY/pXfY
         YdpqaSTPTmyNeJTcPLEBLQNO7m8SQcCdPRcWHWIWP4raw01cw412VoD03Xd6u8dvBA82
         DSukktQIEFm6j8qsY/RgtQiHHKCPTGWTssta6Ea7l+tS8CCHR7hN3SuSaH94mzTAeCdJ
         u6At2KCGq31RswUv684LY8qFsEMXty+qE3HcgX8c1xLHGyIV2gXLkKttWsJ0m5QbrNQG
         xCdw==
X-Gm-Message-State: AAQBX9fcTI1lNgGCqnBf4oUQ31EqN+Em5niSF5o6bGBizx2BYChGDMjb
        wg5u7R1Uj5wspbMQJH40fCyRCf0yARb0QWGD19ISoQ==
X-Google-Smtp-Source: AKy350YStYRZxmzUFjuh0G3rUNh+k1xCbee/1MWyMTOZE+CBKZN5euk0gmxKuhQhrjExvhnBVB5UMc35uItyJbpnS8o=
X-Received: by 2002:a81:c406:0:b0:534:d71f:14e6 with SMTP id
 j6-20020a81c406000000b00534d71f14e6mr1538463ywi.9.1680616597438; Tue, 04 Apr
 2023 06:56:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230327-cleanup-pinctrl-binding-v2-0-f21fbcc3016e@baylibre.com>
In-Reply-To: <20230327-cleanup-pinctrl-binding-v2-0-f21fbcc3016e@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Apr 2023 15:56:26 +0200
Message-ID: <CACRpkdYndXqTXrTakwv1mbvJBs-tG+pjOpLLCgS9crE0aBj0jA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Cleanup Mediatek pinctrl device tree binding
To:     Alexandre Mergnat <amergnat@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 31, 2023 at 7:39=E2=80=AFPM Alexandre Mergnat <amergnat@baylibr=
e.com> wrote:

> Deprecate properties which shall not exist, leaked upstream from downstre=
am
> kernels, there's no reason to use them. Here the deprecated properties an=
d
> the generic properties which will replace them:
>
> - mediatek,drive-strength-adv =3D> drive-strength-microamp
> - mediatek,pull-up-adv        =3D> bias-pull-up
> - mediatek,pull-down-adv      =3D> bias-pull-down
>
> Thanks AngeloGioacchino Del Regno to reported it. [1]
>
> [1]: https://lore.kernel.org/all/6e08d78f-ef4c-b228-f7d2-d63767ea87b8@col=
labora.com/
>
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
> Changes in v2:
> - Change the bias-pull enum values to match with other Mediatek SoC.
>   That allows to use MTK generic define and be compliant with the MTK
>   common pinctrl driver.
> - Link to v1: https://lore.kernel.org/r/20230327-cleanup-pinctrl-binding-=
v1-0-b695e32e4f2e@baylibre.com

These patches does not apply to my devel branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Ddevel

Can you please rebase and resend?

If you have several conflicting patches that need to be applied to the
pinctrl tree, then collect them all in a series so I can apply them all
at once. Thanks!

Yours,
Linus Walleij
