Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0F3A740BF2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 10:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233629AbjF1Iz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 04:55:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236259AbjF1Ipv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jun 2023 04:45:51 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE5DD46A4
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 01:37:17 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-c14476f8401so4349967276.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 01:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1687941437; x=1690533437;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z1rezx4FlsyiQzr31Fbv1Ua224W3A27Dsl53mJwBX+Q=;
        b=ogGXQJd2uSxo2z1WJ24Isxw7Ug+j0GDLU4ik0XqFIbrVLC9D0b4F+mV6uMSTweCOmr
         jADciONLt7xBaGNprBkdj1FmeNa2d/sowA+2keN+q0Rl0ULBqTaJUFJqOdbuLB8ELKs6
         c5TLvOsZQ0wzvGI222pFbycvTWSKa2FYbEFhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687941437; x=1690533437;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z1rezx4FlsyiQzr31Fbv1Ua224W3A27Dsl53mJwBX+Q=;
        b=Xyei7I6DkX8S3vV4Syimoi4iJL2QDrc9icxhaBdY1k6yrnZjKuWuhjiKcHlD7ngwpo
         BvuamJ8CdkZWTT404LWWv/eHk1a6zJqjZzCjYoHXcZXMvKqsdX2mNVhd2cHy+IKoc5Aq
         Nk0Iuf55nD1lId1j63R7orxomj14ar1nYwmsY51dvmHcDqcl9K4ZcTM26lDaWgaNWz/s
         7cjl+vk83OyyBEz/dygKU5LJ8WCwB4M+QZihXejKVVKfsepJurRQ8oDUcVXu6C7dHL1p
         RDtpeWB4/4wpwqtUcNz5NVjzivaRSiGbestcCeigRnSX2dZdDdi4dxxqYYrJJ6t8FEnw
         gfgQ==
X-Gm-Message-State: AC+VfDwG70KHNpnSjU+cbiDnLcu19g6Ku7zw/ZlbT/dkwq8niRGYjmq3
        dJEnweVbE4pW1G7WoUHllwZxnEg3o8o44skL4Pg=
X-Google-Smtp-Source: ACHHUZ7ynSNaDvTLUOO72L8w5GZxe43z4T62gAVGRJmTHBxClEppsJ+68Lu581B7/3tessXIA9N4Fw==
X-Received: by 2002:a92:d485:0:b0:345:6ffa:63c5 with SMTP id p5-20020a92d485000000b003456ffa63c5mr11741815ilg.32.1687926313496;
        Tue, 27 Jun 2023 21:25:13 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id x17-20020a92d651000000b0033b27117120sm3137980ilp.13.2023.06.27.21.25.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 21:25:12 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-78372b896d0so65628239f.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 21:25:12 -0700 (PDT)
X-Received: by 2002:a05:6602:22cd:b0:783:63f9:55b9 with SMTP id
 e13-20020a05660222cd00b0078363f955b9mr6463588ioe.16.1687926311837; Tue, 27
 Jun 2023 21:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230627063946.14935-1-shawn.sung@mediatek.com>
 <20230627063946.14935-14-shawn.sung@mediatek.com> <30fc2593-1d8e-286a-cc54-03ee250a37e7@baylibre.com>
In-Reply-To: <30fc2593-1d8e-286a-cc54-03ee250a37e7@baylibre.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Wed, 28 Jun 2023 12:24:35 +0800
X-Gmail-Original-Message-ID: <CAC=S1niScbOZrq6srx2DHGGtKfTV+L7rEf6o+77Y=XCz6GezwQ@mail.gmail.com>
Message-ID: <CAC=S1niScbOZrq6srx2DHGGtKfTV+L7rEf6o+77Y=XCz6GezwQ@mail.gmail.com>
Subject: Re: [PATCH v5 13/14] drm/mediatek: Improve compatibility of display driver
To:     Alexandre Mergnat <amergnat@baylibre.com>
Cc:     Hsiao Chien Sung <shawn.sung@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Singo Chang <singo.chang@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Jason-JH Lin <jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 27, 2023 at 9:48=E2=80=AFPM Alexandre Mergnat <amergnat@baylibr=
e.com> wrote:
>
snip
>
> The lines is > 80 columns.
>
> https://www.kernel.org/doc/html/latest/process/coding-style.html#breaking=
-long-lines-and-strings

The 80-column convention is preferred but I think this provides better
readability.
Also checkpatch.pl allows up to 100 columns today and the lines fit in.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Dbdc48fa11e46f

Regards,
Fei
