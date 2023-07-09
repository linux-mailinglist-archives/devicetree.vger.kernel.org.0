Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42C9A74C842
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 22:45:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbjGIUpk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 16:45:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbjGIUpk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 16:45:40 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 902FF130
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 13:45:38 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-263e62842c1so738823a91.0
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 13:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688935538; x=1691527538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0VKuXJiLl4HvR2YTqnDNQXpaaJCrd5ugD+RA5qI/97c=;
        b=nGJkhDHtuZyNbv3EGQTNumrvUR8md8wr5B76qo8ZY811YG4GH0Vhm5fF09TwpKI3X8
         4RIsAaR+iLKnXABk6y043PlxxN5SWC+CSEAggi7yb8jT8H5RJzla+50cAeWhEw43hYF7
         A0zCw0HZ/2kavsuJDbLJYJQ9m3doOTaFObwHAMcKAQKYi8VSuFsfskfawgQd6/5d84ge
         HAkyO0qJuh7b2eqSRQyBFr4bE9z96Y0NbV+ra54PxULYY/mU0/22IZoW+9cQAzf48Hll
         Jc9Ge0JeHOCdTxzF5+OKGODoS6a31NXwPqeD7he9klmgPQcd7LONIxJDgVeAoi0N/eh/
         K2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688935538; x=1691527538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0VKuXJiLl4HvR2YTqnDNQXpaaJCrd5ugD+RA5qI/97c=;
        b=ZtqiXLJTc1U+hWmNie4qWxbPJy8MqbiqXx7CJ1+k69QMRjv0wqfeS0SfTTn5e4FkkK
         FFd9SLZGGvqgdC30xGgtvUuab1NwNC5InFIrhaVeihN0QykNUlfq3qlNeroW/AybAC+A
         aSNh0T7mLzssz49NTrx3F52RZXKKDs/MFPeHVerooYCHnwDCx/IPoBUZNEPU6iPXlf9E
         YvwZZXpr9Na2IGPm0JP1/jMKlDSLc2AEiucHj/f7a+BZ4hTvjumcNG+Fop16T3ASaQtK
         eYvJkPCpdC2HDPVb/tLcDhHbs0frCzFAt51dmDpGzkrC6USqjD9PMbg1ilDi9c8jSlp7
         Kahg==
X-Gm-Message-State: ABy/qLaHBnRq9U8VXGPLQmKQQwv5hlV1868Mvxfbd+AqV7N0RA7EStLA
        MVR9df8JAncvoIV9nPBoQDlHGy+11rsYr/TPY/4=
X-Google-Smtp-Source: APBJJlF5P4AxlT6zTnk3rjXB/bPiW0Xl/UDZzJstJe6jGBHSVyYPQFJQg2MCEcF0hbhmSRz+HsL7fEELaW8tPPvw46g=
X-Received: by 2002:a17:90b:148:b0:263:6297:9f73 with SMTP id
 em8-20020a17090b014800b0026362979f73mr11142359pjb.1.1688935537856; Sun, 09
 Jul 2023 13:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230709203019.291823-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230709203019.291823-1-dmitry.baryshkov@linaro.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sun, 9 Jul 2023 17:45:26 -0300
Message-ID: <CAOMZO5Cd0U=j8AnL2vaFwwzPxmO6vMqRfDkAp1qZp5LdS4BZkQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: nxp/imx: limit sk-imx53 supported frequencies
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 9, 2023 at 5:30=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The SK-IMX53 board, bearing i.MX536A CPU, is not stable when running at
> 1.2 GHz (default iMX53 maximum). The SoC is only rated up to 800 MHz.
> Disable 1.2 GHz and 1 GHz frequencies.
>
> Fixes: 0b8576d8440a ("ARM: dts: imx: Add support for SK-iMX53 board")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
