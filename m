Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81F456E7EFD
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 17:59:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233732AbjDSP7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 11:59:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233665AbjDSP7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 11:59:06 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83BBB1980
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 08:59:04 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-51b6d137403so1424384a12.0
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 08:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1681919944; x=1684511944;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AVtjPMREOOUQQbJrVJ+PVQx4OKxpFf/ZUEP61+e+1gQ=;
        b=TKkz2pAcpadNcPvhw4PITB+bjfPt2uktnV/d09jVZFZXPQoUZ0dW9PkgoZYTDa4jfR
         0bfQD//VGwouEbh7uyjk7zIhpxllA61ZNhlzoUjkUazXvQhKHmliDFNyiDYbC+PqbKlN
         7utE1TWm+mcNyMUQzGzuwvnOIzXRZlzb8m0fJRuOQL9o6Azoq4vPCABnsIQmzO3Gr3gL
         bHQdFE3koaFgZTQlsvoW9lSDeQbi5kuTbVrY8O0vqz3AOa1SyM0+x09hoPbxs0+eQU1X
         ZodxI0az4xTJFtDi8h14XFmopxDP91/D/dmWBIFNKbpHXzg4Kjgatlysc2epigCXwbqg
         PmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681919944; x=1684511944;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVtjPMREOOUQQbJrVJ+PVQx4OKxpFf/ZUEP61+e+1gQ=;
        b=SCGOmlCr6rRGALqSFMHOf5WllU2oUXpGdtY0NvhBpWFOZr9rmHBDHbl94YVP4Qzv7D
         pJAHcEYNcxMegnmHnkHLT/Jlo/vWPFy8tjtR3mIz6RV6ocAmnxe4E0C3k7YrxVUn6H3j
         pNLGVKBExXuX1xdLrOnJiv35A/mTNmC+jM17vL32f4fL9qmY85gDAtsMU68UyCh4FKqo
         3tPCOhsWreMD2jPakuj3ZbX4GXs9eduv/qOueukLp/Nv8Ywcrcps5aiOTJwuczv6Ni/Y
         XyWV2HliKVobq8sJwAfsx/chHNA63FUhdI/WcKiLA8VSYFYVvLgsE4DNCCOWAP3nt0Zq
         KoTQ==
X-Gm-Message-State: AAQBX9dcvvJ+I89vB8exTgixZXcQmCjWqJcSsASRDw711buYJVKUsAJY
        /Utoqskj31M9EtzzB+ZeIN57qQ==
X-Google-Smtp-Source: AKy350Z2QE182sNm3aUj8RGCOEigVzYtoSb+0d9wOzIYohC9AAOYJzzfsi7c8UvRD0MGHAA7O2OL5w==
X-Received: by 2002:a17:90a:930b:b0:24b:2e6a:24ed with SMTP id p11-20020a17090a930b00b0024b2e6a24edmr1085199pjo.37.1681919943842;
        Wed, 19 Apr 2023 08:59:03 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id l9-20020a17090a49c900b002353082958csm1570643pjm.10.2023.04.19.08.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 08:59:03 -0700 (PDT)
Date:   Wed, 19 Apr 2023 08:59:03 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Apr 2023 08:57:41 PDT (-0700)
Subject:     Re: [PATCH v8 0/7] Add non-coherent DMA support for AX45MP
In-Reply-To: <ZDzs3eYIKPFcv0HQ@infradead.org>
CC:     Conor Dooley <conor@kernel.org>, prabhakar.csengg@gmail.com,
        Arnd Bergmann <arnd@arndb.de>,
        Conor Dooley <conor.dooley@microchip.com>,
        geert+renesas@glider.be, heiko@sntech.de, guoren@kernel.org,
        ajones@ventanamicro.com, Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, samuel@sholland.org,
        linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        biju.das.jz@bp.renesas.com, prabhakar.mahadev-lad.rj@bp.renesas.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-e296c86c-71b1-46f8-88c6-16eda3590a3d@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 16 Apr 2023 23:53:17 PDT (-0700), Christoph Hellwig wrote:
> On Wed, Apr 12, 2023 at 09:32:30PM +0100, Conor Dooley wrote:
>> On Wed, Apr 12, 2023 at 12:08:53PM +0100, Prabhakar wrote:
>>
>> > Note,
>> > - This series requires testing on Cores with zicbom and T-Head SoCs
>>
>> As I said last time, I dunno what actual Zicbom stuff exists, other than
>> perhaps the Ventana lads having something. I did some tyre kicking on my
>> D1 and it was fine, although nothing has actually changed materially for
>> either of them with this series in v8..
>
> And as saying before, there is absolutely no reason to add non-standard
> non-coherent DMA support and let this cancer creep.  If you want Linux
> support implement Zicbom, be that in hardware or the SBI.

IMO we should just take the support in Linux: trying to hide stuff behind the
SBI leads to more more headaches than it's worth, we end up with a bunch of
broken firmware to try and work around.  We've already got a mess here because
of the D1 support, we might as well just live with it.

In practice there's just going to be a ton of mess in arch/riscv, as the ISA
has been missing many core features for many years and hardware vendors are
allowed to do whatever they want.  That's obviously a huge headache, but I
think there's nothing we can really do about it.
