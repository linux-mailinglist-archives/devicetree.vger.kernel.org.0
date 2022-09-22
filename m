Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C5A85E6BB6
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 21:31:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbiIVTbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 15:31:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbiIVTbL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 15:31:11 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 060C7D6922
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:31:08 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id g23so7062018qtu.2
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=NWcgMuOu/DRb30hVDSf+gjGKztVe28VznYCH2jRwr2w=;
        b=Uv1U0RJbEpqFZrbA9uyr91kswnGSB3cjK6Aj9EXiOeZ7e0XWQub4bxwG+sbRw5QAA4
         44JMp1BuOrUDUJ0uP0C6KSA8VHC/IuXF6Kqv6lVLWrpR8Nw200fkrYzWK0LLM3GfbgbA
         NCqH1+i21BykwSS/x2OqgxCdNhFdsFfsXRuCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NWcgMuOu/DRb30hVDSf+gjGKztVe28VznYCH2jRwr2w=;
        b=0EzKCj1h1cbkB6LrEidekSUAluDITvZRE3xO58q4u+/PYfgds7WaSj/YIYtpv0KEzL
         D3oKmyd4oAgwSxxkUBg1zM16FYQ9vRRro7i7JMdsh8ZkbMfk7cs8RdemWAlRZUblkLzM
         qxkOgg0s3ILfkv5AR9fyFAJVDj09akSdwD1w5MXbtbbgaiM4wpKwBMpPEYWN6SYGTnhB
         G/5I+wzh5fzr5wyvNXyrT7HcfX8YhqDxCoOYZOxqYObR8HpRxzU2RJLYvrKydUvQFQ4M
         mdA0w1TexWpKSDgn5gGyjHbtVQwHR0LaBaucnQbe2JM2XFA2jH3ErNLNMMk7vhhiAbRy
         KDug==
X-Gm-Message-State: ACrzQf0JEOvUXLCXKsfDlYg4ucwiux0wm+kASrSPbsWBT0RowCib1cBY
        2wbCjmf1TgAkEd9QbIL1o6JiHA==
X-Google-Smtp-Source: AMsMyM5X3spJySOGhlhXn9TKeJ1vUC4PQaWa4xgYswhH4zjD3fT+v5idDUvkA6X33EHtGeHu/7U0ag==
X-Received: by 2002:ac8:5c0b:0:b0:35c:e066:998d with SMTP id i11-20020ac85c0b000000b0035ce066998dmr4195776qti.336.1663875067117;
        Thu, 22 Sep 2022 12:31:07 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id i12-20020a05620a404c00b006b8d1914504sm5393430qko.22.2022.09.22.12.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 12:31:06 -0700 (PDT)
Date:   Thu, 22 Sep 2022 15:31:04 -0400
From:   Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Guillaume Ranquet <granquet@baylibre.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Bo-Chen Chen <rex-bc.chen@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 01/17] dt-bindings: clk: mediatek: Add MT8195 DPI
 clocks
Message-ID: <20220922193104.4qminv6adrajkhw2@meerkat.local>
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-1-4844816c9808@baylibre.com>
 <d01e4a03-1d6d-9616-45ca-1c927f2d8237@linaro.org>
 <CABnWg9uZ=FrumgUzyUoUiS6T51nZTEf5JZ-1KF0-Ra9Ood5ufA@mail.gmail.com>
 <6b24be8f-94d7-6973-6f35-18cb15fc8cd4@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6b24be8f-94d7-6973-6f35-18cb15fc8cd4@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 22, 2022 at 02:51:00PM +0200, Krzysztof Kozlowski wrote:
> Thanks for explanation! Probably your patches are perfectly fine and
> should apply, although I must admit diffstat is often useful.

Krzysztof:

The patches should indeed apply without problems and there's a fix for the
missing diffstat already in place.

Best regards,
Konstantin
