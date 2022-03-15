Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6347D4D90BB
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 01:01:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237663AbiCOACe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 20:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235495AbiCOACd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 20:02:33 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC1B723BE4
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:01:22 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id o5so5245792ybe.2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/Hx8gzlcnA9WQe4/nRaiJeKdSgiXZDA8CSlyHo2MoEU=;
        b=jcHH0Naib9/jGqvrQ1aYDeQe3af8nnI2aVm55ZrM2tqkwPQZn77OZg8GBKl4niqFlQ
         AgaFjT7RvjJ1AtNBsiX1VKChX7x2LCEBUrwA4ucBUbp+gNR+ORBmJ7+O91o1H1DRkdzZ
         IE80u8haFRV+iUSWtskB4AzB1hgZlQvsiwDTgviW2XjmenxrO6BOvb0VMtE/mFkNiFM1
         duwvtqqfBzFKgdy2HKekrDBNDHC5cL2jHfIk6dwXOzAPWNKms4SNu4Cznl84wLUduZ5k
         AsDyPAX/JN0LPzP6m+1z1Qm/u8oNdK0JLnr87UllvIAwirMbxU8QFDQeNOaroPoUgKsZ
         nkBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/Hx8gzlcnA9WQe4/nRaiJeKdSgiXZDA8CSlyHo2MoEU=;
        b=7LBgLgCnSY7XtLU6xfsdK6v1YDJrEeclK850Ok0aZR7Dt/PNv2mgft2gN0TZXsK35N
         AVVBPZxDB8bv9LtZ14YKPYUndYsrksaLjfu7Ee4xEZhINhEnExK1FObVYfwO4CyC7ox/
         XJiSVpY6sxOkJ4P0TJVklExmsfjHoazdWNBfD9TO9GBqk+ezudaoMNRZEuEdkxnmAVQZ
         HzfoAwtj3/erCSma3MkzJ++EG/td7PGmTYQ65yyY+v4As4mhCtNUrxFy6TdVlP6kvQ1z
         jq4yCrWgvEj9dkjoCn8cTT9RWDT1NNMvhnaaIY9XifHENdu0MY6WqPSVvxjPgsiuqT6i
         0jLg==
X-Gm-Message-State: AOAM532tb8Msw+K9EcW5Vav1a5OXqQ2TzXDmzEbhzPSg1TeXiKPkFdhf
        6ECHrFvjcY7vy2/FYa8a9siE+mklD5jGycyY9vDoLg==
X-Google-Smtp-Source: ABdhPJw5LtCuJ+XoMQAG1Kz6dZV2htXDgYWN1IuTcwXuEzgQE4YVaS5pBngW1oMfQeA9WTvMA9GcUMZRxHPHeRyBljA=
X-Received: by 2002:a5b:dc5:0:b0:624:f16d:7069 with SMTP id
 t5-20020a5b0dc5000000b00624f16d7069mr19792106ybr.295.1647302481820; Mon, 14
 Mar 2022 17:01:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220216032124.28067-1-guodong.liu@mediatek.com>
In-Reply-To: <20220216032124.28067-1-guodong.liu@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 01:01:10 +0100
Message-ID: <CACRpkdb5t_rKzRy6+NFy1zbrQstPXNMaUndvNvt6VOfiN2z2mA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] pinctrl: mediatek: Support pinctrl driver on mt8186
To:     Guodong Liu <guodong.liu@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 4:21 AM Guodong Liu <guodong.liu@mediatek.com> wrote:

> changes since v4:
> - update mt8186 pull up RSEL type define value
> - update mt8186 pull up RSEL type si unit value(ohm)
> - update macro definition name
> - update mt8186 bias resistance selectio register description

Patches applied for v5.18!

If people have more comments they can be fixed with further patches.

Yours,
Linus Walleij
