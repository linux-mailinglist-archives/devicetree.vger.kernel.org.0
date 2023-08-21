Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFC6D782726
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 12:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234746AbjHUKeK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 06:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234748AbjHUKeJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 06:34:09 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE516DB
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 03:34:07 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d776e1f181bso38489276.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 03:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692614047; x=1693218847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2TodbclnSIrmcoKizyM86je8kjfw1ZpjDygos76ymgI=;
        b=mRDTCTRoNI4DnQQDA7GBSJAExCCeK86ETFX6lBCU5Yei0kPhVkGGFmUO6lF4ojKdU3
         5xAEj8Z9pWse5Onb/iwnhkHoI18C0znVtIvFrjW1sHfrehhztEu+Lkl18mfSETS06Bsa
         FUN6DUrRsJuLk9FHuG5gBWxXZQCT//KWtp9arozC9jDrz7HvUyVqggpf9m7bowZjr8+s
         iFVoCpsNMai7OsSXM9NqRNGf5mcPPWUTC2FHn6Pfnvk7nBb2KmoWu2av9FVzLhVV6Cct
         alEmwcsYalz1Px3M1I2xwyGLGW7w4ZDKGRE3BZk41gRm8WqE/CqL/n9LKmR2CV/0Fi0m
         hbJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692614047; x=1693218847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2TodbclnSIrmcoKizyM86je8kjfw1ZpjDygos76ymgI=;
        b=NKEOxltBDBHN7Snyl84by2b0zqVcjiRTD9ALbZNICPCh0UrtqXEYyUVx7gfb9OsJo+
         PnPNC9wfHJ3oRaFcWEhGEC3magW/zYm0jhMKh2spIhOmP5wLpEaSmkYxAfJOr6jlj1ud
         vy109OeRHIK6gePaVzev6cs/aj5HzFGpWwjpdxki58a0Qpx4WO+D7qpNjlD5J2WusPXs
         9ha0pJPCJBkTABhr4XXDKEsISIxXaN+aZmtM2JlSpk4UvFYrewi+jpHF0i7gLoco4EmF
         ugspQCyex8n90u/HKV42SvI5OZMiyvW+YLvgvQxUxNFX335IG1cCehzBnu+Q3ephznjP
         fhdg==
X-Gm-Message-State: AOJu0YwhVbmaGNdmX8LUTP986K6TW/WuIZWxJId6jlP5DhbsrQTezfox
        wPWrniRaH3oldyrL6jnUFWrgEqCoU7bn96W7YrStYQ==
X-Google-Smtp-Source: AGHT+IFjl2TncfegXDjhGUrc5zkiYGwvp60M0gjElEIiSe2meHinC4N9uzl2YRvwuY6AX9RLCXFg/f9ZPPG7P/bwsE0=
X-Received: by 2002:a25:2e01:0:b0:d04:f936:556 with SMTP id
 u1-20020a252e01000000b00d04f9360556mr5857205ybu.36.1692614047049; Mon, 21 Aug
 2023 03:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230819010928.916438-1-robh@kernel.org>
In-Reply-To: <20230819010928.916438-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 21 Aug 2023 12:33:56 +0200
Message-ID: <CACRpkda94qc1Mc_yz+c2rYFdyhXsX-XRFTntv1fiw=HrpDqAOg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: renesas,rza2: Use
 'additionalProperties' for child nodes
To:     Rob Herring <robh@kernel.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        Chris Brandt <chris.brandt@renesas.com>,
        linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 19, 2023 at 3:09=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:

> A schema under 'additionalProperties' works better for matching any
> property/node other than the ones explicitly listed. Convert the schema
> to use that rather than the wildcard and if/then schema.
>
> Drop 'phandle' properties which never need to be explicitly listed while
> we're here.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Looks good to me, but Geert usually handles Renesas stuff so not
applying unless I get asked explicitly to do so.

Yours,
Linus Walleij
