Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9302C704725
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 09:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230372AbjEPH4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 03:56:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbjEPH4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 03:56:32 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 954095266
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684223762; x=1715759762;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TW13QVg9Sp/HIUC8TwF1GSLG5lAizfER8gEEXti663g=;
  b=OXJrpAfk3QKUepzNfrrDvI2GfAdiG1IMT0+PIfIHHN7FNhjFKLtmpOqD
   werP9xq7anzJk8sFyv22KKV3D8Vc17R0EavhtH/uXzAHbqH7mYiftpZSD
   TzM2N13qpMDS+qABuLFLx+Nu5kHX/Erlkk0+iKeIRbTEruYNzpxgAMnBw
   Z7S78prq+7z68Q1ekHM2m7oOGMByi4gsNRXOESQGK3sf/OBOSt/v6O/D6
   D5BHHrF3i+xVdOerrhUWss9Y3FLYuFA7liblPi5757Cv7JpdXwME2cJXd
   YHHfHuX7e06fWGxt5RRTtkrY1LAPziakP4zVYvPdQdcEUK3XBBGUEuf4X
   w==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30926425"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 May 2023 09:55:38 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 May 2023 09:55:38 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 May 2023 09:55:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684223738; x=1715759738;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TW13QVg9Sp/HIUC8TwF1GSLG5lAizfER8gEEXti663g=;
  b=joz4haEMU9q462SryImDlul4PBPyt2sNwLfQDY1Ylaz8Eej3NTcX0vTr
   hjmPrKM5rh8Eb3ILSgnIkwoYm2XSs8DQ12pRGk1LCwXA4oMl29uvKL52Q
   7PBOx1d/EGvz09OJEhLT9TKmK7QrqkEDI/ToFA5PqdTuaCndTJoSEHYfl
   Si5e71SYFql3pr2DmmxONqbXRHGnQQomrmoXByYC0iHOJlzvcDZJA9f4G
   59oYDfP5nJHAVMBcxTF0n3FzN371cJxwsmjHIerIfo1viA+cHJZru3zqJ
   mc86c/2JPHuo6GaDIf9/Eve0DC2FY/w3EQclX8HxaL2j/JPZ52SNCPeBz
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30926424"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 May 2023 09:55:37 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C1D6B280056;
        Tue, 16 May 2023 09:55:37 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: move noc node to correct position
Date:   Tue, 16 May 2023 09:55:37 +0200
Message-ID: <21957596.EfDdHjke4D@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <abadd2af-dbdc-4f0e-f128-4a361abb4fb4@linaro.org>
References: <20230516055006.320488-1-alexander.stein@ew.tq-group.com> <6ad832ff-9ada-ef06-7d32-50da6148b92d@denx.de> <abadd2af-dbdc-4f0e-f128-4a361abb4fb4@linaro.org>
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

Am Dienstag, 16. Mai 2023, 09:32:31 CEST schrieb Krzysztof Kozlowski:
> On 16/05/2023 09:13, Marek Vasut wrote:
> > On 5/16/23 07:50, Alexander Stein wrote:
> >> The base address of NOC is bigger than aips5, but smaller than aips4.
> >>=20
> >> Fixes: b86c3afabb4f ("arm64: dts: imx8mp: Add SAI, SDMA, AudioMIX")
> >=20
> > I don't mind this Fixes tag, since this will likely land in the same
> > upcoming release anyway.
> >=20
> > But in general, is this really Fixes: material ?
>=20
> Order of nodes in DTS is not a bug...
>=20
> Best regards,
> Krzysztof

Okay, fine for me. Want me to resend?

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


