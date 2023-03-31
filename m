Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4E506D210D
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 15:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232651AbjCaNDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 09:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232376AbjCaNDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 09:03:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE95AA27B
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 06:03:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8C9CA62831
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:03:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAFF6C4339B
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680267795;
        bh=+z7xJ6lqsdzeQz7cVN7i76n16tKg8olubmFTy0lZ21Q=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=bjVEi6BybGxxuKXVuJ3WGcJ86CcR4VZ0y1BGMBAUvWwEofeVi2znPyN60M3WAlO5H
         4h3lsVI4yh6FlwSul0pE0RgwiUHThQ0vkReTJ6gDt2ZKPGnYY3h39VMQybH+q/zZA5
         8sJV1ZlAWXHzxIhr4LYTWISdO1rpnFbt1tKaZgjgRya0mk4ivcgX5x4RCPaS4Wt4IF
         dNt3lgE0NEsCf5jkiaSjQHdVZrwbfQkMtsPnt+k1J6DLIivNlOQQ8vFdmTts+Hlhtt
         K5gAVYj3wZeCItV8hyTjZMCMXtiwUKFgUuYTXModL/BSBSKt5McpD1lnukFwdhp5no
         irF9Oo+a1/TQA==
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5463fa0c2bfso82932497b3.1
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 06:03:14 -0700 (PDT)
X-Gm-Message-State: AAQBX9e/AsrRs+vl8EczDF5Xluqu9v4tDOCwtq3p1VTvms261vX+P2pN
        6nnbBk9n7vod0TD7izXtQt11At99cTskCzZHEw==
X-Google-Smtp-Source: AKy350YhD2R1ryy6ss7G7TUXbaHBCVlfMFLewTTTNfFDtpUNQGYKxNXImGVqcXjp9ArlF4ds8yh13MCjOGl+9fjHlaI=
X-Received: by 2002:a81:ae4f:0:b0:545:ed8e:f4f6 with SMTP id
 g15-20020a81ae4f000000b00545ed8ef4f6mr9283492ywk.5.1680267793963; Fri, 31 Mar
 2023 06:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230330165128.3237939-1-james.morse@arm.com> <CAL_Jsq+_1xJsWwvCCsjB74nUyO8y1N_yc1LOF5egpuwWs1dZzg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+_1xJsWwvCCsjB74nUyO8y1N_yc1LOF5egpuwWs1dZzg@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 31 Mar 2023 08:03:02 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+mO0VE88Vmbd+YdpOLez5ee4Ef1he40R7=zAZ0wVj4gg@mail.gmail.com>
Message-ID: <CAL_Jsq+mO0VE88Vmbd+YdpOLez5ee4Ef1he40R7=zAZ0wVj4gg@mail.gmail.com>
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

On Fri, Mar 31, 2023 at 7:57=E2=80=AFAM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> On Thu, Mar 30, 2023 at 11:51=E2=80=AFAM James Morse <james.morse@arm.com=
> wrote:
> >
> > Hello!
> >
> > Changes since the RFC?:
> >  * Added DT support, in a way that means we don't end up with per-errat=
um
> >    strings, or bloat in the calling code to check for those strings.
> >  * Added a commandline argument. (boo)
> >  * Changes to support errata affecting features on big-little systems p=
roperly.
> >
> > ~
> >
> > When stage1 translation is disabled, the SCTRL_E1.I bit controls the
> > attributes used for instruction fetch, one of the options results in a
> > non-cacheable access. A whole host of CPUs missed the FWB override
> > in this case, meaning a KVM guest could fetch stale/junk data instead o=
f
> > instructions.
> >
> > The workaround is to disable FWB, and do the required cache maintenance
> > instead.
>
> What's FWB? I don't see it defined anywhere in the series.

Ah, there it is in patch 1. It wasn't in patch 6, so naturally I went
searching in the cover letter.

Rob
