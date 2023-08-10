Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 175B477773A
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 13:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232716AbjHJLgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 07:36:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234233AbjHJLgx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 07:36:53 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EEA126AE
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:36:44 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 05F25420AF
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 11:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1691667403;
        bh=GbiiR39UCc4MIS05Cs+xA5vgxUMTWHglh2uulV8ScwE=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=Hkeheb4k09GzC6uApu066rW6w2wcF3p3bFXuhpNfV2tXmpZQV7tdByDLwAuFA2FRo
         v6SPB3FQQlIp1pTEf/qzu/x56BU2/RlaZqdHlsdex5VgD/sY0MDFTHvyys/v6aXqbc
         /uYWsHbAQoBgLD23QClmCP2c+dMecB4JHU9sWZZkjOp0HD98D6XcLQ6474UFCU57p7
         RRN7gKwcDO/q/lJrRzxenjmBq3AUou0qc//QqRadSnyFU9zVEeq0Ireu83exytjEvJ
         L3Z7S86ZDMP8c+Zg5y/8JO8NosFRiTWFJ3R/hbiO5keFHEjCw/zOD9ryUl5M+fovN7
         tQoRrMKqbAKvA==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-40ff67467c9so9722881cf.2
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:36:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691667402; x=1692272202;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GbiiR39UCc4MIS05Cs+xA5vgxUMTWHglh2uulV8ScwE=;
        b=A6X/U2SEk04XBQial+fFSaUV9gij0aXKKLPtwshMImce02NM54YCC6DNMA8MEpIPfd
         0jHVRpk4DUcJCkfsSpWCK5e/J17pb1qMNS1lhQ/zV2k18DHtLLgm3Ocndot1AC9jDlv0
         oGtlpZFM3mbaxIQscB4mLrQOU3lTHAvrhygoLcfat8kFI1wfMWWdckAMa6KQ94LRf50x
         q1Kn0XiIt3bzUsy+hy0A0MmyuW2Oz5+X8gM3D8pnsK7u5m1bZXFL/Rd22xSYt4zT/nur
         F7KO4cuLHnOY2l/PxIb9yPdczyafrOMuJbLftaCU0zKxhdbXxxuz+XV2JfUhvFzsdPV2
         94fg==
X-Gm-Message-State: AOJu0YwemyHbnPSe9d04swSqOdl8/udtez3zhFp+SliOMbha9lrXL9PK
        HioaONZOUNnndsySqLiybHGOYHj8/aw46eqRjlSAKtLEcsd0Uy2fCGSD5EXEsy847ylEb0gKx39
        DPs+X1wtGeoTrA8kzn9tTJXMvuq9YloX+TZJOsbMpUVoCvSvqe88ZeF4=
X-Received: by 2002:a05:622a:1006:b0:407:efdc:7e00 with SMTP id d6-20020a05622a100600b00407efdc7e00mr3070343qte.13.1691667402148;
        Thu, 10 Aug 2023 04:36:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGf9XiASD6iBgaWOFSh+9FqFKpaKS6+j0drjrGbYeTYSluv6VVQ44qjsbNdILTBsQv9DZuoA/egUsHGzxgkSp4=
X-Received: by 2002:a05:622a:1006:b0:407:efdc:7e00 with SMTP id
 d6-20020a05622a100600b00407efdc7e00mr3070320qte.13.1691667401891; Thu, 10 Aug
 2023 04:36:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230718034937.92999-1-hal.feng@starfivetech.com> <20230718034937.92999-4-hal.feng@starfivetech.com>
In-Reply-To: <20230718034937.92999-4-hal.feng@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 10 Aug 2023 13:36:26 +0200
Message-ID: <CAJM55Z_EdSRxriT=NkrCzvUi0phnPzTs=dMHRgOSHULOMWuvnA@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] MAINTAINERS: Add Hal as a maintainer of SFCTEMP
 HWMON DRIVER
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 18 Jul 2023 at 05:49, Hal Feng <hal.feng@starfivetech.com> wrote:
> As he is the submitter of this driver, add his mail so he can
> maintain the driver and easily reply in the mailing list.
>

Acked-by: Emil Renner Berthing <kernel@esmil.dk>

> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index aee340630eca..5056079ade77 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19256,6 +19256,7 @@ F:      drivers/net/ethernet/sfc/
>
>  SFCTEMP HWMON DRIVER
>  M:     Emil Renner Berthing <kernel@esmil.dk>
> +M:     Hal Feng <hal.feng@starfivetech.com>
>  L:     linux-hwmon@vger.kernel.org
>  S:     Maintained
>  F:     Documentation/devicetree/bindings/hwmon/starfive,jh71x0-temp.yaml
> --
> 2.38.1
>
