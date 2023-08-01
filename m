Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67E0376BDA2
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 21:24:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjHATYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 15:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbjHATYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 15:24:37 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C9AF19A1
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 12:24:36 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id ada2fe7eead31-447805165e9so1144022137.1
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 12:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1690917875; x=1691522675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+aNzctAvCOFsjRX9JcgTWRDXvSWghISVYKDuXeAx6tg=;
        b=uAF+ympd9Nu7rmVHf1u5CSlWFZUORYZ34u7lmLiDMWDO94fi0S9c7dF93CwkLUM2Gc
         CX3vtQfYAGNfMns/o7l5WzfpwEdtDcn3qDwPTGm6q2Rl8thL2jaDYCPoSBJuMpQOYJqF
         qsZ9nCmc90OTje9L4G96m2pZpY8YMRf59k4lNtmYHpi//0w/d98R7dCPCcCNqbQV5Rzc
         jMIu5SpIHrF89WfHycu9/wE0/0BFw95sRYp6Log4TSJZSLdXOZagwixPh6p7qGPyLoFj
         S6PTG5/a1QNLLWeHXI1pMdJIA4qHMJpKVLrN25A80nTgX+UQUUT+dpOcX0CTwrwxY9H5
         mzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690917875; x=1691522675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+aNzctAvCOFsjRX9JcgTWRDXvSWghISVYKDuXeAx6tg=;
        b=TXKH9Ng+rzPdQH2tjXFpyaYZjY16d7qWI1+KLQHwno3jy8RbR+C5fY3k3gYMonFp60
         h01nx8HhDlU/BCGInU9acndQHbqbZMc9opVARRVeSTKYjR7CQ0PDbMmMYUauVYfFarIA
         1iT7ERCcEe7ahmoQxAyOonlyAi7lJ7f+nsZRX5yv41GFcd6U25H8J7dmZ2BYo2qdfIzu
         3TMJZcDbNGMdH0xoIJ9bQx1JSmjcxWn0gJCaZIAFUtomMJ6hTfw73noBZdZ/lCWKBpVf
         Ob0UtT3vpawAZZUZeG9CLP6MEwFwC0fxojEZ6Onak05XoBx1a7BgFOwGz8jryRXQqhU6
         6X3w==
X-Gm-Message-State: ABy/qLbtU5ZL1orylettWkW6zM+fPjk+IsecgPWezavbGGE9bhYE0vmM
        u6L19K7MyWXHCyH+LEQXsJFc9YTJkRSjSpExEG1C+Q==
X-Google-Smtp-Source: APBJJlHYpG4QdfiGQbKHc2VahjAIeWLFoShgZExsSHTo84uxP4u7vJCiagobHPeyKch6nmCZ1p1A0SNtnZ8E2WjiWHA=
X-Received: by 2002:a05:6102:8a:b0:446:de31:c78 with SMTP id
 t10-20020a056102008a00b00446de310c78mr3202383vsp.26.1690917875513; Tue, 01
 Aug 2023 12:24:35 -0700 (PDT)
MIME-Version: 1.0
References: <ZMaAdG9Zj9AL1NiR@standask-GA-A55M-S2HP>
In-Reply-To: <ZMaAdG9Zj9AL1NiR@standask-GA-A55M-S2HP>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 1 Aug 2023 21:24:24 +0200
Message-ID: <CAMRc=McJjD8tDAgTrmAWaxuQ4QE9hRREOg_=Lye9Liew4O2Sdw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: brcm,kona-gpio: convert to YAML
To:     Stanislav Jakubek <stano.jakubek@gmail.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Andy Shevchenko <andy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 30, 2023 at 5:23=E2=80=AFPM Stanislav Jakubek
<stano.jakubek@gmail.com> wrote:
>
> Convert Broadcom Kona family GPIO controller bindings to DT schema.
>
> Changes during conversion:
>   - add used, but previously undocumented SoC-specific compatibles
>
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>

Applied, thanks!

Bartosz
