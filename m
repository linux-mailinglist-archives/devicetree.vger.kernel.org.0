Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 160EF6B386C
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:21:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjCJIVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:21:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbjCJIVn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:21:43 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F14DFAEE7
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:21:43 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id k199so4490313ybf.4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678436502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ySU0Q7GXYN3ON7OGjccBtdLdO+qDZD7UHnBgOdS0S/o=;
        b=T+jqPV7yPoD3RfLfFnTiJL6jaIDA5VohAY76avwXhQGOSdCkOBk031kd32F68QHktv
         lO2plwl7B5Xt8K9hfVEAMd1mH7kODq3XcYiwdcNBEbv08kYNThwwyli4gKhUFz9TEiWe
         gWAIs+Ht0E+5/i1lsOnrAlEIKGlCzmeeE4ebWg852zkwqLScio6R5SSa0xuL9E7urOVO
         mKlWc9fhjpGFmGDJZqar7MyvT9xFGPmeqnxKWR5Aw4vhafsJseGduwmley7BKdg4OtVJ
         G66wNHqOpOo4TF0G/z3oUe3QycRzEPia1hpK03ppLqMWeYDKNv8kS7j83EYUvl9ABPLC
         t2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678436502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ySU0Q7GXYN3ON7OGjccBtdLdO+qDZD7UHnBgOdS0S/o=;
        b=uEGZeYBxKj8i7pU2WXqRiYssIJ90l7UJohfJyqNDwJkebG4nT3Ln/9NhiZ73CRNUW3
         oM0MfV3ZDPVO7f0LfW+lO00ntOz/xH89CEQCW8NcISGynAfLsHBZqUHsIYkaaTTYV1UC
         LgBkcRC8yRhshplTnCvIXpoX9+ZPUuUI3/iz29DJyB7U98jswYBMyC6MMXYqWlFrNKn2
         rGy+jw7RzLmLKsxwH2IboSitbecV0OepqTgvz2XjOfIkb4LPrBP3KlxdnJQFyuzhCcOe
         8XK24ygRFhBsDKq+bd72xefohWGlZOI9l09yi0+t6FCKcwMy8jjwbcAVZBbrB+4w1ZCh
         4b/w==
X-Gm-Message-State: AO0yUKUm8JbiJgAK+inF3Xkjba4xpg36CN0dO2jIH29GDCVHNVvqWhZp
        3TkBtM/ZxkirFE2vIiODn4fsRGOo7M0heKowPOJ3WA==
X-Google-Smtp-Source: AK7set9zkKeshu60CT4BB+CLUz9aG2Jvxo3A28YBEXyHaNszVNEOcfGR23PbkN9FkcU9NU+o0GgtEldrEaauXE+UekA=
X-Received: by 2002:a25:e201:0:b0:b2e:f387:b428 with SMTP id
 h1-20020a25e201000000b00b2ef387b428mr1077246ybe.5.1678436502291; Fri, 10 Mar
 2023 00:21:42 -0800 (PST)
MIME-Version: 1.0
References: <20230309225041.477440-1-sre@kernel.org> <20230309225041.477440-4-sre@kernel.org>
In-Reply-To: <20230309225041.477440-4-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Mar 2023 09:21:31 +0100
Message-ID: <CACRpkda3KmM=31veWKfwhj7ycCaf6qW_fhDC=pvpW2h6PVggHg@mail.gmail.com>
Subject: Re: [PATCHv1 03/11] power: supply: generic-adc-battery: convert to
 managed resources
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 9, 2023 at 11:50=E2=80=AFPM Sebastian Reichel <sre@kernel.org> =
wrote:

> Convert driver to use managed resources to simplify driver code.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Excellent
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
