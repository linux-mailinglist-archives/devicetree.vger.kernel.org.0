Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6153673311C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:24:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344648AbjFPMYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:24:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344696AbjFPMYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:24:19 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5A3030E1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686918258; x=1718454258;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TntxgH50+AsaLwkL2M6URwHtw/vlX2hwx9IGEkWwFKw=;
  b=XZs1ZHDsnd3NJ478yP4vI4r/h8IpuqLfQwzRxNSNnRnmOhMY9xDV9eoS
   iCz5+8SSgNbF+JPS5OOv9H1351uBYPrAFuezpwE2CXezJqteqRHNvN/tB
   8PoZ3my+ySekV9VedhbS6kZlSctcuqQaGGvppbK7uPlQAoko2oThrnBhQ
   ivP5oOrxZsufYibD0VQFuF9ndLT81sEtzm1cl5DqPJscoPmQJle42tgAT
   E0ggdynG3wZCOLxjGBYsHmA/rv1kskye1w/lJ3VHEuQepeWPwWFhymtxO
   +MifdwkPkE5WxWsQkTbDIawK3GnewZhJPUOzmQwhoUgyTAGmQO7fRRbO6
   g==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31465682"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 14:24:15 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B570D280082;
        Fri, 16 Jun 2023 14:24:15 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT schema format
Date:   Fri, 16 Jun 2023 14:24:17 +0200
Message-ID: <24617723.6Emhk5qWAg@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <3ddb3d09-2a9b-4a25-8108-a79ea83a9dd5@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com> <4930994.QJadu78ljV@steina-w> <3ddb3d09-2a9b-4a25-8108-a79ea83a9dd5@sirena.org.uk>
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

Hi Mark,

Am Freitag, 16. Juni 2023, 14:21:29 CEST schrieb Mark Brown:
> On Fri, Jun 16, 2023 at 02:17:40PM +0200, Alexander Stein wrote:
> > Am Freitag, 16. Juni 2023, 13:54:49 CEST schrieb Mark Brown:
> > > This doesn't apply against current code, please check and resend.  Th=
is
> > > should be an incremental patch perhaps?
> >=20
> > Is there any change to original .txt file I am not aware of? The to be
> > created .yaml file is new, so there is no increment.
>=20
> That'll be the issue, yes.

Ok, there is nothing I can do, right?

> > To which base/branch/tag should I rebase this?
>=20
> As ever
>=20
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git
> for-next

As mentioned in the changelog, that's already the case.

Thanks and best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


