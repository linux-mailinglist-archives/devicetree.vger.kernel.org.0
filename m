Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C112A771CA2
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 10:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231200AbjHGIyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 04:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231178AbjHGIyD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 04:54:03 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D24F10FE
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 01:54:01 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d4f022c6c91so1401161276.2
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 01:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691398440; x=1692003240;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QeF5Rq6ezVVBpQULtHVMCwxuhR7zC8qg0BvYuicBYII=;
        b=u14yqO7GtyZkl2aLiTuZX9kAyeFzKq703yLHusK3SvNEn3XmYb7NDt+7TgtMsEdjsz
         IslQv34ZnzVbNNqFhoAbWTW87nVX1LsB5gJE4nRvg32ulBZ6+mdBrMz1AjW2v326pFA+
         WrhZilbLj6tt7vAwX2VVjbBzeYBF+O66g65fKqgizd1DmEZLm5dt03aORtXMOxZ1wEvY
         iHYeezAmf6tPeU5qDDj3BLksp7oWqiBgfOKMxDEn1ctEqDfNBerIYC2TqMUUjGh3Gm1Y
         cL9JcLIZJ7D5Ozje6VjmnK9gSUTM1SHJv/fnmepolCDOJK9ufF+EqDxX6ZuetPxHrEE9
         Pzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691398440; x=1692003240;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QeF5Rq6ezVVBpQULtHVMCwxuhR7zC8qg0BvYuicBYII=;
        b=URuTIN7Vu/soOD2oDpElfRIJrVR/cp5zXuIwHva8ClSJNcNZwSFL7RXy+5v2X2CCwU
         3fJlAr5SDWPY0i7RmPGVIua9qQW31ZGFjQfSw1YajqWmJRCNTA9tESozEZWPOD36t/t0
         nmbRz0+X0p3rNtPHDb8Ndu7oTgLCQtkSn3lu1dzldoOGMpdJYgJrxCdJvdvTgACUH3tO
         CtgXozs/9GGC+gy60SfVvgxnfAoNj8/TB3p0pakRW3YYA4ckuNMCCLcHAU0Ph5qiZJv4
         GxD9KaADCSatlMZ3PCfwRd+i9jsMKjl/zt9C1iQcEaU6KsawcsmHifVJDEUoAfYbOG/9
         +QTw==
X-Gm-Message-State: AOJu0YzlcA9cW5JGK/cczTF+cF2EbERtTB4Xhin/EJcolmkddhEGscCo
        cYSiFeN8JyLmtUNRkIpEEcjOkZ0hwz3UX982nl0hYQ==
X-Google-Smtp-Source: AGHT+IFHv86Jsl6/7WkZ07IOOIjjHtRvTVAuY5BH8iBoYJcYDq/HAi6+yMz2REL09FmYDxt3gPGBTsuRHCXbiFfpSBw=
X-Received: by 2002:a25:bf8c:0:b0:d35:c50c:8ed7 with SMTP id
 l12-20020a25bf8c000000b00d35c50c8ed7mr8145421ybk.24.1691398440283; Mon, 07
 Aug 2023 01:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230722-topic-6115_lpasstlmm-v2-0-d4883831a858@linaro.org> <20230722-topic-6115_lpasstlmm-v2-3-d4883831a858@linaro.org>
In-Reply-To: <20230722-topic-6115_lpasstlmm-v2-3-d4883831a858@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 7 Aug 2023 10:53:49 +0200
Message-ID: <CACRpkdY6K9_PcQa-w4EiVfJVPq8aivuHQPMwrRbH=PmpT0Ordg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: defconfig: enable Qualcomm SM6115 LPASS pinctrl
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

On Mon, Jul 24, 2023 at 1:40=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> Enable the Qualcomm SM6115 LPASS TLMM pin controller driver for
> providing GPIOs/pins for audio block on SM6115 based boards (e.g.
> QTI RB2).
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
