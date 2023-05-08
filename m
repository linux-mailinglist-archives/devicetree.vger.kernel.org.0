Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9C216FB671
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:50:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232208AbjEHSux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:50:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjEHSuw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:50:52 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F5445BBC
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:50:52 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-250252e4113so2896286a91.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 11:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683571851; x=1686163851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTJBxRfkWHy9cgSNmQmLYWmt0cUJtgo+qlDryyD6rR0=;
        b=gWOwcAJlFHWqcCN6chB1VBksmCnLDL7W6IEXSDAFanHQcTFfO71FXYUeXUKSCF8CFA
         VBpslyP7TJVgCeQawFdoygOOpYZGUS1rio6k1/ItcEhzD2XpnL9y7XUwbpSVA5s0h98L
         EXYhYcicfOGiDh4djP/b54k/l1lffR10PWX07kJBvRLuJXuUy1mQZJxmI1pcdtUOQyh9
         iAmMf2At0aBGBYHwPncwZSNsj1Vt2mT+KTgs2K3ubHCEtj28LFQuMKo6AbUb4EKo1Z61
         COa2UaXZukJn262sfkuedPFY1NEPRIU+OVuQysBnU6qVOGri+HxjSzmxYnvT2+L1nASE
         avQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683571851; x=1686163851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rTJBxRfkWHy9cgSNmQmLYWmt0cUJtgo+qlDryyD6rR0=;
        b=Sn40b3KYG9hr6jE6n+Jmsb2zS4S0+FxQwIO8Vojlt82xKqNVH42ibSHTknVDbgJFGu
         lG/irSQlOG75XIjkoZJBkDGrmJ32GvIGrViKhhBF4DVsh5HPoh9NKGCRjKqD0iHuuwcv
         2XXrCNZ+YIRCD5qHA08N/r2/kwL7dpfsSUCl6zGwKo+4kgZmMvV6UaSvaY3XjhEnBn9s
         AEpT5IQ2oJIbDWDN3YRWJ73tV2Pf6fud8FGy1ziaHcdESImH7CweLVpetLoPp5NTfMWR
         534wTKKqdrbFWLD0MIaEZprO6b7L5jP9wldFPA7PsvtTBu5mXu19MWAxYYayst72BLMB
         UxUw==
X-Gm-Message-State: AC+VfDzq8hDk0HnQ7Pe9K0hltJ3dLKk4UU/GbrPx+FBRZ1urI1L/xBwe
        MOT659felxcXa3FdroV3FFDxM3KVFa4=
X-Google-Smtp-Source: ACHHUZ5COlEYpabrTN3ORe/cxcrIEv7ZrDXoNpB6wJt8nygMvtj3F30wruF2LRSGeqdyIWKbrV3mmQ==
X-Received: by 2002:a17:90b:4b81:b0:23f:6d4e:72b3 with SMTP id lr1-20020a17090b4b8100b0023f6d4e72b3mr11379334pjb.25.1683571851379;
        Mon, 08 May 2023 11:50:51 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id dt20-20020a17090afa5400b00247601ce2aesm10272769pjb.20.2023.05.08.11.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 11:50:50 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Drop "clock-names" from the SPI binding
Date:   Mon,  8 May 2023 11:50:48 -0700
Message-Id: <20230508185048.1638733-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503122830.3200-1-zajec5@gmail.com>
References: <20230503122830.3200-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  3 May 2023 14:28:30 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> There is no such property in the SPI controller binding documentation.
> Also Linux driver doesn't look for it.
> 
> This fixes:
> arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: spi@18029200: Unevaluated properties are not allowed ('clock-names' was unexpected)
>         From schema: Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
