Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69ED86D21A2
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 15:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230493AbjCaNrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 09:47:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230162AbjCaNrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 09:47:07 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE472468F
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 06:47:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7B2FBB82FC9
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:47:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A206C433A0
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680270423;
        bh=uTwS6eyULezYP4QlorhcWySblThe6KTdRA8w+8lqVxE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=lg/80dpUovbLuIxivzALPTs8y6V14iR06SNCSMJ5tp1tDhiYUkULoQYXBNr4UNFXe
         18mNscaeBx1JTZAH6cDmaGu0BcCiBouCd63Nf4MTrB+r+OGK7z8DWxo9vo2Yb7pFv3
         fIt8OsR56wFM4C4dCIr33LbF4T+ncL8udu/s40Rf89W0Hm9DItwL0VqwM4py/4A78D
         198uyjIX7mCTcu9gOgDiBKoaHvflEkEppxpw5VWOByw8sUBL5ocbi9UJMSpSbFPft7
         vivM7hGZq49wGKUQQR2Whtkd0nR+G8tr3mXEzMpTvmhEpT5pVuEqFuwNorn1K8NSpz
         VGcPG5NPYyVEA==
Received: by mail-yb1-f180.google.com with SMTP id p203so27393907ybb.13
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 06:47:03 -0700 (PDT)
X-Gm-Message-State: AAQBX9f914tlzJBGm+6Fw+WtbRCmNO9b11XCbwCE/EBpcc7gyIqzEqad
        gij3fy/KKAajvsIUVBlbfmtTnr5dwgxF6V1AuQ==
X-Google-Smtp-Source: AKy350aHyS+cyklG8Xj5bLYc+RBySboGCWVI/2Bx5nyfEdy6tfwTzBHvDy8/f+21TSZUBXW7/ZAek4DbK9FPv/swb4U=
X-Received: by 2002:a05:6902:1586:b0:b33:531b:3dd4 with SMTP id
 k6-20020a056902158600b00b33531b3dd4mr14251575ybu.1.1680270422070; Fri, 31 Mar
 2023 06:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230330165128.3237939-1-james.morse@arm.com> <20230330165128.3237939-2-james.morse@arm.com>
In-Reply-To: <20230330165128.3237939-2-james.morse@arm.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 31 Mar 2023 08:46:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+kejKAY6+kVQ1xL9z0vR=dxneTHKvufW2MUSy3mzgj-A@mail.gmail.com>
Message-ID: <CAL_Jsq+kejKAY6+kVQ1xL9z0vR=dxneTHKvufW2MUSy3mzgj-A@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
To:     James Morse <james.morse@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-5.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 30, 2023 at 11:52=E2=80=AFAM James Morse <james.morse@arm.com> =
wrote:
>
> The Errata Management SMCCC interface allows firmware to advertise whethe=
r
> the OS is affected by an erratum, or if a higher exception level has
> mitigated the issue. This allows properties of the device that are not
> discoverable by the OS to be described. e.g. some errata depend on the
> behaviour of the interconnect, which is not visible to the OS.
>
> Deployed devices may find it significantly harder to update EL3
> firmware than the device tree. Erratum workarounds typically have to
> fail safe, and assume the platform is affected putting correctness
> above performance.

Updating the DT is still harder than updating the kernel. A well
designed binding allows for errata fixes without DT changes. That
generally means specific compatibles up front rather than adding
properties to turn things on/off.

Do we really want to encourage/endorse/support non-updatable firmware?
We've rejected plenty of things with 'fix your firmware'.

> Instead of adding a device-tree entry for any CPU errata that is
> relevant (or not) to the platform, allow the device-tree to describe
> firmware's responses for the SMCCC interface. This could be used as
> the data source for the firmware interface, or be parsed by the OS if
> the firmware interface is missing.

What's to prevent vendors from only using the DT mechanism and never
supporting the SMCCC interface? I'm sure some will love to not have to
make a firmware update when they can just fix it in DT.

The downside to this extendable binding compared to simple properties
is parsing a flat tree is slow and more complicated. So it may be
difficult to support if you need this early in boot.

> Most errata can be detected from CPU id registers. These mechanisms
> are only needed for the rare cases that external knowledge is needed.

And also have significant performance impact. In the end, how many
platforms are there that can't fix these in firmware and need a
mainline/distro kernel optimized to avoid the work-around. I suspect
the number is small enough it could be a list in the kernel.

Rob
