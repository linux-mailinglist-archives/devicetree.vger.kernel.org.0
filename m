Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D29F70FFCE
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 23:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbjEXVNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 17:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235503AbjEXVNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 17:13:30 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BB7E4C
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 14:13:18 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-33a8f766b64so17405ab.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 14:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684962798; x=1687554798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vEdYxdYetiOJG9KjcYwzVdHTHSNxCtOLYboFK2bcSHM=;
        b=Izcguru0m0GonlPHAnQjcOLsaouOFxVJ6x4X6zQ8HIVwD3JLF/PPVL326mc5XVKFGz
         rj7hJ1J7g6KF7qAUQd7wylY5D9Mcg5BS3kRVjXw5McMtv7bXbcqVnl3YPx1dxTpVWy4+
         9SbLTwWmMzz8b4vMy/+BrjOib8SOJbtkwKWEx5JFBll2qiD8K+sJzecLYB8A3zECZvU7
         JxQlHLsXqxjhS6SJg2VAD6rGnT1nBb1Vw/JFsCZ139KJ4HQ1Fj7tX2XWaHV7oR3a076d
         JsGEPun9WDcmlQaxZ8B1Ure0jcqF04bx04fwXCq4p4BRlHDz4azH31F3Q2BixEBCe1mb
         vGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684962798; x=1687554798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vEdYxdYetiOJG9KjcYwzVdHTHSNxCtOLYboFK2bcSHM=;
        b=gOzd2QfEU3uCoaIGTSF2wF2n2zf2LuiPEv+DFimg/att7LAcgE2FVXp11pKMKhhWA+
         3HOP9A5p6wKbGpplvy14dYOO159J4BV0Jphsn18VWu70hSELE68ks1vcRl2F1Iy6QbU9
         DSXHuj7+gg3USh1SO//u7bdL/0CCFCBfyfd6dDvVixuIfyHupGFqX3AMnfQzbp+dCPt2
         W9La7taJpNBCHXTIv1HwUtC3DPNBPb2jUNC5aD9hkakr+N/4sa/Np8W7pIg/WQqSNirl
         iaAM8RrR2wCGnRYR9T/lWzCJUXZd+waPUsrjNPX++BlLR30o0uV3IcJcciqCpBAqf3zY
         o+mw==
X-Gm-Message-State: AC+VfDxBFFOvTFINN/lWHNL3rMEcKIBcZ0D9JbYSYiZlBWQkKHwpYTdG
        9wCPD6T99Ei9OhD1SoN4esvG0xfrlRgZ3Q64wxCwtA==
X-Google-Smtp-Source: ACHHUZ6mbREIm4Ztc8moSsgKru2S/9jx12dtX3Dli6UKcvfjWKYl0QKXqxeWvi0k//DflwaHfMTWM5i2nMBZDc1nqUI=
X-Received: by 2002:a05:6e02:1689:b0:329:333e:4e79 with SMTP id
 f9-20020a056e02168900b00329333e4e79mr85770ila.1.1684962797671; Wed, 24 May
 2023 14:13:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WRecTWsFM96k81YAx1=jJT0vpS4EPP0ZfWFUGHNFx9Tw@mail.gmail.com>
 <20230524074455.1172064-1-yangcong5@huaqin.corp-partner.google.com> <20230524074455.1172064-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230524074455.1172064-3-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Wed, 24 May 2023 14:13:05 -0700
Message-ID: <CAD=FV=XUuzjjLq3YP3683jOd06odwk5Dox5MS8oY8goB-_8T5w@mail.gmail.com>
Subject: Re: [v2 4/4] dt-bindings: display: panel: Add compatible for Starry ili9882t
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     daniel@ffwll.ch, neil.armstrong@linaro.org, sam@ravnborg.org,
        airlied@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hsinyi@google.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 24, 2023 at 12:45=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The STARRY ili9882t is a 10.51" WUXGA TFT LCD panel,
> which fits in nicely with the existing panel-boe-tv101wum-nl6
> driver. Hence, we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
>  1 file changed, 2 insertions(+)

nit: bindings usually land first, so you should swap the order of
patch #3 and patch #4 in your series.

In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
