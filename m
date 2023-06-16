Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7441C733217
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 15:22:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345566AbjFPNWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 09:22:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345619AbjFPNWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 09:22:35 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 308303592
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 06:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686921752; x=1718457752;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sbeuSvNzTeuAvC0tm1PTQHyfToyF+kegdC+YV/li46I=;
  b=a7gZ3LxYzq/zG1sn8cs/nZEQ08gm+IRjqcAusQ5exOvk2qYPCro01dux
   YqRiwzQkuOMZDamh2w7iEm3XhpTp6mLhhWkXQcJ5R3Yc2wj0iQWsjR/Zp
   DySmad2cLyvnP6QMB31v/TCU5lnoVPz/vc0ljxkAz+0gcyVfosBUZhP8u
   83HvOgAUgbFfAMaAK5xcao56c0aKSC2Gbx2PDz9qPZlg7g8iAr6R3otqp
   3vr3piLQT3q4Gjs0vsOAnuKM0ZCL0M108bPG1FzwqOZiNXKqWkEvVRY9I
   uKxB46jeHUt9F8gnKKbDY8934/WByelfmI31tIiSwP5U0/og2Yh8pEECF
   A==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31466833"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 15:22:30 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0D8DE280082;
        Fri, 16 Jun 2023 15:22:30 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT schema format
Date:   Fri, 16 Jun 2023 15:22:31 +0200
Message-ID: <3660939.Mh6RI2rZIc@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <993767ab-d7eb-440a-9f13-026821fd1f61@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com> <24617723.6Emhk5qWAg@steina-w> <993767ab-d7eb-440a-9f13-026821fd1f61@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Freitag, 16. Juni 2023, 14:30:37 CEST schrieb Mark Brown:
> On Fri, Jun 16, 2023 at 02:24:17PM +0200, Alexander Stein wrote:
> > Am Freitag, 16. Juni 2023, 14:21:29 CEST schrieb Mark Brown:
> > > That'll be the issue, yes.
> >=20
> > Ok, there is nothing I can do, right?
>=20
> You could check for dependencies and tell me about them.  For example in
> this case it turns out the issue is that there's a fix to add supply
> names that went in which is only on my fixes branch.

You are referring to [1]? That's part of next-branch since next-20230523. S=
o=20
this patch should apply on top without conflicts., e.g. today's https://
git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next.

Best regards,
Alexander

[1] https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commi=
t/?
id=3D3a2e3fa795052b42da013931bc2e451bcecf4f0c
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


