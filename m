Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16FB766115F
	for <lists+devicetree@lfdr.de>; Sat,  7 Jan 2023 20:37:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230350AbjAGThd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Jan 2023 14:37:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbjAGThc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Jan 2023 14:37:32 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D7B40C28
        for <devicetree@vger.kernel.org>; Sat,  7 Jan 2023 11:37:31 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5463960BA5
        for <devicetree@vger.kernel.org>; Sat,  7 Jan 2023 19:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20EB6C433D2;
        Sat,  7 Jan 2023 19:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673120250;
        bh=fVL00j/8O9tGd6A6KSF3mGxZ0GZgukS1psA3N+BQmSU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=HdZIjsunrrX2YsmSmKN2PzwzYp31NXEV71E74pIpapd+sfdRVkzCIujqdrg0k9iNP
         8YsTeRM5K4RDblkRTP3XiMO7CGP2ltPzYDnt3u44oyNH3waIb+yakeo9bh8Iu9rGPe
         +oyLYHZuH0QWyn8KjdtjZ6ARx1CZ1oOz1z/7rwPgXP5qdQOvyU54q3z9tlCyP1hBLT
         tLcKaIMKnJHr32pRyUVptUeep1tHHW51dOM0BVls2b+1lsLCmpnJXW2LQMvyZoFC5A
         OtmSUp/grmbgtqrkxh5Fru0Aoj2D5mSS5F2ir+2ArS7BoNjH2TZuJgG5+aB5JLqseg
         /S/QWI/wOfgqw==
From:   Conor Dooley <conor@kernel.org>
To:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Ben Dooks <ben.dooks@codethink.co.uk>
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        robh+dt@kernel.org, palmer@dabbelt.com,
        krzysztof.kozlowski+dt@linaro.org, zong.li@sifive.com,
        linux-kernel@lists.codethink.co.uk,
        sudip.mukherjee@codethink.co.uk,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [PATCH] riscv: dts: fu740: fix size of pcie 32bit memory
Date:   Sat,  7 Jan 2023 19:37:07 +0000
Message-Id: <167311996687.855922.17515622188982373442.b4-ty@microchip.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
References: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=969; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=dxSZXyG8JNR1EB7MnPTNY7y7g+e2wmkJ7/30kO6IgCY=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDMk7T95brxqyfn6z3mHjny2Ob5Pk1A2m1z1b1tBQXhKndbsp Ts+to5SFQYyDQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABPZ9oOR4cKyx5P5njovfKj92PGpiE rK1vUzL/7c4LnvRtz+t/Lfig4z/K9du7J/x5KGp7WPBEOvmB17sNYl4F/1Ib61BvJ7fMPnlLEDAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Fri, 06 Jan 2023 13:44:56 +0000, Ben Dooks wrote:
> The 32-bit memory resource is needed for non-prefetchable memory
> allocations on the PCIe bus, however with some cards (such as the
> SM768) the system fails to allocate memory from this.
> 
> Checking the allocation against the datasheet, it looks like there
> has been a mis-calcualation of the resource for the first memory
> region (0x0060090000..0x0070ffffff) which in the data-sheet for
> the fu740 (v1p2) is from 0x0060000000..0x007fffffff. Changing
> this to allocate from 0x0060090000..0x007fffffff fixes the probing
> issues.
> 
> [...]

Applied to riscv-dt-fixes, thanks!

[1/1] riscv: dts: fu740: fix size of pcie 32bit memory
	https://git.kernel.org/conor/c/43d5f5d63699724d47f0d9e0eae516a260d232b4

I checked the numbers and they look correct per the v1p2 doc.
I added a T-b from IRC for Ron, added the cc: stable and fixed the
fixes tag while I was at it.

Thanks,
Conor.
