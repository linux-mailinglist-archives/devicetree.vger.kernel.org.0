Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 637ED764228
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 00:33:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbjGZWdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 18:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbjGZWdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 18:33:08 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7292722
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 15:33:05 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6686a05bc66so301564b3a.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 15:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690410785; x=1691015585;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rhoPsdiptB4d7CawXcBfwFloC2tMhAybwkRKGC29HLo=;
        b=av/dLFPPKp+98RNL9nfep5UWmNIPTllIPkyIQu2zgxfP/EgHmeNkeo+Bsn1K6L2FJP
         plKEV1Z419rQ4iB4SWzjRk1vKxlHQngI3pEdxmlnahPVa7SapauU8yXS0MSJ56/wZ1Ph
         GZRRp8as5twmJ8rwBMhS/mN10XekiW12BlsQKXZeFmXPn275wb4SjFRT5RWTnC+9cY97
         D58MsfY8bvBUlpRk10/EXdaEPJACH9V5V/fvR6HuXUIn1zgy1mZEU++wyj3UgDSrXbg3
         iIz+OgIvm/WSRxT8XqMDPIRxBrjqm5Id/s6Uf1LHS5DzyAmWJv6JAXVCGrEbjA++oWnV
         lzcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690410785; x=1691015585;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rhoPsdiptB4d7CawXcBfwFloC2tMhAybwkRKGC29HLo=;
        b=iklqrqg0FBtFUXR6+uQOyoHwDPmo+se5WW8ESAwpOASQjPBwWewQfMkV11toh5Fzs+
         sSgWmrGCkc02wZjd6Q2ICln/aKyimWQ6t8I6TMxWMzfvkH2cFq570KPcwPQrQoNbP+fg
         +8nVy2oqgr4/5N88oErRdBqnQNtLTFex5X1gZ50iXFY1llaWzhYysfjdaMemO4tkgi6y
         Cfr9VXpiPNWagB2DprNU9coxoBZgmIoQFNmv7PMft2/UzlGpEHttPiglZ+qEI27A+nYZ
         O7734P1qQFkuvZY4vtvHJ49Ij2pJItbyHWTudigZ7LGcCLGQE5dBQY9Gs19ZQPRHEC6e
         tAAg==
X-Gm-Message-State: ABy/qLZZlIGi2osG1RwSuIymaGtJdzvePwnzwosJKau4/f60Jp7YbyAO
        jsOyf4L8DHboq+AKrvW2+i3iZQ==
X-Google-Smtp-Source: APBJJlETtaTlzNr3kJdmanHHAsk/PIfhyrVfhs5d7qXjTiodnT7x+VyKm7/uXDQlu0rPPnC2GX11rA==
X-Received: by 2002:a05:6a20:1589:b0:12d:d615:9279 with SMTP id h9-20020a056a20158900b0012dd6159279mr3557489pzj.25.1690410785037;
        Wed, 26 Jul 2023 15:33:05 -0700 (PDT)
Received: from localhost ([75.172.135.98])
        by smtp.gmail.com with ESMTPSA id c5-20020aa78c05000000b00682562b1549sm114742pfd.24.2023.07.26.15.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 15:33:04 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Huqiang Qin <huqiang.qin@amlogic.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: Re: [PATCH 3/3] arm64: dts: Replace the IRQ number with the IRQID
 macro definition
In-Reply-To: <20230721073214.1876417-4-huqiang.qin@amlogic.com>
References: <20230721073214.1876417-1-huqiang.qin@amlogic.com>
 <20230721073214.1876417-4-huqiang.qin@amlogic.com>
Date:   Wed, 26 Jul 2023 15:33:03 -0700
Message-ID: <7hcz0ei9r4.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Huqiang Qin <huqiang.qin@amlogic.com> writes:

> Replacing IRQ numbers with IRQID macro definitions makes node properties
> easier to understand and also makes GPIO interrupts easier to use.
>
> Associated platforms:
> - Amlogic Meson-G12A
> - Amlogic Meson-G12B
> - Amlogic Meson-SM1

Does this mean you tested/validated these changes on those platforms
also?

Kevin
