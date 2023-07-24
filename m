Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB62775FC51
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 18:38:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231450AbjGXQiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 12:38:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbjGXQix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 12:38:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F46F18E
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 09:38:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F156E61280
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 16:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 049D6C433C8;
        Mon, 24 Jul 2023 16:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690216731;
        bh=/ktL8/TQdqCOkb5xOJJqDvQE2ywMgNOFKAAQw+JlLMI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OGOabOg1sSgfG+ElWPDniJWDWAjUylzyIgcABeOfI1JCjjyaFjTnHhQc2r0QuIyQ+
         CCsx+c4IYS6XrZDlSsPWOaW2AdLhXV13CgvwO7UtEfD1kLxoLYe2nzgaZBN2Ck+TZP
         oXgFT8bWn7VtBkDWVdajbJj7MFTZWChQ6k0mV065yvxuIIKqlztkmVM5dDEyL3XTyH
         cYDVPwUHpKo5A70S42kd7T++GgN4jYEGfJN/HB2LL59lQvgk4Nv5uqSJaQMul4zlxN
         VNcjBpoxudBepmIpnT3cyStM+nvrqfqG/orvXZ4T8oQn2JCNaNXzk3NPjJTmi0Rn+G
         vHX86AR1TQRgg==
Date:   Mon, 24 Jul 2023 17:38:46 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Mayuresh Chitale <mchitale@ventanamicro.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/7] Risc-V Kvm Smstateen
Message-ID: <20230724-scrap-pranker-7fd120078136@spud>
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="f9M1yRqfR8BAI0wI"
Content-Disposition: inline
In-Reply-To: <20230724142033.306538-1-mchitale@ventanamicro.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--f9M1yRqfR8BAI0wI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey Mayuresh,

On Mon, Jul 24, 2023 at 07:50:26PM +0530, Mayuresh Chitale wrote:
> This series adds support to detect the Smstateen extension for both, the
> host and the guest vcpu. It also adds senvcfg and sstateen0 to the ONE_REG
> interface and the vcpu context save/restore.

There's not really an explanation in this series of where Smstateen is
needed, or why it is only implemented for KVM. The spec mentions that this
also applies to separate user threads, as well as to guests running in a
hypervisor. As your first patch will lead to smstateen being set in
/proc/cpuinfo, it could reasonably be assumed that the kernel itself
supports the extension. Why does only KVM, and not the kernel, require
support for smstateen?

Thanks,
Conor.

--f9M1yRqfR8BAI0wI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZL6pFgAKCRB4tDGHoIJi
0hVJAQDO9JRwLrIL+KX+fExXQBAHsq++AcAiPrkJAZld2t/qdwD/X+yjsDVZpgyg
QBN7ujIOJXVP0LwUprcQ59bCpFkwhwE=
=SQ9y
-----END PGP SIGNATURE-----

--f9M1yRqfR8BAI0wI--
