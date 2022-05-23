Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53C6C53090B
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 07:56:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233606AbiEWF4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 01:56:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233218AbiEWF4b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 01:56:31 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27C112D21
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 22:56:26 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id j10so250253lfe.12
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 22:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BFQdLCX9WdP+yPd6nXHchy94xL4JXfYcSIxVHAlxh84=;
        b=cxqLRYOWzbhPAgB+pbNrmf+T4+MObrKALcCm26bOPhgPgBEB87xma2YVhQILwOjNCS
         /ExZL673nUmrgljLxB4G0/VG89H+Wh4wXmdKh1Q+5WAO9oYnw8WU/P+XV4JONtPz5QZu
         hrq3TrswKagBGyYW3wN2uLM17sVrh1oPl3PGeBp7wTD1YEzyh7JXtAoWMd7w13v5lUWZ
         6s1OsGJDuYwK/sWU/D/3KsO4qRqxE0Ogzj08qO54oUdgyBYW6PI/HPelzcyAaSX9/+Up
         79Mzbl23Dojxxw0kH6NbNhAO5jksS1j8C27KEgq0dfBzsb0UTI+s0tav1fC7dkcHO4Sr
         1GkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BFQdLCX9WdP+yPd6nXHchy94xL4JXfYcSIxVHAlxh84=;
        b=hvuaXUoN/7zu1J+9spzHDu3ZyU3KEQqml+mC1uDRFxO/6sGTrHSjBDYJQMjA222HNa
         GBnFk1AgbCt80NtlJbTpgJ/GMAuCbKj1XMu7wj5togWIMH73sOzhCu0XjG3/IRUA9pNt
         Pl1rBuDFOluzblnaoj5Dlx4a1gRY6p7KJ8onmrn6JpvDiDzh9URTLsYTFhh9m/fJ7J0l
         4TaSmRIar2Er/+pnbxrQfcHp+dFPELu0JvmOs7byLh2Hs9TEX0muWNL/4Ncc59xa87UY
         USHbX3ESOp/kU5G6JHZZEMXxkVRsBSxqOLuojbPxYWpduWdgDhTdmWAnzpvyyhTXKVHt
         kjaw==
X-Gm-Message-State: AOAM533P8CojmWXrbHMKQIF8+zYURkfIz4WjXlxd7eSVtRRzQd6SweVz
        p85t5N83f1hVkzO20t4UqdTSpMd9K5ic8w==
X-Google-Smtp-Source: ABdhPJzBK+NJFtfLlsJcuiiN3PScqDzAymMZnFlk7yikNWwj/vltqjnSfVU7rHQXqRsXEvJHXS7BUA==
X-Received: by 2002:a05:6512:1112:b0:473:a15b:fdf3 with SMTP id l18-20020a056512111200b00473a15bfdf3mr15130168lfg.155.1653285384501;
        Sun, 22 May 2022 22:56:24 -0700 (PDT)
Received: from ThinkPad-T490.localdomain ([85.143.205.202])
        by smtp.gmail.com with ESMTPSA id v17-20020ac258f1000000b004785060bad6sm1418993lfo.201.2022.05.22.22.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 May 2022 22:56:24 -0700 (PDT)
From:   Andrei Lalaev <andrey.lalaev@gmail.com>
To:     andre.przywara@arm.com
Cc:     wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
        Andrei Lalaev <andrey.lalaev@gmail.com>
Subject: arm: dts: sunxi: h3/h5: add gpio-ranges for pio and r_pio
Date:   Mon, 23 May 2022 08:55:18 +0300
Message-Id: <20220523055516.270056-1-andrey.lalaev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220522222630.7faab948@slackpad.lan>
References: <20220522222630.7faab948@slackpad.lan>
MIME-Version: 1.0
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

On Sun, 22 May 2022 22:26:30 +0100
Andre Przywara <andre.przywara@arm.com> wrote:

> But this is somewhat redundant information, because the pinctrl driver
> knows about those values, as they are derived from the big struct
> sunxi_desc_pin definition.
> So wouldn't it be smarter to put a call to
> gpiochip_add_pingroup_range() somewhere into the sunxi pinctrl driver,
> so that it would automatically work for all SoCs?

Sorry, I forgot about the other SoCs. I completely agree with you now.
I will try to fix it in another way.

Thank you, Andre!

Best regards,
Andrei Lalaev
