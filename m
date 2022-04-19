Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 878AF507BBF
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 23:12:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357911AbiDSVPB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 17:15:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357914AbiDSVPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 17:15:00 -0400
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 874A733E3B
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:12:15 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-2ec0bb4b715so186661757b3.5
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GTIriJZRdzlai9p0KTJ6eZhqwTfpS2AfPb8HEFikq1U=;
        b=MSAHMd8HItA386Snoi0cQdBzaMZmt++Msg+jgKOsbUchFNAsko5EYv20IHnrcbWEkZ
         KVsW4nnJlySyFWu+c7zRQ6FDydCv4n+NHdMd0iIXi1nLTmPWk59Ufmj6FKd49b9shCrv
         os7UmwWr97et0rhtcRdZ7VNm7OiyCX7c1CKB+KkoUQefoi9vcgpmrRzBxIiaURtix5A/
         GAE/meQ985XLTSOkhjsF9V62jvw3Uy5Jq4LQ5grJ+QFWro6uk3ZrmRIB95VuaYV5q/qH
         cbaeg+aTIwt/YRf+ZkHeGoJsNQsbg25kp3CApeZACsmKPYYIN/9NBtYi4DABU6ZLnQkM
         fHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GTIriJZRdzlai9p0KTJ6eZhqwTfpS2AfPb8HEFikq1U=;
        b=skuL33QUhA4Iz4DBCbay6TN+7Du/An+xkbH+HCia5yWswROe+CRS30wAy/JbPJSMGM
         v0BUmf5H5bnjHYTUZMkoS9fI3/E6HqpZz9s4FMwDyG7EWcov8bcIkQmmc4NT6p40T9nz
         adA0wpOcL0pq1PsKEKmUvi5H8u1ZNEThu7DWPXap6CQvq+Xb/pkgYa3OJ9D6fTVBR/9j
         cM6n1ehaKeY+y/AGIeQSnfDJozih8cjqsq3kZFwhJvPDBVCCagR6PxWQIWAR+/n5hCVF
         aCdZsuJEePDqOE9AiTZPgxynrTnIiiy53XY1rzzuF0Hf6rX/g32fa2Gv25YG4+MiDIVE
         V1Wg==
X-Gm-Message-State: AOAM530pYg5N4ZkqdcNyxrd3sR6e1lKTdlM/u5UaEESEDUBuxexPREtV
        qNUSUuo7dnP4rtXHCpzjZExtbY/QElBem5QK+E/Ncg==
X-Google-Smtp-Source: ABdhPJwG5RC4bZTkqfFKCXotubzDXv70N9eLVBujE4q4g85LijmPwhkXxfK7oHa4RIuKIBZemwIyMBCXsDtNUmOBs38=
X-Received: by 2002:a81:b50d:0:b0:2e5:b653:7e97 with SMTP id
 t13-20020a81b50d000000b002e5b6537e97mr19126960ywh.140.1650402734784; Tue, 19
 Apr 2022 14:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220315211936.442708-1-nfraprado@collabora.com> <20220315211936.442708-2-nfraprado@collabora.com>
In-Reply-To: <20220315211936.442708-2-nfraprado@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 19 Apr 2022 23:12:03 +0200
Message-ID: <CACRpkdZj7CWNaqXx2+zUnGUgo=L+vqdrigbqqxMETBAnM9nYwA@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] dt-bindings: pinctrl: mt8192: Add wrapping node
 for pin configurations
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>, kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
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

On Tue, Mar 15, 2022 at 10:20 PM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:

> On mt8192, the pinctrl node has pinctrl groups to group pin
> configurations. Each pinctrl group contains one or more pinmux subnodes
> to list needed pins and their configurations. By supporting multiple
> subnodes, we can configure different pin characteristics
> (driving/pull-up/pull-down/etc.) in a pinctrl group.
>
> Update the mt8192 pinctrl dt-binding to add the missing pinctrl group
> node that wraps the pinmux subnodes and update the example at the end.
> While at it, also remove the example embedded in the description since
> it is redundant to the already supplied example at the end.
>
> This same change was done for mt8195 in commit 79dcd4e840cc ("dt-bindings=
:
> pinctrl: mt8195: add wrapping node of pin configurations").
>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>

This patch 1/4 applied to the pinctrl tree.

Yours,
Linus Walleij
