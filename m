Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C92C06C70EA
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 20:17:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230342AbjCWTRO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 15:17:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbjCWTRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 15:17:12 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EF6F9EEA
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 12:17:09 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id h17so21705216wrt.8
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 12:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679599028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wD2pfR6a+QFkJUD1LZwOcKI2Fua3cr9bcJ10Kcm3zLA=;
        b=qnXXXzNCoIXEQ6wOEeCqW/WZqBHnKQLvRQfR9H2JOK9xUFyYzxjrnD6R9IuVZ6HtjL
         xiNyLpz3xXZUbWhjuaxyupx+2ZS33wpZ6LWFrVihxrXuYTl6S382fY4t053jIsGXaqXt
         daQnXnG6cVPzkWg+2mjtapDfgpj8w7NhSIC/LI6KwMCmdBNg94fw43wNEBOkPQgr50+W
         SMGgGeH0a4JbPB9UDMfknMj7qqBLgYA+kzs/dYb0pgQ1HmQf/3XcgzdmRKW5Q/pQXRpj
         geVjnc2EHwBkFUo6o1/ldaGNiGMD3/Bu5XYhl/Pxptm78TkO+8nUvSEsLoeHFn86uNml
         inPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679599028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wD2pfR6a+QFkJUD1LZwOcKI2Fua3cr9bcJ10Kcm3zLA=;
        b=LkkJjl4GFQSXerYYQN641K6KYkiOkqTd6HdT5NjLsd+x2gjAvzszgt3RZLct8JuyoL
         Lco7B6+xReEsJQAafGR1ExlxOUf73uElhEaSfqeePVCtPQj9ykf7wTDKqya9lcIIBvI2
         gMIIoOtn1mv1iBRxL8sTrPJG8gRUgTnD/+JLYD/r0YlQIkKacsfPgbD/y7bUO8G8NwyW
         o3s9NHFQU6asUpdhZ5VEqqAvBfFjRDzT77fQZsp3q19RBg4pw2iDHTa8HCeWM29sc0AV
         vmCZX+Wg53V6q57QK3bNB+I/ozAARBMJqdqS3P6cfXjjz80Ld1qdlsmk0niQGbX+pGGo
         wh5g==
X-Gm-Message-State: AAQBX9dkOeYEwup/K54kLKoz+YrAoW/2r10EDt+PsbXXH8N53iZ69Fm3
        ZNpCqnDwa8LWH7w0Tr30UAs=
X-Google-Smtp-Source: AKy350YRHwccofReqO7KMNu53kmkrUhXKNUEyMNpqFY9KG1erFeS8JTEci/WaxonV6iJnQofws3suQ==
X-Received: by 2002:adf:f491:0:b0:2ce:da65:12d9 with SMTP id l17-20020adff491000000b002ceda6512d9mr237685wro.15.1679599027928;
        Thu, 23 Mar 2023 12:17:07 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id e7-20020a5d5307000000b002c5a1bd5280sm16725043wrv.95.2023.03.23.12.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 12:17:07 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v6 5/6] ARM: dts: suniv: add device tree for PopStick v1.1
Date:   Thu, 23 Mar 2023 20:17:06 +0100
Message-ID: <2274644.ElGaqSPkdT@jernej-laptop>
In-Reply-To: <20230319212936.26649-6-andre.przywara@arm.com>
References: <20230319212936.26649-1-andre.przywara@arm.com>
 <20230319212936.26649-6-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne nedelja, 19. marec 2023 ob 22:29:35 CET je Andre Przywara napisal(a):
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> PopStick is a minimal Allwinner F1C200s dongle, with its USB controller
> wired to a USB Type-A plug, a SD slot and a SPI NAND flash on board, and
> an on-board CH340 USB-UART converted connected to F1C200s's UART0.
> 
> Add a device tree for it. As F1C200s is just F1C100s with a different
> DRAM chip co-packaged, directly use F1C100s DTSI here.
> 
> This commit covers the v1.1 version of this board, which is now shipped.
> v1.0 is some internal sample that have not been shipped at all.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


