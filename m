Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0E6E6ADC65
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 11:50:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbjCGKuw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 05:50:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbjCGKuv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 05:50:51 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58D3119F21
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 02:50:49 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id x12so10915890ybt.7
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 02:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1678186248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KK6+pmxlkkVYq1/dWLbdAI6eiiQIn+ylv2hMdBqK3+E=;
        b=ZV8QkZxiPpht74gPwYBgIZqWLanOR7Hh9l9ufs6DkGmYq/8/bJXfM6oqkXXEdVwcWv
         X5NPGxA1kIUpnj/Bfp6BKBMPHFt+GLkWuMR4fT3P7+PTUZpMkOhY86v5QSk97k8TxFSW
         HVEjQ0Xf5gfKAJyeSrVqo7SSJyew70fyAS7PMjw8//51x0J5EkHaKOA4C8qchRNzkSuc
         QUs0sscP0NJyXwCm4jiTqyde1HJPr69AOmybk6EQ0jwwbdnhT08eDXV+EMgwtMAi3P3N
         vQdM1KeeF21KslFm19BYz8ep+peLxy0jzQf3ewCfoHeXbcAiAQV3R1NY6tGGHjbaZ8N4
         IK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678186248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KK6+pmxlkkVYq1/dWLbdAI6eiiQIn+ylv2hMdBqK3+E=;
        b=O3MgU/gfruR1A1i//E+oEp7LqW3DnH3BZd6LbIDhIVp8+2JQ9wycIOGIERnDTKqBTN
         O0zfdBP3g5Mr0u0e+zTJ6e7T9WUsWRAQVofkyBRSjBjEcIlw7AlhGEQ33MiMBCArPQHA
         JF7pj9u1x/wQJtmgU6O3ufYpcy7gBvKZS0ChPaL4IxBDuBX9OWjdTYngnKY3UTtGQjr/
         MlxC/H5jmAnjFlPuuxw2c/g1FMDF3cdotSNMgw7S5LR5wbXYn+UfV7L3jn/agTsEsdD8
         NOtu6eH79U3A0PjaveWIR+HvvfSv6KtyrSguww0fcoQRQ8KEdAv6HsG9DZ/z997h6vVi
         Hnzg==
X-Gm-Message-State: AO0yUKVGATMFa8oxHjO4dwhssai0d4Ek2xR1aS5OW9fZ8jZ/ABdVqQmN
        H3Pk3OOb+OrGAkIF5QpOMwtcYAIbbGS1wFPNh4fNVQ==
X-Google-Smtp-Source: AK7set9JDVjFHts0EtGNNbzx363IolKWS/zKlAGLFGrtJWNK3ZkAp65ZtKiRq0kW2AbaXZQtaHuWGwc6Ba8iPUzjwqY=
X-Received: by 2002:a5b:c51:0:b0:91d:98cd:bfe4 with SMTP id
 d17-20020a5b0c51000000b0091d98cdbfe4mr8506651ybr.10.1678186248559; Tue, 07
 Mar 2023 02:50:48 -0800 (PST)
MIME-Version: 1.0
References: <20230306-ccorr-binding-fix-v4-0-117daea88efb@baylibre.com> <25019fb1-87f7-b863-48e8-a164d0e08265@collabora.com>
In-Reply-To: <25019fb1-87f7-b863-48e8-a164d0e08265@collabora.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Tue, 7 Mar 2023 11:50:37 +0100
Message-ID: <CAFGrd9qV40Re=bJY-kToAcYcv+d3nBje-zxxKcsvwfiE1a9OjQ@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: display: mediatek: clean unnecessary item
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Angelo

Le mar. 7 mars 2023 =C3=A0 11:17, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> a =C3=A9crit :
>
> Il 07/03/23 11:07, Alexandre Mergnat ha scritto:
> > The item which have the mediatek,mt8192-disp-ccorr as const compatible
> > already exist above. Merge all compatibles which have the same fallback
> > under the same item.
> >
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
>
> Alexandre, the Acked-by tag from Krzysztof goes *after* your S-o-b :-)

This is managed by the B4 tools.
Also, I know this is an unsolved topic in the community, but I agree
with people thinking the last trailer must be the guy in charge of the
commit.
