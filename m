Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5193B6AC017
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230429AbjCFNB2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:01:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbjCFNB0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:01:26 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D0F42C65F
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:00:40 -0800 (PST)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8C18941304
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 13:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1678107637;
        bh=g1eQhMOrSFO4wd2eOSO121iAVcPyIcQf7Ea6EkfWiqI=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=jGJ0SOxg0hyDlh5gH9k2Gg/efs1UKVC1Ha4hkFrkYgpShXw1XiD+jkQgex7qTmMpS
         qzvz2Mi711yGlhzLyU6pyrN4UQJ58CVRyOOwQb/81mWCIv3x+R+TC5WOaqBxq+XQfw
         v3kCDg+tKEeTnIV4eaSeSsyvd3y0BLss0ZzdkJakWWq9H1h1A+FhRk/5c4G7eNAAGZ
         9igMLgmqXyLQiJ8dKm2SnwspPOYGydu7aC6Kte91mUYoCi29xdlKrdz0WDbGsP+NXr
         Ol4VKB/j6ibF5MlZzS3E3R4i0k+G0YEVaz5JqVTt8AQL61fwzDbfzH1y2VDq+nPPdY
         l8b8Bul15RuPA==
Received: by mail-qt1-f200.google.com with SMTP id z22-20020ac86b96000000b003bfc3f97097so5105153qts.14
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 05:00:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678107636;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g1eQhMOrSFO4wd2eOSO121iAVcPyIcQf7Ea6EkfWiqI=;
        b=NvzSUwnzJi/qTQdZbWpnA2Ytyj9U3NSnn0Y4QgbLTxKoAmqRr4LitrtNdWd44ATgxk
         E+mtwVLE3h/MgJGEZI9YZJK8HL08Qp4b9P3dzqihPQgyHLhG6bgB20cThL78rm7yZ2S7
         7/G5yNfTKS/o2tsvSKzrOVU5f+zUWc7ZS02A5Q5OvNdkpd0FAqb4XSBOy/RaPKqHdkJG
         qq4y5DrvB/63KrS4jmMAj9kr+55TyQ/cXcxvK1wU/hZZBDVXpZUrF9MzEfrHqRdSjs6s
         vATN0XeCHeiGDXXnFFWYQrsWcIEO6/1KUsWXk7vvYODSQS77GukXsNYh/VuGXy444PIa
         p00w==
X-Gm-Message-State: AO0yUKWi/Z+VMJc7tTSBu/LQsljjDlyrOBcgj5Gy6ugzxdR6skGR19qI
        FfcgzI8xHjsgG0jpGrcrANTWyVP/zsy4gwdcwewUK+sfECiAcR7LPnzlVCbK4/rZ/1jIRCYZ0bF
        zA/8BrtaItR1F6BxaAyOnTO4UQzrnhVLSJIhf86Fit1pFcYNQ3tP8qUk=
X-Received: by 2002:a05:6214:18c4:b0:56e:9089:a447 with SMTP id cy4-20020a05621418c400b0056e9089a447mr2641925qvb.0.1678107635904;
        Mon, 06 Mar 2023 05:00:35 -0800 (PST)
X-Google-Smtp-Source: AK7set+uStpOIPtxsYzQNm4+Hh42VAU2TMK0ufly6uRcEDKQLOkg3C1RgTzTQxXlU+P3QnMKJ7/YkQrtQAk9jtb28zU=
X-Received: by 2002:a05:6214:18c4:b0:56e:9089:a447 with SMTP id
 cy4-20020a05621418c400b0056e9089a447mr2641907qvb.0.1678107635636; Mon, 06 Mar
 2023 05:00:35 -0800 (PST)
MIME-Version: 1.0
References: <20230303085928.4535-1-samin.guo@starfivetech.com> <20230303085928.4535-12-samin.guo@starfivetech.com>
In-Reply-To: <20230303085928.4535-12-samin.guo@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Mon, 6 Mar 2023 14:00:19 +0100
Message-ID: <CAJM55Z_8m42vfoPDicTP18S6Z1ZXYbFeS1edTjzYVB3Kq2xFeQ@mail.gmail.com>
Subject: Re: [PATCH v5 11/12] riscv: dts: starfive: visionfive-2-v1.2a: Add
 gmac+phy's delay configuration
To:     Samin Guo <samin.guo@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Yanhong Wang <yanhong.wang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 Mar 2023 at 10:01, Samin Guo <samin.guo@starfivetech.com> wrote:
> v1.2A gmac0 uses motorcomm YT8531(rgmii-id) PHY, and needs delay
> configurations.
>
> v1.2A gmac1 uses motorcomm YT8512(rmii) PHY, and needs to
> switch rx and rx to external clock sources.
>
> Signed-off-by: Samin Guo <samin.guo@starfivetech.com>
> ---
>  .../starfive/jh7110-starfive-visionfive-2-v1.2a.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2a.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2a.dts
> index 4af3300f3cf3..205a13d8c8b1 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2a.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2a.dts
> @@ -11,3 +11,16 @@
>         model = "StarFive VisionFive 2 v1.2A";
>         compatible = "starfive,visionfive-2-v1.2a", "starfive,jh7110";
>  };
> +
> +&gmac1 {
> +       phy-mode = "rmii";
> +       assigned-clocks = <&syscrg JH7110_SYSCLK_GMAC1_TX>,
> +                         <&syscrg JH7110_SYSCLK_GMAC1_RX>;
> +       assigned-clock-parents = <&syscrg JH7110_SYSCLK_GMAC1_RMII_RTX>,
> +                                <&syscrg JH7110_SYSCLK_GMAC1_RMII_RTX>;
> +};
> +
> +&phy0 {
> +       rx-internal-delay-ps = <1900>;
> +       tx-internal-delay-ps = <1350>;
> +};

Here you're not specifying the internal delays for phy1 which means it
defaults to 1950ps for both rx and tx. Is that right or did you mean
to set them to 0 like the v1.3b phy1?

Also your u-boot seems to set what the linux phy driver calls
motorcomm,keep-pll-enabled and motorcomm,auto-sleep-disabled for all
the phys. Did you leave those out on purpose?

> --
> 2.17.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
