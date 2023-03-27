Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF9F6CB0FA
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 23:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbjC0Vsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 17:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjC0Vs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 17:48:27 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0758312E
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 14:48:26 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-54601d90118so40429087b3.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 14:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679953705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdTww4WzcUpLDoiL2bDzx/ldQeZAbCSgPQEL9AHx+Co=;
        b=ws6Qs6nZCHu9bCZ05S9m5EcuGcfNOqs7mTbCwPfPASP6i2cs98NoLhDVm0YWl0BVRo
         gel+5a+Ti2o1fraReFNH5b9h7hGTn7tXgVPbFj7YlNbKGt5XqDrtejiPfweD0+8AZuPE
         tFpcCAlNFSqt8JJwPMs0WxWso++WlAfv1iUi8N+UQgjqZcXSPyL1g3AvQYUZGcSQO9xz
         ETwHwvFg4qSLJLTbVQ8VbVvEw4MS67v88Wc2iM52Elxs5yZ2fI9bJgsoP6sWCMATsgst
         3EN9BhaaraxDRzXFD2QPLaQ+m5lTTzLNh2dE/W29q5LZGYPI6hjoaMMztym02kDG7rTK
         ZS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679953705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mdTww4WzcUpLDoiL2bDzx/ldQeZAbCSgPQEL9AHx+Co=;
        b=C7j8/eHtQ1nmtYKuICq3SunDOSqeQIoSKhXCUTZXB1ONgQREY2erZvtR+yvDRn/PP3
         hsxabu9s1ikNOMKkwn8P1tp3ExzrWbMokjGdiBIuLOz38tdjOwJ5MNIuoFC7fqmNhT5y
         Plt9oFxYVDfp8Ww2xe/eyDEpGhyVVinq9jNij0LXV+zImRKKAvCyw6B42Eu5PbU05CZp
         GqqO3UF5RomYzatYJx3oQ7hdM/76tkMDPiTmzgaBNtPFEWF+muLuXyX9y6rkSmCblZpz
         V4eDPuqt0xmyJUwCwcqCDsqZzLuCxhYe/mjDDnJ3alNZrb8L6EwlY9CDPvt6nmNSP1vq
         YnIg==
X-Gm-Message-State: AAQBX9ftyYCkCZR+eVzp4rf4zItJM6paJW7kRYxXm4m6346Bz8yTP3bv
        Px0EKDO3pBGMmFRz8vhl3tMozydYCYktSln3QR+c0w==
X-Google-Smtp-Source: AKy350Ys4b2JB7JAUX9iVy6IEhD3Bi/kXCG2nruSjeIpZO6GuHnrFZeLoV2WgnvD8lgdGNGYCCjSLC9y/fhKrpawBuI=
X-Received: by 2002:a81:e308:0:b0:532:e887:2c23 with SMTP id
 q8-20020a81e308000000b00532e8872c23mr6154400ywl.9.1679953705097; Mon, 27 Mar
 2023 14:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <dd29c1b7-05db-dd98-df40-20a238d89a96@gmail.com>
In-Reply-To: <dd29c1b7-05db-dd98-df40-20a238d89a96@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 27 Mar 2023 23:48:13 +0200
Message-ID: <CACRpkdZZDHriGoUMXX7uSa2K6pPFZooATOuLC1Ye4XiaWbvjWQ@mail.gmail.com>
Subject: Re: [PATCH v8] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl binding
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 25, 2023 at 12:54=E2=80=AFPM Heiner Kallweit <hkallweit1@gmail.=
com> wrote:

> Convert Amlogic Meson pin controller binding to yaml.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Patch applied!

Yours,
Linus Walleij
