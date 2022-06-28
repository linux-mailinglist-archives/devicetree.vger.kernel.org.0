Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90C0D55E78A
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbiF1OQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 10:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346331AbiF1OQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 10:16:44 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C05FF2ED65
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 07:16:40 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-3177f4ce3e2so118546177b3.5
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 07:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=we5ZALKIcZuWUs35jjg9o55Ctsjy2HnxYxmPXSuiDyg=;
        b=Eyd9FyAYXxniWyCJYJAkq2hVEGZtwL37/io0dfps5oXoGF9tQvN0UI0xhOQzqpcDR+
         81ACSPLs6vR9gNEPPX6mzpEqhfkqcFtcXODLCvSZ052+43VrQ6YhTXiSRbXCyeik8rXe
         0miraYk+TxbuFt4D+8hs+jR/K47yYaYDtR7B1p1kMFpoK5KNd539fnbJRsIpGggfdKlD
         gfcytA/R9tSBaSCamjLMxfwiinGImTqJcKtssfwHZgiPZS/zn95H9omu8G9a/rvnouiW
         9Lt/am7oME2JJgyri8zSnjm3Stqp2jqUtKBN3pK62Q23qVibf0OGiel/85TyZzDwmKwb
         GbfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=we5ZALKIcZuWUs35jjg9o55Ctsjy2HnxYxmPXSuiDyg=;
        b=h1mBS91115nb6QAQUEKWEFvRnx9KNsHVZiCF2jX9hnYkr1oTdG88Is2g4GdJHLdDSQ
         kGM9DMlivMcSyBrV/awF1IkZNrNmatDpvnRJGmoBgRyoQTT9yB7godBpiYBc6AgLRMfM
         PWkqOHd+gm29Hv9CrOaIRoqXr+tm/hBJTWzNIt6uSdijReIAnPOJBgCDZ+b+KhLh+3YW
         UWn1XSptp6ETbJgih4srCpCgUkxLnMnKNkSwkKqLemcdTlOlV6kLJFwq/XHWS9sPr7oH
         hir2ZlpjEiUR9UDDoYH09qHJu42f4DMKZilcr/fUVaDFq74T4y4fB5Ies+KFAknT1pag
         dprQ==
X-Gm-Message-State: AJIora+Grds4jM9q2ssriaaUc468Ut4dlkMAKk0WBfYILEdQClIysDv4
        73O7cvp2TUqzHRDdc/FdNqVqMDwwZGS6D0taB6QYow==
X-Google-Smtp-Source: AGRyM1tUYDLFiLuFmKGH4vxI5KGQ3ut80NYRMBi3vRrXwmdeTwR14llzPy5yY/ZHPhJ3bpF4NVMUrneTqSzU7ULR33w=
X-Received: by 2002:a0d:e20a:0:b0:317:ce36:a3a0 with SMTP id
 l10-20020a0de20a000000b00317ce36a3a0mr22477892ywe.448.1656425799830; Tue, 28
 Jun 2022 07:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220627173209.604400-1-nfraprado@collabora.com>
In-Reply-To: <20220627173209.604400-1-nfraprado@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 28 Jun 2022 16:16:28 +0200
Message-ID: <CACRpkdbqfH5jG7jZdvoGhNGqWPMBB+ntHgBCL-Od1Y9f9tiiHg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: mt8192: Add RSEL values to bias-pull-{up,down}
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 27, 2022 at 7:32 PM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:

> Commit fe44e4984018 ("pinctrl: mediatek: add rsel setting on mt8192")
> added RSEL bias type definition for some pins on mt8192. In order to be
> able to configure the bias on those pins, add the RSEL values in the
> bias-pull-up and bias-pull-down properties in the binding.
>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>

Patch applied as uncontroversial and you obviously need this.

Yours,
Linus Walleij
