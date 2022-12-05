Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43A1064290D
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 14:16:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232019AbiLENQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 08:16:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230480AbiLENQN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 08:16:13 -0500
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED9D13D45
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 05:16:10 -0800 (PST)
Received: by mail-pf1-f182.google.com with SMTP id x66so11314667pfx.3
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 05:16:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3eJf8i7mbE4W5KmZ65ut7au95IAJO/5SeyyJ7PBLcow=;
        b=G4kovGqk4yZ3styJEDju7npD7bx19Bq3j3BxWEiEYYpwEhM1B5AE17438D7oRVd/P1
         PaNHfiZAgtZsDZVnyf6G4qojs+T9+MhXaY1zQEcYQJ7oVGyWxZwODG5IvMw21+gwMrax
         tvm+v2qY6hT0BiI7mK6ui6uRD+X0fMCHwSgF3Hl5ws2Dfhr5Kge571kWqT3rgvoMi65F
         3Ur2bGTwV6xohtMGyTqQfRCXJYzVBZY5l+SiP+4ypXassvOruXPcszGc5DaH66nC6R+Q
         f/pnB/FGQdIG4AofMehcqT1Rn+7ixWgk9bIGlSduiw/4nODyB2V3ytcQSABpQqEqI+i2
         XX1A==
X-Gm-Message-State: ANoB5pmmXEjdQKjAzrQ6M1gU3SwvfNOSpPr65M5a4y9x9qkTvHjaMs/i
        qknc2dP1gsl2SkQbf9GSBz4Fig==
X-Google-Smtp-Source: AA0mqf7cuZEWFKflQSkI5L3ytUqAJesB15FOOlmdmmqL/kbAzYcaptcZPVkjel2Bw6FR7Aj4Wy6qjQ==
X-Received: by 2002:a63:4246:0:b0:477:98cc:3d01 with SMTP id p67-20020a634246000000b0047798cc3d01mr52742551pga.505.1670246169869;
        Mon, 05 Dec 2022 05:16:09 -0800 (PST)
Received: from localhost (63-228-113-140.tukw.qwest.net. [63.228.113.140])
        by smtp.gmail.com with ESMTPSA id p7-20020a625b07000000b0056246403534sm7923917pfb.88.2022.12.05.05.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 05:16:09 -0800 (PST)
From:   Kevin Hilman <khilman@kernel.org>
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Fabien Parent <fabien.parent@linaro.org>,
        Tianping Fang <tianping.fang@mediatek.com>,
        Flora Fu <flora.fu@mediatek.com>,
        Chen Zhong <chen.zhong@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@ucw.cz>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-mediatek@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Alexandre Mergnat <amergnat@baylibre.com>,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-rtc@vger.kernel.org, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabien Parent <fparent@baylibre.com>,
        linux-leds@vger.kernel.org
Subject: Re: [PATCH v7 0/8] Add MediaTek MT6357 PMIC support
In-Reply-To: <20221005-mt6357-support-v7-0-477e60126749@baylibre.com>
References: <20221005-mt6357-support-v7-0-477e60126749@baylibre.com>
Date:   Mon, 05 Dec 2022 05:16:08 -0800
Message-ID: <7hr0xe56uf.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Matthias,

Alexandre Mergnat <amergnat@baylibre.com> writes:

> This patch series adds MFD, PMIC keys, and regulator support for MT6357.
> MT6357 is a MediaTek PMIC very similar to MT6358.

The regulator driver (and bindings) were merged by Mark.  Could you take
the rest of this series via your mediatek tree?  The input driver (and
bindings) are ack'd by Dmitry.

Kevin




