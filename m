Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BC686CF7F5
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 02:09:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230056AbjC3AJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 20:09:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbjC3AJd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 20:09:33 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 131794213
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 17:09:32 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id z18so10316509pgj.13
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 17:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680134971;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=/f6kuz/aoEQ4OdZFUZeQhJ2qbcXsJoCNBezisNQzSyA=;
        b=5Kg0RdKhyt1ID55+N/2TYj6ASuDLlE9kRuP0jfiHD4WW7DHikuXWKM2Wa7enwDIIr2
         gHlkiUBISnQXA9MZiTvb2L7nCORsEoGs6XoF+wsbiSQtLp/7J6DseD+18SbWFxpI4biV
         hQqxeFg7tKw1YsyWeuU8P/xbxdpa4pmuQPIoHXo3alTyYmN6tUAtJ7Xt8GHhts7ujCmH
         nmucmTfbtQPVS1TZsAvug12n2oGmAGh4M7rY4dAn9wuJiBRL/PWq59a3lMLkVvET/tI6
         1/jqnqK85F1+ixeZDTcYh4MwV0DmzPcq1a9gFhhYTKq6jpWEoILS9qgt94YioVUj+1wr
         w+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680134971;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/f6kuz/aoEQ4OdZFUZeQhJ2qbcXsJoCNBezisNQzSyA=;
        b=htIkDovZeERUxBDeJXY3aUpyLYQvE2wL/EpxjUcmci4rFCCeVocQxdq4YCj0dpF2nz
         2MOQXu7LN96o37aoxN10ygJpmHJTtDkpm7NcRvk3Q9e+snH+ZUxCv8KJOv9RfSIlf0Qr
         BiFi0+iW41IDL4XmSznDsh9JR8lw9HriZt0FqFYbjwozfHmRdAuTAVl0lQnDkYuUdGpi
         d5hCeWk5SvEjPDTTppLO/kR57F8GCUwdJENzwXMX3roy5AQaPcl6Y8AsNSzqq3Dl5L35
         WjDGgqf25VhjPCu+0ZKm4SWDjVN/lCV2nIaePlebbUHyMhEVpKhOjKP4Q5L+4isaVuc+
         H36A==
X-Gm-Message-State: AAQBX9fSpufy4sU0JblIhFc1i5I2nzXdquj1wesHshbrnpmeMrEBCXsd
        A54yhZtWwYWEEVMZcbyaQ3x6qA==
X-Google-Smtp-Source: AKy350ZqpWfQPvqSLpocQ8IdxE8V92Qac7/wDI/66IsLf2Y5AbMcbw++dG5+dtf9jgtCifCda5nNOg==
X-Received: by 2002:a62:1885:0:b0:623:d058:8661 with SMTP id 127-20020a621885000000b00623d0588661mr17961473pfy.28.1680134971465;
        Wed, 29 Mar 2023 17:09:31 -0700 (PDT)
Received: from localhost (63-228-113-140.tukw.qwest.net. [63.228.113.140])
        by smtp.gmail.com with ESMTPSA id p14-20020a62ab0e000000b0062505afff9fsm23574889pff.126.2023.03.29.17.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 17:09:30 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        Bernhard =?utf-8?Q?Rosenkr=C3=A4n?= =?utf-8?Q?zer?= 
        <bero@baylibre.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Alexandre Bailon <abailon@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 00/17] Improve the MT8365 SoC and EVK board support
In-Reply-To: <20230203-evk-board-support-v3-0-0003e80e0095@baylibre.com>
References: <20230203-evk-board-support-v3-0-0003e80e0095@baylibre.com>
Date:   Wed, 29 Mar 2023 17:09:30 -0700
Message-ID: <7h8rffyu9x.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Alexandre Mergnat <amergnat@baylibre.com> writes:

> This commits are based on the Fabien Parent <fparent@baylibre.com> work.
>
> The purpose of this series is to add the following HWs / IPs support for
> the mt8365-evk board:
> - Watchdog
> - Power Management Integrated Circuit "PMIC" wrapper
>   - MT6357 PMIC
> - MultiMediaCard "MMC" & Secure Digital "SD" controller
> - USB controller
> - Ethernet MAC controller
>
> Add CPU Freq & IDLE support for this board.
>
> This series depends to another one which add support for MT8365 SoC and
> EVK board [1].

It seems to depend on more than that series.  In order to test this, I
tried applying this series on top of Bero's minimal support (now in
linux-next), and it does not apply cleanly.

Could you please list all the dependencies that are not yet upstream.

Thanks,

Kevin
