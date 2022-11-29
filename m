Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23A8063C1EB
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:09:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234912AbiK2OJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235032AbiK2OJB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:09:01 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE75E3C6E8
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:09:00 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id h193so13090128pgc.10
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U6oamcsiSkQgHF9vnFEa7hzajxmOr8ZutoBeWRcbSm8=;
        b=fgxrXWWEqoDCxrOaTbc86RscbnN/tnPV0XAz8KNMtTEDslcntfavSYbmiwIPNZspDg
         RrST+P7mJDAh7D0fAecV1CF3NdbXhv1B0/QBRPzyqMuDSeIqo/6VacaD2BHvt9Q3uUel
         X49M3+qqPmSuwzFKZJ80ZxvU9krP7XBq/b/3pLJrKjOCKZ9A2Sj5y/6YJLYARZi1QQWt
         5V0k0sXnFE09n85KrZQQoYcCBPC8L2lQATVTvQ9K12/cijQ27gTMJcKKjy5ECpT2TcQK
         bVb/k8li8TrPNbZmob07i1P4D0uE9hXom8Orf7PyFkVx3tCZLSTWZtltnt5AM9hJRw8Y
         gziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U6oamcsiSkQgHF9vnFEa7hzajxmOr8ZutoBeWRcbSm8=;
        b=IiFkg6ITlZUlOszwFvwaMfdf5ZHHK/TBNTtd9+6A44skxRi9kaITFi3qRhTt2I6oKy
         e0NLyLSo4+UIQgQQgbIZioMEhJt+03YL06yBlGFUq+JZ9tOcq/LOY/pkSIOx1JcTOkdm
         dZ2QKBFG/yMIFes7B57xX10BDyO/NAaoCgomFzenEDjMuSEeSs5+qUoMsJPfOrCpRiwp
         MlRZmxUXqIf6/lc+lvurrxdcgOdDssWoa6QKHeUUKL0UDcNQmQnzGBV8Yo4j3H39mOj7
         O8dwenkFpKHV3JhlpPWIu8cUDtEWTUsG3lBLFUjAi0ltjOOq+T/gYnxIjloQoUr+BLHB
         NP9w==
X-Gm-Message-State: ANoB5pmrvMtKHkCF48MUrsW0rgXXH1YVElYOfU29vQjqOd/mGtpUsqcD
        o9K/39ju1ULfxp/FPsBOH56aIIv96plnG+4++XE=
X-Google-Smtp-Source: AA0mqf6NvcCuoqElV5796w8heaS4ba3V7XK9VTqqCuXHTUO0AZfqq4I4529Sh87jNd34LCdTcYaMHtyosAs7fTA5wKY=
X-Received: by 2002:a63:cc15:0:b0:476:ccde:6694 with SMTP id
 x21-20020a63cc15000000b00476ccde6694mr31126766pgf.603.1669730940418; Tue, 29
 Nov 2022 06:09:00 -0800 (PST)
MIME-Version: 1.0
References: <20221129140529.33782-1-francesco@dolcini.it>
In-Reply-To: <20221129140529.33782-1-francesco@dolcini.it>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 29 Nov 2022 11:08:48 -0300
Message-ID: <CAOMZO5CEy4U46g5m6ea+s0HimEM4LGbK9vOA03D_HaELHHyE2g@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: imx8mm-verdin: enable hpd on hdmi-connector
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Stefan Eichenberger <stefan.eichenberger@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Francesco,

On Tue, Nov 29, 2022 at 11:06 AM Francesco Dolcini <francesco@dolcini.it> wrote:
>
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>
> Add hot plug detect gpio to the HDMI connector.
>
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>

You missed your Signed-off-by here.
