Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5668E7330FA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:17:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241277AbjFPMRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:17:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbjFPMRm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:17:42 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EAD62D7F
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686917860; x=1718453860;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=j/FDQPtAx2vpdEuoefb7LUT3uVAbfYql6lVE1xQQFsw=;
  b=japFXX3XxNRmfh1RVI6pK30+Xs2RtvWVcFVCv2UKz1qm/KxgIGRdMYEo
   9cSEI+ua0ZqsUUOH6X/oTnyER0JeHyYhA9u2JNW+d/nKMfP9ANLBTX2rf
   7lof4NeR8aBlitXuYYjLdKS1FrMluOxK1z6sBszBl4L2cLhPUd/jJKnIH
   36VQeuCoIOh1B6qCVhEe6FrQjggYWV5EV8mU51uIJhqQ+TrIqydBQXuQv
   0tVlcbrdE8QjOVvoibHyOfcway0LiAf/IFe+xzEctNnAsMfdODYhyd+oA
   z4wvBM4rP35CWperfmZWHDXjkrxHLPoPhv/tuKiX4E9R6qz03ueIiOqFu
   A==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31465543"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 14:17:38 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9C14F280082;
        Fri, 16 Jun 2023 14:17:38 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT schema format
Date:   Fri, 16 Jun 2023 14:17:40 +0200
Message-ID: <4930994.QJadu78ljV@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <5a562bbc-9bba-4829-8998-af12041a434c@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com> <5a562bbc-9bba-4829-8998-af12041a434c@sirena.org.uk>
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

Am Freitag, 16. Juni 2023, 13:54:49 CEST schrieb Mark Brown:
> On Fri, Jun 16, 2023 at 10:35:49AM +0200, Alexander Stein wrote:
> > Convert the binding to DT schema format.
> > Since commit 514b044cba667 ("ASoC: tlv320aic32x4: Model PLL in CCF")
> > clocks & clock-names =3D "mclk" is mandatory, it has been added to requ=
ired
> > properties as well. '#sound-dai-cells' is added for reference from
> > simple-audio-card.
>=20
> This doesn't apply against current code, please check and resend.  This
> should be an incremental patch perhaps?

Is there any change to original .txt file I am not aware of? The to be crea=
ted=20
=2Eyaml file is new, so there is no increment.
To which base/branch/tag should I rebase this?

Thanks and best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


