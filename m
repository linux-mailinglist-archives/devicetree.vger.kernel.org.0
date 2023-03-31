Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4B9B6D20FC
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 14:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232614AbjCaM5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 08:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232604AbjCaM5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 08:57:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DB08114
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 05:57:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D6CBD628EB
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40CA8C433A0
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680267435;
        bh=7TfzJ4TzGMrffdvScMVcABspizk+tHAR0io8wEWYcJo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=dqV2TJ5/nnt4SpmJ8oiba9E3pLYyHcNRkLBJdT8xkf78ryWkb68cFr1XGz1zGQixx
         WZ0ky0T7rXsDXhXbdaXYSJzELSu6bfGuo43ZXuEZiOrN/CUJ41IU2j/PEeNgf/p+XZ
         aXGsQUE1eXEVlkgN9d7Xp3im3hPC0Il8mdATAQ33/Ap85jmugmDFfqaIEHwKDKB21g
         B0FQdez88+ik2tS4rFmut+Uo3u3HIegzqVwS1sFRXo+px2NDkSJScULGh/My0+NKQh
         bfTxgIHLe5rgeFyEoyf6QDvEs43BuVFBw9iNwn/gKlGa5eQObQVoZNcdmF1R+bSYGf
         REuNIWNx7Sngw==
Received: by mail-yb1-f175.google.com with SMTP id m16so6920637ybk.0
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 05:57:15 -0700 (PDT)
X-Gm-Message-State: AAQBX9c4gcSJ+FDuap7R05BE6aC0GeAJmKndQDiJ9EMhq1iyDXoXV1AQ
        Csjyz2pXYKn/jAuQ9Kr0zzD9GCE/umssOjvCIw==
X-Google-Smtp-Source: AKy350aq8pXG/KlvmlgyaOiX8f3j+5U+46r7pbCKgxcSE1QhTKouMT0PiKjqLjMbj4kq4MixcmlM5+j7zQXeqMxpy8Y=
X-Received: by 2002:a05:6902:1586:b0:b77:81f:42dc with SMTP id
 k6-20020a056902158600b00b77081f42dcmr17315172ybu.1.1680267434299; Fri, 31 Mar
 2023 05:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230330165128.3237939-1-james.morse@arm.com>
In-Reply-To: <20230330165128.3237939-1-james.morse@arm.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 31 Mar 2023 07:57:03 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+_1xJsWwvCCsjB74nUyO8y1N_yc1LOF5egpuwWs1dZzg@mail.gmail.com>
Message-ID: <CAL_Jsq+_1xJsWwvCCsjB74nUyO8y1N_yc1LOF5egpuwWs1dZzg@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: errata: Disable FWB on parts with non-ARM interconnects
To:     James Morse <james.morse@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
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

On Thu, Mar 30, 2023 at 11:51=E2=80=AFAM James Morse <james.morse@arm.com> =
wrote:
>
> Hello!
>
> Changes since the RFC?:
>  * Added DT support, in a way that means we don't end up with per-erratum
>    strings, or bloat in the calling code to check for those strings.
>  * Added a commandline argument. (boo)
>  * Changes to support errata affecting features on big-little systems pro=
perly.
>
> ~
>
> When stage1 translation is disabled, the SCTRL_E1.I bit controls the
> attributes used for instruction fetch, one of the options results in a
> non-cacheable access. A whole host of CPUs missed the FWB override
> in this case, meaning a KVM guest could fetch stale/junk data instead of
> instructions.
>
> The workaround is to disable FWB, and do the required cache maintenance
> instead.

What's FWB? I don't see it defined anywhere in the series.

Rob
