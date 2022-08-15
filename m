Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7469E594383
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 00:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345413AbiHOWiI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 18:38:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348648AbiHOWek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 18:34:40 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6474072B51
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 12:49:40 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id gb36so15217976ejc.10
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 12:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=m67EJff98GODNT9Ex0/hz32xjPCkaX4RTb2W/H22b6A=;
        b=vZ3KSlgu2w4W+/oYxGdQqXPiH0C9jBErZhMcjLi3pYC6RObHOgwGPcH8C5rXhea5um
         84FUWrgGpfHAyKuOe3nLaTV+qpTY1Nlf1dPHwwMJE2JrGO5fyHqTUbUHqS+OdOSIbFOZ
         T+QhOu2Rj0jYqwo2Mbbj0P3dhwRWETQPJFftMThrpLpAcadF96T2VJFNevi1MpjkZYtl
         acKXd5wT89G49ASaXEzs33kqxSkURPyGT0wUi48M8vcERJqlOb5hoJ9eoJWMsSmMTxnE
         9M0Vrq688IdVfZs0gsn/6VBgK+gH9PgqPT5cliJQw2bRZcZhFeclSV3oBdjOaM0zICoS
         vkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=m67EJff98GODNT9Ex0/hz32xjPCkaX4RTb2W/H22b6A=;
        b=S5Azs1CfhYlfKgPclpelU3v3C2VdGBjh5cbU0XSTbZpNgKxCi1NMlL+Z2aZHKwGUW8
         iniz+z18soDW0CJISRLN+0+LSFVysml/IbwCiisHUhlOORh0fj/62AyL1Ys1TQpp+48L
         mjQFKhgvXHxbXsrd3ABjqodiS8ccCmfYS7CLv9S1tC1EhedRwTDrKqf/nobSOa5UGzPa
         W3CDSA5eaymREauElxrq09sOoZD7GjIPvBdh0OeovGJpaJfctIw7LQJDmveqaU1CwDn3
         Gv3bXDFXaUjkLZUHjzrCOH9u+DBiZwK0QKkVKdnayGqrRPqjBgekkjrlvRmnir/0Ws2q
         XOXg==
X-Gm-Message-State: ACgBeo09tBgnrnogBg2GVCXy435YAx4K0KiJoBz5MsBtvxb/J9mTjtLf
        FN3+zosEW3SRv0yMgBs41OrQ5fekla/HoMcQz8bm0d0Gudc=
X-Google-Smtp-Source: AA6agR6q5mjwo1Y+kcRShH4sdgxadLS7IVIeRxqgxtvrwGWYPB0p9HIKRFxe3O4/pRVTR8kR2RLCstZitIhQR8D+UYA=
X-Received: by 2002:a17:906:5d0b:b0:731:3310:4188 with SMTP id
 g11-20020a1709065d0b00b0073133104188mr11564211ejt.208.1660592965944; Mon, 15
 Aug 2022 12:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220810111037.280959-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810111037.280959-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Aug 2022 21:49:14 +0200
Message-ID: <CACRpkda9_BSV+ZR0nnfv=6hFOacrE5UAtM-V-g_2Y5bWDTSvSQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ste: ux500: align SPI node name with dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 10, 2022 at 1:10 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> The node names should be generic and DT schema expects certain pattern.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij
