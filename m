Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CBB6580E27
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 09:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238240AbiGZHqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 03:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238184AbiGZHqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 03:46:12 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B77A112AA0
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 00:46:10 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id p5so5726443edi.12
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 00:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JUefKepMA4Fy/oLWSpA/v35+KqbL3LG9IL6Z/MRcNyI=;
        b=s5cO5DOdLQJ2f+Qhspm+W1Qm+6bxZHfZOEiD6aUEKJ2P+XcoV8n8KNMzrnWJgLO88y
         40lj1TxRYC0CbdrOBPIpqpTG/P8AxEJxkTXF01K9jcb0gwP96DJXOi9f1fYxYigtz8bQ
         aWXjzYo5mLLds3yIW424fHsnqQoBbgFQ547mQuHIUPBScRVUN3S/Cvfek39SK00HDK2w
         CTijgSRzUUpg7RdnnR2aRuQJTw/fyyu3jsKHEDraIdf0EQMQXyc1DEiUOOc1hsitp0CS
         8FVT8jpC5L1TrEH1EbnYbdw6E55YKek0U/r3Vg3WXeSV/a+dLuOgPcXbruCnM6YuHdo8
         o3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JUefKepMA4Fy/oLWSpA/v35+KqbL3LG9IL6Z/MRcNyI=;
        b=Aql8nBvyRRvQsMqUzBh1DkPLRNOGd1DR7FiYzLpkdEc1G4qBwajM/Vz6zHVff5Wsk5
         vwuiVKQlehnCcN/MiwCk16Ni/JxJNen/DFqDTAUcjEithkqWsX+S1CQ3yotgPuFU1iMb
         eCyXhqWGEfXc82Z3pJHcUbMEHZO5MrkFCIxEwqQfUBf2ArUHcMNYoA3bW1xA3cqKZTHa
         Wc5wtp+4YsXv6pt5/G2aH/yUysCfOh7DkwtLQG8/ET6NxhnxYl9y8MwOK7mCXH2JrrR/
         d2r4W7NqAcdUTY4ThmcKpzfjFlfp6tC/+jEoi10Hf7hqscvQ1z1DKgs4zgfwRXO6jjlE
         cnkg==
X-Gm-Message-State: AJIora+KLuKHGjhJPNJiWrYUiwUvEFzef9I11zWJG3mCkEM6v2gbwQoS
        6OwF+f7LfTj9k4Cb83IZnYq6g3J0a4slVNyhEWTWvg==
X-Google-Smtp-Source: AGRyM1sz/+OOd8N7sT6k1OxUs1K05iuTLR3DYEH+NY9045o8G0tCwocooYtLocXsRjt1SA0TmlcK1z9W803oRJ2QMJE=
X-Received: by 2002:a05:6402:3685:b0:43b:dfd3:9487 with SMTP id
 ej5-20020a056402368500b0043bdfd39487mr15382138edb.32.1658821569323; Tue, 26
 Jul 2022 00:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1657187536.git.oleksii_moisieiev@epam.com> <20220720213221.GA3987398-robh@kernel.org>
In-Reply-To: <20220720213221.GA3987398-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jul 2022 09:45:58 +0200
Message-ID: <CACRpkdaOT=CzyZ5UOXS-CGQJLBeyiE9VrSPy-tZH-1f9NmORqg@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] dt-bindings: Intorduce domain-controller
To:     Rob Herring <robh@kernel.org>
Cc:     Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
        "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
        "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "tomase@xilinx.com" <tomase@xilinx.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "arnd@arndb.de" <arnd@arndb.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
        "loic.pallardy@st.com" <loic.pallardy@st.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 20, 2022 at 11:32 PM Rob Herring <robh@kernel.org> wrote:
> On Thu, Jul 07, 2022 at 10:25:08AM +0000, Oleksii Moisieiev wrote:
> > Introducing the domain controller provider/consumenr bindngs which allow to
> > divided system on chip into multiple domains that can be used to select
> > by who hardware blocks could be accessed.
> > A domain could be a cluster of CPUs, a group of hardware blocks or the
> > set of devices, passed-through to the Guest in the virtualized systems.
>
> 'domain' is entirely to ambiguous. We have clock domains, power domains,
> interrupt domains, etc. already. This needs to be specific about what is
> controlled/provided.

Good point.

This should be something like bus-domain, as it controls what the bus
can access.

Yours,
Linus Walleij
