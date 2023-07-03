Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B41D7455C7
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 09:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbjGCHNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 03:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjGCHNU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 03:13:20 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46B05D1
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 00:13:19 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1b89d47ffb6so697975ad.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 00:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688368399; x=1690960399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gdmjGHia+jKRSyCfrlTQ/eoeJlaZFLf9ynF3dOskcU=;
        b=NvLnU7Qf/4miEBTDIGynlVerZgG0j9kKifoHjbQVSC6ehgAanCaXlPKMu+PmHOhH/W
         hse8ugMIDG8mOC6T5lA3Avc6jFOEW5oUpK/wCWq/zbTxKP5NZUPtgS2URd0k5+6UJ49n
         LVX9JT8k+BFKqrW4xc6QH0OTb7ek9woEnDoWByxPRPaAv8TFcyf6cAq1UoF5il86lRvS
         xQNTG1stp8WLkMwMO3pG8hVHge8hJaqie7QFqgWN28/bOODImQ+0aO169hYoG+3NfPBr
         6BJmBm0a6GvpaG6lD5Wg9meRp+eLIAcBTSLIrBoI7waD8UNZ5XEyl3eg5LekT2cOoaTq
         dH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688368399; x=1690960399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3gdmjGHia+jKRSyCfrlTQ/eoeJlaZFLf9ynF3dOskcU=;
        b=Z6YawLaV8O8nkA7Fb8u8JGtHLSXAxI4v662FSE4Qvvfy9wkEpRCuQzmogr0jRvCVgF
         eklJ5omQpNYy5bdUUm38N27RnUVG0Binh9AuAI7vQD5wz5TD+G2FDB1YZ7pyOX5GbAs9
         4x1WUP0jJjxEiJF83l+GeKW2nhljZ85LSH2MeDcS1JM5uNSoHEbl64PGG0O4OLADQXPP
         k8qiEQc6/aUfdVfPKND73vxmC7W3xI+DHGrnM6yHShnch7pVx5KE8WR1TKfYQmkbg6i1
         4XDx3T3QKJHgiflsr8h+XfyiMc/ppD69Kty3/1q1aZgfLSFr5F7ckrUpcL6oFnriUJOL
         dKPw==
X-Gm-Message-State: ABy/qLaUoOvG0ijjTpdStDNOwHCbzU+LRQRLc3aAYcHSFU2kQTsATKJ6
        72y08TnUHmTi91KSSFHlwALtESBP4ExYDR3KYz3hkw==
X-Google-Smtp-Source: APBJJlH4H1LJEkNForC6tZD4lPdH33Iimwz3Zzeu94n+d3up/GqFuSavaNHzUS7dGulmfroxCq8D+yD98kWMqXzpoSw=
X-Received: by 2002:a17:902:da92:b0:1b8:525a:f685 with SMTP id
 j18-20020a170902da9200b001b8525af685mr9718943plx.37.1688368398730; Mon, 03
 Jul 2023 00:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230702103516.139440-1-rgallaispou@gmail.com>
 <11ec64ad-8fb8-e94d-2019-d3deb399084b@linaro.org> <4aba0e4a-87f0-1810-bf4d-a2f278e51e8b@gmail.com>
In-Reply-To: <4aba0e4a-87f0-1810-bf4d-a2f278e51e8b@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date:   Mon, 3 Jul 2023 09:13:06 +0200
Message-ID: <CAGE=qrpE9pP4m07VT+RRLhPysF+wO690mF7ChToJYcArKm_nGg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: st: add buswidth property to stm32f429-disco
To:     =?UTF-8?Q?Rapha=C3=ABl_Gallais=2DPou?= <rgallaispou@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 3 Jul 2023 at 05:21, Rapha=C3=ABl Gallais-Pou <rgallaispou@gmail.co=
m> wrote:
> >>              spi-3wire;
> >>              spi-max-frequency =3D <10000000>;
> >>              dc-gpios =3D <&gpiod 13 0>;
> >> +            buswidth =3D <8>;
> >
> > There is no such spi property.
>
> While I agree with you, I saw in staging drivers that this property was
> fetch in the device-tree by the fbtft core.
>
> Should I document those in or try to do it another way ?

You cannot use undocumented properties. Whether this should be used at
all, depends what's this, why other properties cannot be used etc.
